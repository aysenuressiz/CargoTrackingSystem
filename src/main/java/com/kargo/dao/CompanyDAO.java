package com.kargo.dao;

import com.kargo.model.Company;
import com.kargo.util.DatabaseUtil;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CompanyDAO {
    
    public List<Company> getAllCompanies() {
        List<Company> companies = new ArrayList<>();
        String sql = "SELECT comp.*, u.email, u.phone, a.full_address " +
                    "FROM Companies comp " +
                    "LEFT JOIN Users u ON comp.user_id = u.user_id " +
                    "LEFT JOIN Addresses a ON comp.address_id = a.address_id";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                Company company = new Company();
                company.setCompanyId(rs.getInt("company_id"));
                company.setUserId(rs.getInt("user_id"));
                company.setCompanyName(rs.getString("company_name"));
                company.setTaxNo(rs.getString("tax_no"));
                Integer addressId = rs.getInt("address_id");
                if (rs.wasNull()) addressId = null;
                company.setAddressId(addressId);
                company.setFullAddress(rs.getString("full_address"));
                company.setEmail(rs.getString("email"));
                company.setPhone(rs.getString("phone"));
                companies.add(company);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return companies;
    }
    
    public Company getCompanyByUserId(int userId) {
        String sql = "SELECT comp.*, u.email, u.phone, a.full_address " +
                    "FROM Companies comp " +
                    "LEFT JOIN Users u ON comp.user_id = u.user_id " +
                    "LEFT JOIN Addresses a ON comp.address_id = a.address_id " +
                    "WHERE comp.user_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                Company company = new Company();
                company.setCompanyId(rs.getInt("company_id"));
                company.setUserId(rs.getInt("user_id"));
                company.setCompanyName(rs.getString("company_name"));
                company.setTaxNo(rs.getString("tax_no"));
                Integer addressId = rs.getInt("address_id");
                if (rs.wasNull()) addressId = null;
                company.setAddressId(addressId);
                company.setFullAddress(rs.getString("full_address"));
                company.setEmail(rs.getString("email"));
                company.setPhone(rs.getString("phone"));
                return company;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public boolean updateCompany(Company company) {
        String sql = "UPDATE Companies SET company_name = ?, tax_no = ?, address_id = ? WHERE user_id = ?";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, company.getCompanyName());
            stmt.setString(2, company.getTaxNo());
            if (company.getAddressId() != null) {
                stmt.setInt(3, company.getAddressId());
            } else {
                stmt.setNull(3, Types.INTEGER);
            }
            stmt.setInt(4, company.getUserId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean createCompany(Company company) {
        String sql = "INSERT INTO Companies (user_id, company_name, tax_no, address_id) VALUES (?, ?, ?, ?)";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, company.getUserId());
            stmt.setString(2, company.getCompanyName());
            stmt.setString(3, company.getTaxNo());
            if (company.getAddressId() != null) {
                stmt.setInt(4, company.getAddressId());
            } else {
                stmt.setNull(4, Types.INTEGER);
            }
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}