package com.kargo.servlet;

import com.kargo.dao.EmployeeDAO;
import com.kargo.dao.CargoDAO;
import com.kargo.model.Employee;
import com.kargo.model.User;
import com.kargo.util.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/employee/dashboard")
public class EmployeeDashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeDAO employeeDAO = new EmployeeDAO();
    private CargoDAO cargoDAO = new CargoDAO();
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        // Çalışan bilgilerini al
        Employee employee = employeeDAO.getEmployeeByUserId(user.getUserId());
        if (employee == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        // Session'a çalışan bilgilerini ekle
        session.setAttribute("employee", employee);
        
        // İstatistikleri hesapla
        Map<String, Integer> stats = calculateStats(employee);
        request.setAttribute("stats", stats);
        
        // Pozisyon bazlı özel veriler
        if (employee.getPositionId() == 1) { // Genel Müdür
            request.setAttribute("branchPerformance", getBranchPerformance());
        } else if (employee.getPositionId() == 2) { // Şube Müdürü
            request.setAttribute("staffPerformance", getStaffPerformance(employee.getBranchId()));
        } else if (employee.getPositionId() == 5) { // Kurye
            request.setAttribute("deliveryList", getDeliveryList(user.getUserId()));
        }
        
        request.getRequestDispatcher("/WEB-INF/jsp/employee/dashboard.jsp").forward(request, response);
    }
    
    private Map<String, Integer> calculateStats(Employee employee) {
        Map<String, Integer> stats = new HashMap<>();
        
        try (Connection conn = DatabaseUtil.getConnection()) {
            // Bugünkü kargolar
            String todaySql = "SELECT COUNT(*) FROM Cargos WHERE DATE(shipping_date) = CURDATE()";
            if (employee.getPositionId() == 2) { // Şube Müdürü - sadece kendi şubesinin kargoları
                todaySql += " AND sender_user_id IN (SELECT user_id FROM Users WHERE user_id IN " +
                           "(SELECT user_id FROM Employees WHERE branch_id = ?))";
            }
            
            try (PreparedStatement stmt = conn.prepareStatement(todaySql)) {
                if (employee.getPositionId() == 2) {
                    stmt.setInt(1, employee.getBranchId());
                }
                ResultSet rs = stmt.executeQuery();
                if (rs.next()) {
                    stats.put("todayCargos", rs.getInt(1));
                }
            }
            
            // Teslim edilen kargolar
            String deliveredSql = "SELECT COUNT(*) FROM Cargos c " +
                                "JOIN CargoStatuses cs ON c.cargo_id = cs.cargo_id " +
                                "WHERE cs.status_type_id = 5 AND DATE(cs.update_date) = CURDATE()";
            if (employee.getPositionId() == 2) {
                deliveredSql += " AND c.sender_user_id IN (SELECT user_id FROM Users WHERE user_id IN " +
                               "(SELECT user_id FROM Employees WHERE branch_id = ?))";
            }
            
            try (PreparedStatement stmt = conn.prepareStatement(deliveredSql)) {
                if (employee.getPositionId() == 2) {
                    stmt.setInt(1, employee.getBranchId());
                }
                ResultSet rs = stmt.executeQuery();
                if (rs.next()) {
                    stats.put("deliveredCargos", rs.getInt(1));
                }
            }
            
            // Dağıtımda olan kargolar
            String inDeliverySql = "SELECT COUNT(*) FROM Cargos c " +
                                  "JOIN CargoStatuses cs ON c.cargo_id = cs.cargo_id " +
                                  "WHERE cs.status_type_id = 4 AND DATE(cs.update_date) = CURDATE()";
            if (employee.getPositionId() == 2) {
                inDeliverySql += " AND c.sender_user_id IN (SELECT user_id FROM Users WHERE user_id IN " +
                                "(SELECT user_id FROM Employees WHERE branch_id = ?))";
            }
            
            try (PreparedStatement stmt = conn.prepareStatement(inDeliverySql)) {
                if (employee.getPositionId() == 2) {
                    stmt.setInt(1, employee.getBranchId());
                }
                ResultSet rs = stmt.executeQuery();
                if (rs.next()) {
                    stats.put("inDeliveryCargos", rs.getInt(1));
                }
            }
            
            // Bekleyen kargolar
            String pendingSql = "SELECT COUNT(*) FROM Cargos c " +
                              "JOIN CargoStatuses cs ON c.cargo_id = cs.cargo_id " +
                              "WHERE cs.status_type_id IN (1,2,3) AND DATE(cs.update_date) = CURDATE()";
            if (employee.getPositionId() == 2) {
                pendingSql += " AND c.sender_user_id IN (SELECT user_id FROM Users WHERE user_id IN " +
                             "(SELECT user_id FROM Employees WHERE branch_id = ?))";
            }
            
            try (PreparedStatement stmt = conn.prepareStatement(pendingSql)) {
                if (employee.getPositionId() == 2) {
                    stmt.setInt(1, employee.getBranchId());
                }
                ResultSet rs = stmt.executeQuery();
                if (rs.next()) {
                    stats.put("pendingCargos", rs.getInt(1));
                }
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
            // Varsayılan değerler
            stats.put("todayCargos", 0);
            stats.put("deliveredCargos", 0);
            stats.put("inDeliveryCargos", 0);
            stats.put("pendingCargos", 0);
        }
        
        return stats;
    }
    
    private Map<String, Object> getBranchPerformance() {
        Map<String, Object> performance = new HashMap<>();
        // Şube performans verilerini döndür
        return performance;
    }
    
    private Map<String, Object> getStaffPerformance(int branchId) {
        Map<String, Object> performance = new HashMap<>();
        // Çalışan performans verilerini döndür
        return performance;
    }
    
    private Map<String, Object> getDeliveryList(int userId) {
        Map<String, Object> deliveryList = new HashMap<>();
        // Kurye teslimat listesini döndür
        return deliveryList;
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        doGet(request, response);
    }
}
