package com.kargo.dao;

import com.kargo.model.Employee;
import com.kargo.util.DatabaseUtil;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {
    
    public List<Employee> getAllEmployees() {
        List<Employee> employees = new ArrayList<>();
        String sql = "SELECT e.*, u.email, u.phone, p.position_name, b.branch_name " +
                    "FROM Employees e " +
                    "LEFT JOIN Users u ON e.user_id = u.user_id " +
                    "LEFT JOIN Positions p ON e.position_id = p.position_id " +
                    "LEFT JOIN Branches b ON e.branch_id = b.branch_id";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                Employee employee = new Employee();
                employee.setEmployeeId(rs.getInt("employee_id"));
                employee.setUserId(rs.getInt("user_id"));
                employee.setFirstName(rs.getString("first_name"));
                employee.setLastName(rs.getString("last_name"));
                employee.setBranchId(rs.getInt("branch_id"));
                employee.setPositionId(rs.getInt("position_id"));
                employee.setPositionName(rs.getString("position_name"));
                employee.setBranchName(rs.getString("branch_name"));
                employee.setEmail(rs.getString("email"));
                employee.setPhone(rs.getString("phone"));
                employees.add(employee);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }
    
    public boolean createEmployee(Employee employee) {
        String sql = "INSERT INTO Employees (user_id, first_name, last_name, branch_id, position_id) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, employee.getUserId());
            stmt.setString(2, employee.getFirstName());
            stmt.setString(3, employee.getLastName());
            stmt.setInt(4, employee.getBranchId());
            stmt.setInt(5, employee.getPositionId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public Employee getEmployeeById(int employeeId) {
        String sql = "SELECT e.*, u.email, u.phone, u.username, p.position_name, b.branch_name " +
                    "FROM Employees e " +
                    "LEFT JOIN Users u ON e.user_id = u.user_id " +
                    "LEFT JOIN Positions p ON e.position_id = p.position_id " +
                    "LEFT JOIN Branches b ON e.branch_id = b.branch_id " +
                    "WHERE e.employee_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, employeeId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                Employee employee = new Employee();
                employee.setEmployeeId(rs.getInt("employee_id"));
                employee.setUserId(rs.getInt("user_id"));
                employee.setFirstName(rs.getString("first_name"));
                employee.setLastName(rs.getString("last_name"));
                employee.setBranchId(rs.getInt("branch_id"));
                employee.setPositionId(rs.getInt("position_id"));
                employee.setPositionName(rs.getString("position_name"));
                employee.setBranchName(rs.getString("branch_name"));
                employee.setEmail(rs.getString("email"));
                employee.setPhone(rs.getString("phone"));
                employee.setUsername(rs.getString("username"));
                employee.setCreatedAt(rs.getTimestamp("created_at"));
                return employee;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public Employee getEmployeeByUserId(int userId) {
        String sql = "SELECT e.*, u.email, u.phone, u.username, p.position_name, b.branch_name " +
                    "FROM Employees e " +
                    "LEFT JOIN Users u ON e.user_id = u.user_id " +
                    "LEFT JOIN Positions p ON e.position_id = p.position_id " +
                    "LEFT JOIN Branches b ON e.branch_id = b.branch_id " +
                    "WHERE e.user_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                Employee employee = new Employee();
                employee.setEmployeeId(rs.getInt("employee_id"));
                employee.setUserId(rs.getInt("user_id"));
                employee.setFirstName(rs.getString("first_name"));
                employee.setLastName(rs.getString("last_name"));
                employee.setBranchId(rs.getInt("branch_id"));
                employee.setPositionId(rs.getInt("position_id"));
                employee.setPositionName(rs.getString("position_name"));
                employee.setBranchName(rs.getString("branch_name"));
                employee.setEmail(rs.getString("email"));
                employee.setPhone(rs.getString("phone"));
                employee.setUsername(rs.getString("username"));
                employee.setCreatedAt(rs.getTimestamp("created_at"));
                return employee;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public List<Employee> getEmployeesByBranch(int branchId) {
        List<Employee> employees = new ArrayList<>();
        String sql = "SELECT e.*, u.email, u.phone, p.position_name, b.branch_name " +
                    "FROM Employees e " +
                    "LEFT JOIN Users u ON e.user_id = u.user_id " +
                    "LEFT JOIN Positions p ON e.position_id = p.position_id " +
                    "LEFT JOIN Branches b ON e.branch_id = b.branch_id " +
                    "WHERE e.branch_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, branchId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Employee employee = new Employee();
                employee.setEmployeeId(rs.getInt("employee_id"));
                employee.setUserId(rs.getInt("user_id"));
                employee.setFirstName(rs.getString("first_name"));
                employee.setLastName(rs.getString("last_name"));
                employee.setBranchId(rs.getInt("branch_id"));
                employee.setPositionId(rs.getInt("position_id"));
                employee.setPositionName(rs.getString("position_name"));
                employee.setBranchName(rs.getString("branch_name"));
                employee.setEmail(rs.getString("email"));
                employee.setPhone(rs.getString("phone"));
                employees.add(employee);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }
    
    public List<Employee> getEmployeesByPosition(int positionId) {
        List<Employee> employees = new ArrayList<>();
        String sql = "SELECT e.*, u.email, u.phone, p.position_name, b.branch_name " +
                    "FROM Employees e " +
                    "LEFT JOIN Users u ON e.user_id = u.user_id " +
                    "LEFT JOIN Positions p ON e.position_id = p.position_id " +
                    "LEFT JOIN Branches b ON e.branch_id = b.branch_id " +
                    "WHERE e.position_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, positionId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Employee employee = new Employee();
                employee.setEmployeeId(rs.getInt("employee_id"));
                employee.setUserId(rs.getInt("user_id"));
                employee.setFirstName(rs.getString("first_name"));
                employee.setLastName(rs.getString("last_name"));
                employee.setBranchId(rs.getInt("branch_id"));
                employee.setPositionId(rs.getInt("position_id"));
                employee.setPositionName(rs.getString("position_name"));
                employee.setBranchName(rs.getString("branch_name"));
                employee.setEmail(rs.getString("email"));
                employee.setPhone(rs.getString("phone"));
                employees.add(employee);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }
    
    public boolean updateEmployee(Employee employee) {
        String sql = "UPDATE Employees SET first_name = ?, last_name = ?, branch_id = ?, position_id = ? WHERE employee_id = ?";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, employee.getFirstName());
            stmt.setString(2, employee.getLastName());
            stmt.setInt(3, employee.getBranchId());
            stmt.setInt(4, employee.getPositionId());
            stmt.setInt(5, employee.getEmployeeId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean deleteEmployee(int employeeId) {
        String sql = "DELETE FROM Employees WHERE employee_id = ?";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, employeeId);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    // Pozisyon bazlı yetki kontrolü metodları
    public boolean isGeneralManager(int userId) {
        Employee employee = getEmployeeByUserId(userId);
        return employee != null && employee.getPositionId() == 1; // Genel Müdür
    }
    
    public boolean isBranchManager(int userId) {
        Employee employee = getEmployeeByUserId(userId);
        return employee != null && employee.getPositionId() == 2; // Şube Müdürü
    }
    
    public boolean isWarehouseClerk(int userId) {
        Employee employee = getEmployeeByUserId(userId);
        return employee != null && employee.getPositionId() == 3; // Depo Görevlisi
    }
    
    public boolean isRegionalManager(int userId) {
        Employee employee = getEmployeeByUserId(userId);
        return employee != null && employee.getPositionId() == 4; // Bölge Sorumlusu
    }
    
    public boolean isCourier(int userId) {
        Employee employee = getEmployeeByUserId(userId);
        return employee != null && employee.getPositionId() == 5; // Kurye
    }
    
    public boolean canManageAllBranches(int userId) {
        return isGeneralManager(userId) || isRegionalManager(userId);
    }
    
    public boolean canManageBranch(int userId, int branchId) {
        Employee employee = getEmployeeByUserId(userId);
        if (employee == null) return false;
        
        // Genel Müdür ve Bölge Sorumlusu tüm şubeleri yönetebilir
        if (isGeneralManager(userId) || isRegionalManager(userId)) {
            return true;
        }
        
        // Şube Müdürü sadece kendi şubesini yönetebilir
        if (isBranchManager(userId)) {
            return employee.getBranchId() == branchId;
        }
        
        return false;
    }
    
    public boolean canUpdateCargoStatus(int userId) {
        Employee employee = getEmployeeByUserId(userId);
        if (employee == null) return false;
        
        // Tüm pozisyonlar kargo durumu güncelleyebilir
        return true;
    }
    
    public boolean canViewAllReports(int userId) {
        return isGeneralManager(userId) || isRegionalManager(userId);
    }
    
    public boolean canViewBranchReports(int userId, int branchId) {
        Employee employee = getEmployeeByUserId(userId);
        if (employee == null) return false;
        
        // Genel Müdür ve Bölge Sorumlusu tüm raporları görebilir
        if (isGeneralManager(userId) || isRegionalManager(userId)) {
            return true;
        }
        
        // Şube Müdürü sadece kendi şubesinin raporlarını görebilir
        if (isBranchManager(userId)) {
            return employee.getBranchId() == branchId;
        }
        
        return false;
    }
}