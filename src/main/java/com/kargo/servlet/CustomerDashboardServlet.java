package com.kargo.servlet;

import com.kargo.dao.CargoDAO;
import com.kargo.dao.CustomerDAO;
import com.kargo.model.Cargo;
import com.kargo.model.Customer;
import com.kargo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/customer/dashboard")
public class CustomerDashboardServlet extends HttpServlet {
    
    private CargoDAO cargoDAO = new CargoDAO();
    private CustomerDAO customerDAO = new CustomerDAO();
    
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
            // Müşteri bilgilerini al
            Customer customer = customerDAO.getCustomerByUserId(user.getUserId());
            
            // Müşterinin tüm kargolarını al
            List<Cargo> allCargos = cargoDAO.getCargosByUserId(user.getUserId());
            List<Cargo> sentCargos = cargoDAO.getCargosBySenderUserId(user.getUserId());
            List<Cargo> receivedCargos = cargoDAO.getCargosByReceiverUserId(user.getUserId());
            List<Cargo> activeCargos = cargoDAO.getActiveCargosByUserId(user.getUserId());
            List<Cargo> completedCargos = cargoDAO.getCompletedCargosByUserId(user.getUserId());
            
            // İstatistikleri hesapla
            int totalCargos = allCargos.size();
            int deliveredCargos = completedCargos.size();
            int inTransitCargos = (int) allCargos.stream()
                .filter(cargo -> "Yolda".equals(cargo.getCurrentStatus()) || "Dağıtıma Çıktı".equals(cargo.getCurrentStatus()))
                .count();
            int pendingCargos = (int) allCargos.stream()
                .filter(cargo -> "Kargo Alındı".equals(cargo.getCurrentStatus()) || "Transfer Merkezinde".equals(cargo.getCurrentStatus()) || "Şubede".equals(cargo.getCurrentStatus()))
                .count();
            int activeCargosCount = activeCargos.size();
            int sentCargosCount = sentCargos.size();
            int receivedCargosCount = receivedCargos.size();
            
            // Son 5 kargo
            List<Cargo> recentCargos = allCargos.subList(0, Math.min(5, allCargos.size()));
            
            request.setAttribute("customer", customer);
            request.setAttribute("allCargos", allCargos);
            request.setAttribute("recentCargos", recentCargos);
            request.setAttribute("totalCargos", totalCargos);
            request.setAttribute("deliveredCargos", deliveredCargos);
            request.setAttribute("inTransitCargos", inTransitCargos);
            request.setAttribute("pendingCargos", pendingCargos);
            request.setAttribute("activeCargosCount", activeCargosCount);
            request.setAttribute("sentCargosCount", sentCargosCount);
            request.setAttribute("receivedCargosCount", receivedCargosCount);
            
            request.getRequestDispatcher("/WEB-INF/jsp/customer/dashboard.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Dashboard yüklenirken hata oluştu: " + e.getMessage());
            request.getRequestDispatcher("/WEB-INF/jsp/customer/dashboard.jsp").forward(request, response);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        doGet(request, response);
    }
}
