package com.kargo.dao;

import com.kargo.model.Branch;
import com.kargo.util.DatabaseUtil;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BranchDAO {
    
    public List<Branch> getAllBranches() {
        List<Branch> branches = new ArrayList<>();
        String sql = "SELECT b.*, a.full_address, c.city_name, d.district_name, n.neighborhood_name " +
                    "FROM Branches b " +
                    "LEFT JOIN Addresses a ON b.address_id = a.address_id " +
                    "LEFT JOIN Cities c ON a.city_id = c.city_id " +
                    "LEFT JOIN Districts d ON a.district_id = d.district_id " +
                    "LEFT JOIN Neighborhoods n ON a.neighborhood_id = n.neighborhood_id";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                Branch branch = new Branch();
                branch.setBranchId(rs.getInt("branch_id"));
                branch.setBranchName(rs.getString("branch_name"));
                branch.setAddressId(rs.getInt("address_id"));
                branch.setFullAddress(rs.getString("full_address"));
                branch.setCityName(rs.getString("city_name"));
                branch.setDistrictName(rs.getString("district_name"));
                branch.setNeighborhoodName(rs.getString("neighborhood_name"));
                branches.add(branch);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return branches;
    }
    
    public boolean createBranch(Branch branch) {
        String sql = "INSERT INTO Branches (branch_name, address_id) VALUES (?, ?)";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, branch.getBranchName());
            stmt.setInt(2, branch.getAddressId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean deleteBranch(int branchId) {
        String sql = "DELETE FROM Branches WHERE branch_id = ?";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, branchId);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}