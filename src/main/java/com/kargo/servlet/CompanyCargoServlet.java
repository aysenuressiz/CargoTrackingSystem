package com.kargo.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kargo.dao.CargoDAO;
import com.kargo.model.Cargo;
import com.kargo.model.User;

@WebServlet("/company/cargos")
public class CompanyCargoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CargoDAO cargoDAO;

    public void init() {
        cargoDAO = new CargoDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        try {
            // Get different types of cargos for the company
            List<Cargo> sentCargos = cargoDAO.getCargosBySenderUserId(user.getUserId());
            List<Cargo> receivedCargos = cargoDAO.getCargosByReceiverUserId(user.getUserId());
            List<Cargo> activeCargos = cargoDAO.getActiveCargosByUserId(user.getUserId());
            List<Cargo> completedCargos = cargoDAO.getCompletedCargosByUserId(user.getUserId());
            List<Cargo> cancelledCargos = cargoDAO.getCancelledCargosByUserId(user.getUserId());

            // Set attributes for JSP
            request.setAttribute("sentCargos", sentCargos);
            request.setAttribute("receivedCargos", receivedCargos);
            request.setAttribute("activeCargos", activeCargos);
            request.setAttribute("completedCargos", completedCargos);
            request.setAttribute("cancelledCargos", cancelledCargos);

            // Calculate statistics
            int totalSent = sentCargos.size();
            int totalReceived = receivedCargos.size();
            int totalActive = activeCargos.size();
            int totalCompleted = completedCargos.size();
            int totalCancelled = cancelledCargos.size();

            request.setAttribute("totalSent", totalSent);
            request.setAttribute("totalReceived", totalReceived);
            request.setAttribute("totalActive", totalActive);
            request.setAttribute("totalCompleted", totalCompleted);
            request.setAttribute("totalCancelled", totalCancelled);

            request.getRequestDispatcher("/WEB-INF/jsp/company/cargos.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Kargo bilgileri yüklenirken hata oluştu: " + e.getMessage());
            request.getRequestDispatcher("/WEB-INF/jsp/company/cargos.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        String action = request.getParameter("action");
        
        try {
            if ("search".equals(action)) {
                searchCargos(request, response, user);
            } else {
                doGet(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "İşlem sırasında hata oluştu: " + e.getMessage());
            doGet(request, response);
        }
    }

    private void searchCargos(HttpServletRequest request, HttpServletResponse response, User user) 
            throws ServletException, IOException {
        
        String trackingNo = request.getParameter("trackingNo");
        
        if (trackingNo != null && !trackingNo.trim().isEmpty()) {
            Cargo cargo = cargoDAO.getCargoByTrackingNo(trackingNo.trim());
            if (cargo != null) {
                // Check if the company is the sender or receiver of this cargo
                if (cargo.getSenderUserId() == user.getUserId() || cargo.getReceiverUserId() == user.getUserId()) {
                    request.setAttribute("searchResult", cargo);
                    request.setAttribute("searchTrackingNo", trackingNo);
                } else {
                    request.setAttribute("error", "Bu kargo numarası size ait değil.");
                }
            } else {
                request.setAttribute("error", "Kargo bulunamadı.");
            }
        } else {
            request.setAttribute("error", "Lütfen kargo numarası giriniz.");
        }

        doGet(request, response);
    }
}
