package com.kargo.servlet;

import com.kargo.dao.CargoDAO;
import com.kargo.model.Cargo;
import com.kargo.model.CargoStatus;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/track")
public class TrackingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CargoDAO cargoDAO = new CargoDAO();
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String trackingNo = request.getParameter("trackingNo");
        
        if (trackingNo == null || trackingNo.trim().isEmpty()) {
            request.setAttribute("error", "Lütfen geçerli bir takip numarası girin.");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
            return;
        }
        
        trackingNo = trackingNo.trim().toUpperCase();
        
        try {
            Cargo cargo = cargoDAO.getCargoByTrackingNo(trackingNo);
            
            if (cargo != null) {
                List<CargoStatus> statusHistory = cargoDAO.getCargoStatusHistory(cargo.getCargoId());
                
                request.setAttribute("cargo", cargo);
                request.setAttribute("statusHistory", statusHistory);
                request.setAttribute("trackingNo", trackingNo);
                request.getRequestDispatcher("/WEB-INF/jsp/track-result.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Bu takip numarasına ait kargo bulunamadı: " + trackingNo);
                request.setAttribute("trackingNo", trackingNo);
                request.getRequestDispatcher("/WEB-INF/jsp/track-result.jsp").forward(request, response);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Takip işlemi sırasında bir hata oluştu. Lütfen tekrar deneyin.");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.sendRedirect("index.jsp");
    }
}