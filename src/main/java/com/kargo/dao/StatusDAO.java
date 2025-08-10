package com.kargo.dao;

import com.kargo.model.Status;
import com.kargo.util.DatabaseUtil;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StatusDAO {
    
    public List<Status> getAllStatuses() {
        List<Status> statuses = new ArrayList<>();
        String sql = "SELECT * FROM Statuses ORDER BY status_type_id";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                Status status = new Status();
                status.setStatusTypeId(rs.getInt("status_type_id"));
                status.setStatusName(rs.getString("status_name"));
                statuses.add(status);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return statuses;
    }
    
    public Status getStatusById(int statusId) {
        String sql = "SELECT * FROM Statuses WHERE status_type_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, statusId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                Status status = new Status();
                status.setStatusTypeId(rs.getInt("status_type_id"));
                status.setStatusName(rs.getString("status_name"));
                return status;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public boolean createStatus(Status status) {
        String sql = "INSERT INTO Statuses (status_name) VALUES (?)";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, status.getStatusName());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean updateStatus(Status status) {
        String sql = "UPDATE Statuses SET status_name = ? WHERE status_type_id = ?";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, status.getStatusName());
            stmt.setInt(2, status.getStatusTypeId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean deleteStatus(int statusId) {
        String sql = "DELETE FROM Statuses WHERE status_type_id = ?";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, statusId);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
