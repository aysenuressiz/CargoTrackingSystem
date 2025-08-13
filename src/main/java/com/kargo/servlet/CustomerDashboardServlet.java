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
            
            // Müşterinin kargolarını al
            List<Cargo> cargos = cargoDAO.getCargosByUserId(user.getUserId());
            
            // İstatistikleri hesapla
            int totalCargos = cargos.size();
            int deliveredCargos = (int) cargos.stream()
                .filter(cargo -> "Teslim Edildi".equals(cargo.getCurrentStatus()))
                .count();
            int inTransitCargos = totalCargos - deliveredCargos;
            
            request.setAttribute("customer", customer);
            request.setAttribute("cargos", cargos);
            request.setAttribute("totalCargos", totalCargos);
            request.setAttribute("deliveredCargos", deliveredCargos);
            request.setAttribute("inTransitCargos", inTransitCargos);
            
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
