package com.kargo.dao;

import com.kargo.model.Address;
import com.kargo.util.DatabaseUtil;
import java.sql.*;

public class AddressDAO {
    
    public Address getAddressById(int addressId) {
        String sql = "SELECT * FROM Addresses WHERE address_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, addressId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                Address address = new Address();
                address.setAddressId(rs.getInt("address_id"));
                address.setCityId(rs.getInt("city_id"));
                address.setDistrictId(rs.getInt("district_id"));
                address.setNeighborhoodId(rs.getInt("neighborhood_id"));
                address.setFullAddress(rs.getString("full_address"));
                return address;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public int createAddress(Address address) {
        String sql = "INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (?, ?, ?, ?)";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            
            stmt.setInt(1, address.getCityId());
            stmt.setInt(2, address.getDistrictId());
            stmt.setInt(3, address.getNeighborhoodId());
            stmt.setString(4, address.getFullAddress());
            
            int affectedRows = stmt.executeUpdate();
            if (affectedRows > 0) {
                ResultSet rs = stmt.getGeneratedKeys();
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }
    
    public boolean updateAddress(Address address) {
        String sql = "UPDATE Addresses SET city_id = ?, district_id = ?, neighborhood_id = ?, full_address = ? WHERE address_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, address.getCityId());
            stmt.setInt(2, address.getDistrictId());
            stmt.setInt(3, address.getNeighborhoodId());
            stmt.setString(4, address.getFullAddress());
            stmt.setInt(5, address.getAddressId());
            
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean deleteAddress(int addressId) {
        String sql = "DELETE FROM Addresses WHERE address_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, addressId);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
