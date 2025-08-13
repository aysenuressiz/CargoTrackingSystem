package com.kargo.servlet;

import com.kargo.dao.UserDAO;
import com.kargo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/test")
public class TestServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        UserDAO userDAO = new UserDAO();
        
        // Admin kullanıcısını test edelim
        User adminUser = userDAO.authenticate("admin_kargo_merkez", "KargoAdmin2024!");
        
        StringBuilder html = new StringBuilder();
        html.append("<html><body>");
        html.append("<h1>Test Sonuçları</h1>");
        
        if (adminUser != null) {
            html.append("<p><strong>Admin Kullanıcısı Bulundu:</strong></p>");
            html.append("<ul>");
            html.append("<li>User ID: " + adminUser.getUserId() + "</li>");
            html.append("<li>Username: " + adminUser.getUsername() + "</li>");
            html.append("<li>Email: " + adminUser.getEmail() + "</li>");
            html.append("<li>Role ID: " + adminUser.getRoleId() + "</li>");
            html.append("<li>Role Name: " + adminUser.getRoleName() + "</li>");
            html.append("</ul>");
            
            // Role name null ise sorun var
            if (adminUser.getRoleName() == null || adminUser.getRoleName().isEmpty()) {
                html.append("<p style='color: red;'><strong>SORUN: Role Name null veya boş!</strong></p>");
            } else {
                html.append("<p style='color: green;'><strong>Role Name doğru: " + adminUser.getRoleName() + "</strong></p>");
            }
        } else {
            html.append("<p style='color: red;'><strong>Admin kullanıcısı bulunamadı!</strong></p>");
        }
        
        html.append("</body></html>");
        
        response.getWriter().write(html.toString());
    }
}
