package com.kargo.servlet;

import com.kargo.util.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/db-test")
public class DatabaseTestServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        try {
            // Veritabanı bağlantısını test et
            Connection conn = DatabaseUtil.getConnection();
            
            if (conn != null && !conn.isClosed()) {
                response.getWriter().println("<h2>✅ Veritabanı Bağlantısı Başarılı!</h2>");
                
                // Tabloları kontrol et
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SHOW TABLES");
                
                response.getWriter().println("<h3>Mevcut Tablolar:</h3>");
                response.getWriter().println("<ul>");
                while (rs.next()) {
                    String tableName = rs.getString(1);
                    response.getWriter().println("<li>" + tableName + "</li>");
                }
                response.getWriter().println("</ul>");
                
                // Kullanıcı sayısını kontrol et
                rs = stmt.executeQuery("SELECT COUNT(*) as user_count FROM Users");
                if (rs.next()) {
                    int userCount = rs.getInt("user_count");
                    response.getWriter().println("<h3>Kullanıcı Sayısı: " + userCount + "</h3>");
                }
                
                // Rol sayısını kontrol et
                rs = stmt.executeQuery("SELECT COUNT(*) as role_count FROM Roles");
                if (rs.next()) {
                    int roleCount = rs.getInt("role_count");
                    response.getWriter().println("<h3>Rol Sayısı: " + roleCount + "</h3>");
                }
                
                rs.close();
                stmt.close();
                conn.close();
                
            } else {
                response.getWriter().println("<h2>❌ Veritabanı Bağlantısı Başarısız!</h2>");
            }
            
        } catch (Exception e) {
            response.getWriter().println("<h2>❌ Veritabanı Hatası!</h2>");
            response.getWriter().println("<p>Hata: " + e.getMessage() + "</p>");
            e.printStackTrace();
        }
    }
}
