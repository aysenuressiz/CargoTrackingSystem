package com.kargo.servlet;

import com.kargo.dao.CargoDAO;
import com.kargo.model.Cargo;
import com.kargo.model.CargoStatus;
import com.kargo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/customer/cargo-detail")
public class CustomerCargoDetailServlet extends HttpServlet {
    
    private CargoDAO cargoDAO = new CargoDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        String trackingNo = request.getParameter("trackingNo");
        
        if (trackingNo == null || trackingNo.trim().isEmpty()) {
            request.setAttribute("error", "Takip numarası gereklidir.");
            response.sendRedirect(request.getContextPath() + "/customer/dashboard");
            return;
        }
        
        try {
            // Kargo bilgilerini al
            Cargo cargo = cargoDAO.getCargoByTrackingNo(trackingNo);
            
            if (cargo == null) {
                request.setAttribute("error", "Bu takip numarasına ait kargo bulunamadı: " + trackingNo);
                response.sendRedirect(request.getContextPath() + "/customer/dashboard");
                return;
            }
            
            // Kullanıcının bu kargoya erişim yetkisi var mı kontrol et
            if (cargo.getSenderUserId() != user.getUserId() && cargo.getReceiverUserId() != user.getUserId()) {
                request.setAttribute("error", "Bu kargoya erişim yetkiniz yok.");
                response.sendRedirect(request.getContextPath() + "/customer/dashboard");
                return;
            }
            
            // Kargo durum geçmişini al
            List<CargoStatus> statusHistory = cargoDAO.getCargoStatusHistory(cargo.getCargoId());
            
            request.setAttribute("cargo", cargo);
            request.setAttribute("statusHistory", statusHistory);
            request.getRequestDispatcher("/WEB-INF/jsp/customer/cargo-detail.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Kargo detayları yüklenirken hata oluştu: " + e.getMessage());
            response.sendRedirect(request.getContextPath() + "/customer/dashboard");
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        doGet(request, response);
    }
}
