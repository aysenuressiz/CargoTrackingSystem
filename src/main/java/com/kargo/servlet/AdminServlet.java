package com.kargo.servlet;

import com.kargo.dao.UserDAO;
import com.kargo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/*")
public class AdminServlet extends HttpServlet {
    private UserDAO userDAO = new UserDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null || !user.getRoleName().equals("Admin")) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        String pathInfo = request.getPathInfo();
        if (pathInfo == null) {
            pathInfo = "/dashboard";
        }
        
        switch (pathInfo) {
            case "/dashboard":
                showDashboard(request, response);
                break;
            case "/users":
                showUsers(request, response);
                break;
            case "/create-user":
                showCreateUser(request, response);
                break;
            case "/edit-user":
                showEditUser(request, response);
                break;
            default:
                response.sendError(404);
                break;
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null || !user.getRoleName().equals("Admin")) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        String pathInfo = request.getPathInfo();
        
        switch (pathInfo) {
            case "/create-user":
                createUser(request, response);
                break;
            case "/update-user":
                updateUser(request, response);
                break;
            case "/delete-user":
                deleteUser(request, response);
                break;
            default:
                response.sendError(404);
                break;
        }
    }
    
    private void showDashboard(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Dashboard istatistikleri
        List<User> allUsers = userDAO.getAllUsers();
        request.setAttribute("totalUsers", allUsers.size());
        request.setAttribute("totalEmployees", 
            allUsers.stream().mapToInt(u -> 
                u.getRoleName().equals("Genel Müdür") || 
                u.getRoleName().equals("Şube Müdürü") || 
                u.getRoleName().equals("Depo Görevlisi") || 
                u.getRoleName().equals("Bölge Sorumlusu") || 
                u.getRoleName().equals("Kurye") ? 1 : 0).sum());
        request.setAttribute("totalCustomers", 
            allUsers.stream().mapToInt(u -> u.getRoleName().equals("Müşteri") ? 1 : 0).sum());
        request.setAttribute("totalCompanies", 
            allUsers.stream().mapToInt(u -> u.getRoleName().equals("Şirket") ? 1 : 0).sum());
        
        request.getRequestDispatcher("/WEB-INF/views/admin/dashboard.jsp").forward(request, response);
    }
    
    private void showUsers(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        List<User> users = userDAO.getAllUsers();
        request.setAttribute("users", users);
        request.getRequestDispatcher("/WEB-INF/views/admin/users.jsp").forward(request, response);
    }
    
    private void showCreateUser(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/admin/create-user.jsp").forward(request, response);
    }
    
    private void showEditUser(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String userIdStr = request.getParameter("id");
        if (userIdStr != null) {
            try {
                int userId = Integer.parseInt(userIdStr);
                User editUser = userDAO.getUserById(userId);
                if (editUser != null) {
                    request.setAttribute("editUser", editUser);
                    request.getRequestDispatcher("/WEB-INF/views/admin/edit-user.jsp").forward(request, response);
                    return;
                }
            } catch (NumberFormatException e) {
                // Ignore
            }
        }
        response.sendRedirect("users");
    }
    
    private void createUser(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String roleIdStr = request.getParameter("roleId");
        
        if (username == null || email == null || password == null || 
            phone == null || roleIdStr == null ||
            username.trim().isEmpty() || email.trim().isEmpty() || 
            password.trim().isEmpty() || phone.trim().isEmpty()) {
            
            request.setAttribute("error", "Tüm alanlar doldurulmalıdır.");
            request.getRequestDispatcher("/WEB-INF/views/admin/create-user.jsp").forward(request, response);
            return;
        }
        
        try {
            int roleId = Integer.parseInt(roleIdStr);
            
            if (userDAO.isEmailExists(email)) {
                request.setAttribute("error", "Bu e-posta adresi zaten kullanılıyor.");
                request.getRequestDispatcher("/WEB-INF/views/admin/create-user.jsp").forward(request, response);
                return;
            }
            
            if (userDAO.isUsernameExists(username)) {
                request.setAttribute("error", "Bu kullanıcı adı zaten kullanılıyor.");
                request.getRequestDispatcher("/WEB-INF/views/admin/create-user.jsp").forward(request, response);
                return;
            }
            
            User newUser = new User(username, password, email, phone, roleId);
            
            if (userDAO.createUser(newUser)) {
                response.sendRedirect("users?success=Kullanıcı başarıyla oluşturuldu.");
            } else {
                request.setAttribute("error", "Kullanıcı oluşturma işlemi başarısız.");
                request.getRequestDispatcher("/WEB-INF/views/admin/create-user.jsp").forward(request, response);
            }
            
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Geçersiz rol seçimi.");
            request.getRequestDispatcher("/WEB-INF/views/admin/create-user.jsp").forward(request, response);
        }
    }
    
    private void updateUser(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String userIdStr = request.getParameter("userId");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String roleIdStr = request.getParameter("roleId");
        
        try {
            int userId = Integer.parseInt(userIdStr);
            int roleId = Integer.parseInt(roleIdStr);
            
            User updateUser = new User();
            updateUser.setUserId(userId);
            updateUser.setUsername(username);
            updateUser.setEmail(email);
            updateUser.setPhone(phone);
            updateUser.setRoleId(roleId);
            
            if (userDAO.updateUser(updateUser)) {
                response.sendRedirect("users?success=Kullanıcı başarıyla güncellendi.");
            } else {
                response.sendRedirect("users?error=Kullanıcı güncelleme işlemi başarısız.");
            }
            
        } catch (NumberFormatException e) {
            response.sendRedirect("users?error=Geçersiz parametre.");
        }
    }
    
    private void deleteUser(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String userIdStr = request.getParameter("userId");
        
        try {
            int userId = Integer.parseInt(userIdStr);
            
            if (userDAO.deleteUser(userId)) {
                response.sendRedirect("users?success=Kullanıcı başarıyla silindi.");
            } else {
                response.sendRedirect("users?error=Kullanıcı silme işlemi başarısız.");
            }
            
        } catch (NumberFormatException e) {
            response.sendRedirect("users?error=Geçersiz kullanıcı ID.");
        }
    }
}