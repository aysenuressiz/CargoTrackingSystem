package com.kargo.dao;

import com.kargo.model.Address;
import com.kargo.util.DatabaseUtil;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AddressDAO {
    
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
                ResultSet generatedKeys = stmt.getGeneratedKeys();
                if (generatedKeys.next()) {
                    return generatedKeys.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }
    
    public Address getAddressById(int addressId) {
        String sql = "SELECT a.*, c.city_name, d.district_name, n.neighborhood_name " +
                    "FROM Addresses a " +
                    "LEFT JOIN Cities c ON a.city_id = c.city_id " +
                    "LEFT JOIN Districts d ON a.district_id = d.district_id " +
                    "LEFT JOIN Neighborhoods n ON a.neighborhood_id = n.neighborhood_id " +
                    "WHERE a.address_id = ?";
        
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
                address.setCityName(rs.getString("city_name"));
                address.setDistrictName(rs.getString("district_name"));
                address.setNeighborhoodName(rs.getString("neighborhood_name"));
                return address;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public List<String> getAllCities() {
        List<String> cities = new ArrayList<>();
        String sql = "SELECT city_name FROM Cities ORDER BY city_name";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                cities.add(rs.getString("city_name"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cities;
    }
    
    public List<String> getDistrictsByCityId(int cityId) {
        List<String> districts = new ArrayList<>();
        String sql = "SELECT district_name FROM Districts WHERE city_id = ? ORDER BY district_name";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, cityId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                districts.add(rs.getString("district_name"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return districts;
    }
}
