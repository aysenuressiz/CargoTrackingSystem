package com.kargo.dao;

import com.kargo.model.Customer;
import com.kargo.util.DatabaseUtil;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {
    
    public List<Customer> getAllCustomers() {
        List<Customer> customers = new ArrayList<>();
        String sql = "SELECT c.*, u.email, u.phone, a.full_address " +
                    "FROM Customers c " +
                    "LEFT JOIN Users u ON c.user_id = u.user_id " +
                    "LEFT JOIN Addresses a ON c.address_id = a.address_id";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setCustomerId(rs.getInt("customer_id"));
                customer.setUserId(rs.getInt("user_id"));
                customer.setFirstName(rs.getString("first_name"));
                customer.setLastName(rs.getString("last_name"));
                customer.setIdentityNo(rs.getString("identity_no"));
                customer.setAddressId(rs.getInt("address_id"));
                customer.setFullAddress(rs.getString("full_address"));
                customer.setEmail(rs.getString("email"));
                customer.setPhone(rs.getString("phone"));
                customers.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }
    
    public boolean createCustomer(Customer customer) {
        String sql = "INSERT INTO Customers (user_id, first_name, last_name, identity_no, address_id) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, customer.getUserId());
            stmt.setString(2, customer.getFirstName());
            stmt.setString(3, customer.getLastName());
            stmt.setString(4, customer.getIdentityNo());
            stmt.setInt(5, customer.getAddressId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Customer getCustomerByUserId(int userId) {
        String sql = "SELECT c.*, u.email, u.phone, a.full_address " +
                    "FROM Customers c " +
                    "LEFT JOIN Users u ON c.user_id = u.user_id " +
                    "LEFT JOIN Addresses a ON c.address_id = a.address_id " +
                    "WHERE c.user_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                Customer customer = new Customer();
                customer.setCustomerId(rs.getInt("customer_id"));
                customer.setUserId(rs.getInt("user_id"));
                customer.setFirstName(rs.getString("first_name"));
                customer.setLastName(rs.getString("last_name"));
                customer.setIdentityNo(rs.getString("identity_no"));
                customer.setAddressId(rs.getInt("address_id"));
                customer.setFullAddress(rs.getString("full_address"));
                customer.setEmail(rs.getString("email"));
                customer.setPhone(rs.getString("phone"));
                return customer;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public boolean updateCustomer(Customer customer) {
        String sql = "UPDATE Customers SET first_name = ?, last_name = ?, identity_no = ?, address_id = ? WHERE customer_id = ?";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, customer.getFirstName());
            stmt.setString(2, customer.getLastName());
            stmt.setString(3, customer.getIdentityNo());
            stmt.setInt(4, customer.getAddressId());
            stmt.setInt(5, customer.getCustomerId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public Customer getCustomerById(int customerId) {
        String sql = "SELECT c.*, u.email, u.phone, a.full_address " +
                    "FROM Customers c " +
                    "LEFT JOIN Users u ON c.user_id = u.user_id " +
                    "LEFT JOIN Addresses a ON c.address_id = a.address_id " +
                    "WHERE c.customer_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, customerId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                Customer customer = new Customer();
                customer.setCustomerId(rs.getInt("customer_id"));
                customer.setUserId(rs.getInt("user_id"));
                customer.setFirstName(rs.getString("first_name"));
                customer.setLastName(rs.getString("last_name"));
                customer.setIdentityNo(rs.getString("identity_no"));
                customer.setAddressId(rs.getInt("address_id"));
                customer.setFullAddress(rs.getString("full_address"));
                customer.setEmail(rs.getString("email"));
                customer.setPhone(rs.getString("phone"));
                return customer;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
