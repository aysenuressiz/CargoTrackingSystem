package com.kargo.servlet;

import com.kargo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/employee/cargo-update")
public class EmployeeCargoUpdateServlet extends HttpServlet {
    
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
            // Geçici olarak kargo güncelleme sayfasını devre dışı bırakalım
            request.setAttribute("message", "Kargo güncelleme özelliği yakında aktif olacak.");
            response.sendRedirect(request.getContextPath() + "/employee/dashboard");
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Sayfa yüklenirken hata oluştu: " + e.getMessage());
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
            // Geçici olarak kargo güncelleme işlemini devre dışı bırakalım
            request.setAttribute("message", "Kargo güncelleme özelliği yakında aktif olacak.");
            response.sendRedirect(request.getContextPath() + "/employee/dashboard");
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Kargo durumu güncellenirken hata oluştu: " + e.getMessage());
            doGet(request, response);
        }
    }
}
