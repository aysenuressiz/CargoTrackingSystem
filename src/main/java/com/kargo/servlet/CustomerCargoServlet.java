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

@WebServlet("/customer/cargos")
public class CustomerCargoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CargoDAO cargoDAO = new CargoDAO();
    private CustomerDAO customerDAO = new CustomerDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null || !"Müşteri".equals(user.getRoleName())) {
            response.sendRedirect("../login");
            return;
        }
        
        try {
            // Müşteri bilgilerini getir
            Customer customer = customerDAO.getCustomerByUserId(user.getUserId());
            if (customer != null) {
                request.setAttribute("customer", customer);
                
                // Gönderdiği kargoları getir
                List<Cargo> sentCargos = cargoDAO.getCargosBySenderUserId(user.getUserId());
                request.setAttribute("sentCargos", sentCargos);
                
                // Aldığı kargoları getir
                List<Cargo> receivedCargos = cargoDAO.getCargosByReceiverUserId(user.getUserId());
                request.setAttribute("receivedCargos", receivedCargos);
                
                // Aktif kargoları getir (Teslim edilmemiş)
                List<Cargo> activeCargos = cargoDAO.getActiveCargosByUserId(user.getUserId());
                request.setAttribute("activeCargos", activeCargos);
                
                // İptal edilmiş kargoları getir
                List<Cargo> cancelledCargos = cargoDAO.getCancelledCargosByUserId(user.getUserId());
                request.setAttribute("cancelledCargos", cancelledCargos);
                
                // Tamamlanmış kargoları getir
                List<Cargo> completedCargos = cargoDAO.getCompletedCargosByUserId(user.getUserId());
                request.setAttribute("completedCargos", completedCargos);
            }
            
            request.getRequestDispatcher("/WEB-INF/jsp/customer/cargos.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Kargo bilgileri yüklenirken hata oluştu.");
            request.getRequestDispatcher("/WEB-INF/jsp/customer/cargos.jsp").forward(request, response);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null || !"Müşteri".equals(user.getRoleName())) {
            response.sendRedirect("../login");
            return;
        }
        
        String action = request.getParameter("action");
        
        if ("trackCargo".equals(action)) {
            String trackingNo = request.getParameter("trackingNo");
            if (trackingNo != null && !trackingNo.trim().isEmpty()) {
                response.sendRedirect("../track?trackingNo=" + trackingNo.trim());
            } else {
                request.setAttribute("error", "Takip numarası gerekli.");
                doGet(request, response);
            }
        } else {
            doGet(request, response);
        }
    }
}
