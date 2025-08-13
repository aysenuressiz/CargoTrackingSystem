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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/employee/cargo-list")
public class EmployeeCargoListServlet extends HttpServlet {
    
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
        
        try {
            // Çalışan bilgilerini al
            Employee employee = employeeDAO.getEmployeeByUserId(user.getUserId());
            
            if (employee == null) {
                request.setAttribute("error", "Çalışan bilgileriniz bulunamadı.");
                response.sendRedirect(request.getContextPath() + "/employee/dashboard");
                return;
            }
            
            List<Cargo> cargos = new ArrayList<>();
            
            // Pozisyon bazlı kargo listesi
            if (employee.getPositionId() == 5) { // Kurye
                cargos = cargoDAO.getCargosByCourier(user.getUserId());
            } else if (employee.getPositionId() == 2) { // Şube Müdürü
                cargos = cargoDAO.getCargosByBranch(employee.getBranchId());
            } else if (employee.getPositionId() == 4) { // Bölge Sorumlusu
                cargos = cargoDAO.getCargosByRegion(employee.getBranchId());
            } else {
                // Diğer pozisyonlar için tüm kargolar
                cargos = cargoDAO.getAllCargos();
            }
            
            // Filtreleme
            String statusFilter = request.getParameter("status");
            if (statusFilter != null && !statusFilter.isEmpty()) {
                cargos = cargos.stream()
                    .filter(cargo -> statusFilter.equals(cargo.getCurrentStatus()))
                    .collect(ArrayList::new, ArrayList::add, ArrayList::addAll);
            }
            
            request.setAttribute("employee", employee);
            request.setAttribute("cargos", cargos);
            request.setAttribute("statusFilter", statusFilter);
            
            request.getRequestDispatcher("/WEB-INF/jsp/employee/cargo-list.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Kargo listesi yüklenirken hata oluştu: " + e.getMessage());
            response.sendRedirect(request.getContextPath() + "/employee/dashboard");
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        doGet(request, response);
    }
}
