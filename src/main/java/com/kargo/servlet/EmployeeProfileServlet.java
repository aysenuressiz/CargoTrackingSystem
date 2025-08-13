package com.kargo.servlet;

import com.kargo.dao.EmployeeDAO;
import com.kargo.dao.UserDAO;
import com.kargo.model.Employee;
import com.kargo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/employee/profile")
public class EmployeeProfileServlet extends HttpServlet {
    
    private EmployeeDAO employeeDAO = new EmployeeDAO();
    private UserDAO userDAO = new UserDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        try {
            // Çalışan bilgilerini al
            Employee employee = employeeDAO.getEmployeeByUserId(user.getUserId());
            
            if (employee == null) {
                request.setAttribute("error", "Çalışan bilgileriniz bulunamadı.");
                response.sendRedirect(request.getContextPath() + "/employee/dashboard");
                return;
            }
            
            request.setAttribute("employee", employee);
            request.setAttribute("user", user);
            
            request.getRequestDispatcher("/WEB-INF/jsp/employee/profile.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Profil bilgileri yüklenirken hata oluştu: " + e.getMessage());
            response.sendRedirect(request.getContextPath() + "/employee/dashboard");
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        try {
            // Form verilerini al
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            
            // Kullanıcı bilgilerini güncelle
            user.setPhone(phone);
            user.setEmail(email);
            
            boolean success = userDAO.updateUser(user);
            
            if (success) {
                request.setAttribute("success", "Profil bilgileriniz başarıyla güncellendi.");
                session.setAttribute("user", user);
            } else {
                request.setAttribute("error", "Profil güncellenirken hata oluştu.");
            }
            
            doGet(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Profil güncellenirken hata oluştu: " + e.getMessage());
            doGet(request, response);
        }
    }
}
