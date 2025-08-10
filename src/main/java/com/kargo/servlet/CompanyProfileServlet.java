package com.kargo.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kargo.dao.AddressDAO;
import com.kargo.dao.CompanyDAO;
import com.kargo.dao.UserDAO;
import com.kargo.model.Address;
import com.kargo.model.City;
import com.kargo.model.Company;
import com.kargo.model.District;
import com.kargo.model.Neighborhood;
import com.kargo.model.User;
import com.kargo.util.DatabaseUtil;

@WebServlet("/company/profile")
public class CompanyProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;
    private CompanyDAO companyDAO;
    private AddressDAO addressDAO;

    public void init() {
        userDAO = new UserDAO();
        companyDAO = new CompanyDAO();
        addressDAO = new AddressDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        try {
            // Get company information
            Company company = companyDAO.getCompanyByUserId(user.getUserId());
            if (company != null) {
                request.setAttribute("company", company);
                
                // Get address information
                if (company.getAddressId() != null) {
                    Address address = addressDAO.getAddressById(company.getAddressId());
                    if (address != null) {
                        request.setAttribute("address", address);
                        
                        // Get city, district, neighborhood names
                        City city = getCityById(address.getCityId());
                        District district = getDistrictById(address.getDistrictId());
                        Neighborhood neighborhood = getNeighborhoodById(address.getNeighborhoodId());
                        
                        request.setAttribute("city", city);
                        request.setAttribute("district", district);
                        request.setAttribute("neighborhood", neighborhood);
                    }
                }
            }

            // Get all cities for dropdown
            List<City> cities = getAllCities();
            request.setAttribute("cities", cities);

            request.getRequestDispatcher("/WEB-INF/jsp/company/profile.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Profil bilgileri yüklenirken hata oluştu: " + e.getMessage());
            request.getRequestDispatcher("/WEB-INF/jsp/company/profile.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        String action = request.getParameter("action");
        
        try {
            if ("updateProfile".equals(action)) {
                updateCompanyProfile(request, response, user);
            } else if ("updateAddress".equals(action)) {
                updateCompanyAddress(request, response, user);
            } else {
                response.sendRedirect(request.getContextPath() + "/company/profile");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "İşlem sırasında hata oluştu: " + e.getMessage());
            doGet(request, response);
        }
    }

    private void updateCompanyProfile(HttpServletRequest request, HttpServletResponse response, User user) 
            throws ServletException, IOException {
        
        String companyName = request.getParameter("companyName");
        String taxNo = request.getParameter("taxNo");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");

        try {
            // Update user information
            user.setPhone(phone);
            user.setEmail(email);
            userDAO.updateUser(user);

            // Update company information
            Company company = companyDAO.getCompanyByUserId(user.getUserId());
            if (company != null) {
                company.setCompanyName(companyName);
                company.setTaxNo(taxNo);
                companyDAO.updateCompany(company);
            }

            // Update session
            request.getSession().setAttribute("user", user);
            request.setAttribute("success", "Şirket bilgileri başarıyla güncellendi.");
            
        } catch (Exception e) {
            request.setAttribute("error", "Şirket bilgileri güncellenirken hata oluştu: " + e.getMessage());
        }

        doGet(request, response);
    }

    private void updateCompanyAddress(HttpServletRequest request, HttpServletResponse response, User user) 
            throws ServletException, IOException {
        
        String cityId = request.getParameter("cityId");
        String districtId = request.getParameter("districtId");
        String neighborhoodId = request.getParameter("neighborhoodId");
        String fullAddress = request.getParameter("fullAddress");

        try {
            Company company = companyDAO.getCompanyByUserId(user.getUserId());
            if (company != null) {
                Address address;
                
                if (company.getAddressId() != null) {
                    // Update existing address
                    address = addressDAO.getAddressById(company.getAddressId());
                    if (address != null) {
                        address.setCityId(Integer.parseInt(cityId));
                        address.setDistrictId(Integer.parseInt(districtId));
                        address.setNeighborhoodId(Integer.parseInt(neighborhoodId));
                        address.setFullAddress(fullAddress);
                        addressDAO.updateAddress(address);
                    }
                } else {
                    // Create new address
                    address = new Address();
                    address.setCityId(Integer.parseInt(cityId));
                    address.setDistrictId(Integer.parseInt(districtId));
                    address.setNeighborhoodId(Integer.parseInt(neighborhoodId));
                    address.setFullAddress(fullAddress);
                    
                    int addressId = addressDAO.createAddress(address);
                    address.setAddressId(addressId);
                    
                    // Update company with new address
                    company.setAddressId(addressId);
                    companyDAO.updateCompany(company);
                }

                request.setAttribute("success", "Adres bilgileri başarıyla güncellendi.");
            }
            
        } catch (Exception e) {
            request.setAttribute("error", "Adres bilgileri güncellenirken hata oluştu: " + e.getMessage());
        }

        doGet(request, response);
    }

    // Helper methods for location data
    private List<City> getAllCities() {
        List<City> cities = new ArrayList<>();
        String sql = "SELECT city_id, city_name FROM Cities ORDER BY city_name";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                City city = new City();
                city.setCityId(rs.getInt("city_id"));
                city.setCityName(rs.getString("city_name"));
                cities.add(city);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cities;
    }

    private City getCityById(int cityId) {
        String sql = "SELECT city_id, city_name FROM Cities WHERE city_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, cityId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                City city = new City();
                city.setCityId(rs.getInt("city_id"));
                city.setCityName(rs.getString("city_name"));
                return city;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private District getDistrictById(int districtId) {
        String sql = "SELECT district_id, district_name FROM Districts WHERE district_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, districtId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                District district = new District();
                district.setDistrictId(rs.getInt("district_id"));
                district.setDistrictName(rs.getString("district_name"));
                return district;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private Neighborhood getNeighborhoodById(int neighborhoodId) {
        String sql = "SELECT neighborhood_id, neighborhood_name FROM Neighborhoods WHERE neighborhood_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, neighborhoodId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                Neighborhood neighborhood = new Neighborhood();
                neighborhood.setNeighborhoodId(rs.getInt("neighborhood_id"));
                neighborhood.setNeighborhoodName(rs.getString("neighborhood_name"));
                return neighborhood;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
