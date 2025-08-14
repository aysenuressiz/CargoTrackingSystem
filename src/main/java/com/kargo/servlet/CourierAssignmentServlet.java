package com.kargo.servlet;

import com.kargo.dao.CargoDAO;
import com.kargo.dao.EmployeeDAO;
import com.kargo.model.Cargo;
import com.kargo.model.Employee;
import com.kargo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/employee/courier-assignment")
public class CourierAssignmentServlet extends HttpServlet {
    private CargoDAO cargoDAO = new CargoDAO();
    private EmployeeDAO employeeDAO = new EmployeeDAO();

    @Override
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

        // Pozisyona göre kargo listesi
        List<Cargo> availableCargos = getAvailableCargosByPosition(employee);
        List<Employee> couriers = employeeDAO.getEmployeesByPosition(5); // Kurye pozisyonu

        request.setAttribute("availableCargos", availableCargos);
        request.setAttribute("couriers", couriers);
        request.setAttribute("employee", employee);

        request.getRequestDispatcher("/WEB-INF/jsp/employee/courier-assignment.jsp")
               .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        
        if ("assignCourier".equals(action)) {
            assignCourier(request, response);
        } else if ("updateStatus".equals(action)) {
            updateCargoStatus(request, response);
        }
    }

    private void assignCourier(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String cargoIdStr = request.getParameter("cargoId");
        String courierIdStr = request.getParameter("courierId");
        
        try {
            int cargoId = Integer.parseInt(cargoIdStr);
            int courierId = Integer.parseInt(courierIdStr);
            
            Employee courier = employeeDAO.getEmployeeById(courierId);
            if (courier != null) {
                cargoDAO.assignCourierToCargo(cargoId, courier.getUserId());
                request.setAttribute("success", "Kurye başarıyla atandı.");
            } else {
                request.setAttribute("error", "Kurye bulunamadı.");
            }
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Geçersiz kargo veya kurye ID.");
        }
        
        doGet(request, response);
    }

    private void updateCargoStatus(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String cargoIdStr = request.getParameter("cargoId");
        String statusIdStr = request.getParameter("statusId");
        String message = request.getParameter("message");
        
        try {
            int cargoId = Integer.parseInt(cargoIdStr);
            int statusId = Integer.parseInt(statusIdStr);
            
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            
            cargoDAO.addCargoStatus(cargoId, statusId, user.getUserId());
            request.setAttribute("success", "Kargo durumu başarıyla güncellendi.");
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Geçersiz kargo veya durum ID.");
        }
        
        doGet(request, response);
    }

    private List<Cargo> getAvailableCargosByPosition(Employee employee) {
        switch (employee.getPositionId()) {
            case 1: // Genel Müdür
                return cargoDAO.getAllCargos();
            case 2: // Şube Müdürü
                return cargoDAO.getCargosByBranch(employee.getBranchId());
            case 3: // Depo Görevlisi
                return cargoDAO.getCargosByBranch(employee.getBranchId());
            case 4: // Şube Personeli
                return cargoDAO.getCargosByBranch(employee.getBranchId());
            case 5: // Kurye
                return cargoDAO.getCargosByCourier(employee.getUserId());
            default:
                return cargoDAO.getAllCargos();
        }
    }
}
