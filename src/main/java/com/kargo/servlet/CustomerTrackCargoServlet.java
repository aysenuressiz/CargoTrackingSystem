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

@WebServlet("/customer/track-cargo")
public class CustomerTrackCargoServlet extends HttpServlet {
    
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
        
        if (trackingNo != null && !trackingNo.trim().isEmpty()) {
            // Kargo takip işlemi
            Cargo cargo = cargoDAO.getCargoByTrackingNo(trackingNo);
            
            if (cargo != null) {
                // Kargo durum geçmişini al
                List<CargoStatus> statusHistory = cargoDAO.getCargoStatusHistory(cargo.getCargoId());
                
                request.setAttribute("cargo", cargo);
                request.setAttribute("statusHistory", statusHistory);
                request.setAttribute("trackingNo", trackingNo);
            } else {
                request.setAttribute("error", "Bu takip numarasına ait kargo bulunamadı: " + trackingNo);
                request.setAttribute("trackingNo", trackingNo);
            }
        }
        
        request.getRequestDispatcher("/WEB-INF/jsp/customer/track-cargo.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        doGet(request, response);
    }
}
