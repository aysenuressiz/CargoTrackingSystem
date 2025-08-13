package com.kargo.servlet;

import com.kargo.dao.CargoDAO;
import com.kargo.dao.EmployeeDAO;
import com.kargo.dao.StatusDAO;
import com.kargo.model.Cargo;
import com.kargo.model.CargoStatus;
import com.kargo.model.Employee;
import com.kargo.model.Status;
import com.kargo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

@WebServlet("/employee/status-update")
public class EmployeeStatusUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CargoDAO cargoDAO = new CargoDAO();
    private EmployeeDAO employeeDAO = new EmployeeDAO();
    private StatusDAO statusDAO = new StatusDAO();
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        Employee employee = employeeDAO.getEmployeeByUserId(user.getUserId());
        if (employee == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        // Tüm durumları al
        List<Status> statuses = statusDAO.getAllStatuses();
        request.setAttribute("statuses", statuses);
        
        // Pozisyon bazlı kargo listesi
        List<Cargo> cargos = getCargosByPosition(employee);
        request.setAttribute("cargos", cargos);
        
        request.getRequestDispatcher("/WEB-INF/jsp/employee/status-update.jsp").forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        Employee employee = employeeDAO.getEmployeeByUserId(user.getUserId());
        if (employee == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        String action = request.getParameter("action");
        
        if ("updateStatus".equals(action)) {
            updateCargoStatus(request, response, employee, user);
        } else {
            doGet(request, response);
        }
    }
    
    private void updateCargoStatus(HttpServletRequest request, HttpServletResponse response, 
                                 Employee employee, User user) throws ServletException, IOException {
        String trackingNo = request.getParameter("trackingNo");
        int statusId = Integer.parseInt(request.getParameter("statusId"));
        String notes = request.getParameter("notes");
        
        try {
            // Kargo durumunu güncelle
            CargoStatus cargoStatus = new CargoStatus();
            cargoStatus.setCargoId(cargoDAO.getCargoByTrackingNo(trackingNo).getCargoId());
            cargoStatus.setStatusTypeId(statusId);
            cargoStatus.setUpdatedById(user.getUserId());
            cargoStatus.setUpdatedDate(new Timestamp(System.currentTimeMillis()));
            cargoStatus.setNotes(notes); // Notları ekle
            
            if (cargoDAO.addCargoStatus(cargoStatus)) {
                request.setAttribute("success", "Kargo durumu başarıyla güncellendi.");
            } else {
                request.setAttribute("error", "Kargo durumu güncellenirken hata oluştu.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "İşlem sırasında hata oluştu: " + e.getMessage());
        }
        
        doGet(request, response);
    }
    
    private List<Cargo> getCargosByPosition(Employee employee) {
        // Pozisyon bazlı kargo listesi
        switch (employee.getPositionId()) {
            case 1: // Genel Müdür - Tüm kargolar
                return cargoDAO.getAllCargos();
            case 2: // Şube Müdürü - Kendi şubesinin kargoları
                return cargoDAO.getCargosByBranch(employee.getBranchId());
            case 3: // Depo Görevlisi - Şubedeki kargolar
                return cargoDAO.getCargosByBranch(employee.getBranchId());
            case 4: // Bölge Sorumlusu - Bölgedeki kargolar
                return cargoDAO.getCargosByRegion(employee.getBranchId());
            case 5: // Kurye - Kendisine atanan kargolar
                return cargoDAO.getCargosByCourier(employee.getUserId());
            default:
                return cargoDAO.getAllCargos();
        }
    }
}
