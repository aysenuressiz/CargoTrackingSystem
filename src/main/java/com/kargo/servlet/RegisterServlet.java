package com.kargo.servlet;

import com.kargo.dao.UserDAO;
import com.kargo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO = new UserDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String phone = request.getParameter("phone");
        String userType = request.getParameter("userType");
        
        // Validasyon
        if (username == null || email == null || password == null || 
            confirmPassword == null || phone == null || userType == null ||
            username.trim().isEmpty() || email.trim().isEmpty() || 
            password.trim().isEmpty() || phone.trim().isEmpty()) {
            
            request.setAttribute("error", "Tüm alanlar doldurulmalıdır.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        
        // Admin kayıtlarını kontrol et
        if (email.endsWith("@kargo.com.tr")) {
            request.setAttribute("error", "Bu e-posta adresi ile kayıt olamazsınız. Sistem yöneticisi ile iletişime geçin.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        
        if (!password.equals(confirmPassword)) {
            request.setAttribute("error", "Şifreler eşleşmiyor.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        
        if (userDAO.isEmailExists(email)) {
            request.setAttribute("error", "Bu e-posta adresi zaten kullanılıyor.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        
        if (userDAO.isUsernameExists(username)) {
            request.setAttribute("error", "Bu kullanıcı adı zaten kullanılıyor.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        
        // Rol ID'sini belirle (3: Müşteri, 4: Şirket)
        int roleId = userType.equals("company") ? 4 : 3;
        
        User user = new User(username, password, email, phone, roleId);
        
        if (userDAO.createUser(user)) {
            request.setAttribute("success", "Kayıt başarılı! Şimdi giriş yapabilirsiniz.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Kayıt işlemi başarısız. Lütfen tekrar deneyin.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}