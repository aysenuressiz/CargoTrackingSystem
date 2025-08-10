package com.kargo.servlet;

import com.kargo.dao.*;
import com.kargo.model.*;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/customer/profile")
public class CustomerProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO = new UserDAO();
    private CustomerDAO customerDAO = new CustomerDAO();
    private AddressDAO addressDAO = new AddressDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null || !"Müşteri".equals(user.getRoleName())) {
            response.sendRedirect("../login");
            return;
        }
        
        try {
            // Müşteri bilgilerini getir
            Customer customer = customerDAO.getCustomerByUserId(user.getUserId());
            if (customer != null) {
                request.setAttribute("customer", customer);
            }
            
            // Şehirleri getir
            List<City> cities = getCities();
            request.setAttribute("cities", cities);
            
            // Müşterinin mevcut adresi varsa
            if (customer != null && customer.getAddressId() > 0) {
                Address currentAddress = addressDAO.getAddressById(customer.getAddressId());
                if (currentAddress != null) {
                    request.setAttribute("currentAddress", currentAddress);
                    
                    // Mevcut şehir, ilçe ve mahalle bilgilerini getir
                    City currentCity = getCityById(currentAddress.getCityId());
                    District currentDistrict = getDistrictById(currentAddress.getDistrictId());
                    Neighborhood currentNeighborhood = getNeighborhoodById(currentAddress.getNeighborhoodId());
                    
                    request.setAttribute("currentCity", currentCity);
                    request.setAttribute("currentDistrict", currentDistrict);
                    request.setAttribute("currentNeighborhood", currentNeighborhood);
                    
                    // İlçeleri getir
                    List<District> districts = getDistrictsByCityId(currentAddress.getCityId());
                    request.setAttribute("districts", districts);
                    
                    // Mahalleleri getir
                    List<Neighborhood> neighborhoods = getNeighborhoodsByDistrictId(currentAddress.getDistrictId());
                    request.setAttribute("neighborhoods", neighborhoods);
                }
            }
            
            request.getRequestDispatcher("/WEB-INF/jsp/customer/profile.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Profil bilgileri yüklenirken hata oluştu.");
            request.getRequestDispatcher("/WEB-INF/jsp/customer/profile.jsp").forward(request, response);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null || !"Müşteri".equals(user.getRoleName())) {
            response.sendRedirect("../login");
            return;
        }
        
        String action = request.getParameter("action");
        
        if ("updateProfile".equals(action)) {
            updateProfile(request, response, user);
        } else if ("updateAddress".equals(action)) {
            updateAddress(request, response, user);
        } else {
            response.sendRedirect("profile");
        }
    }
    
    private void updateProfile(HttpServletRequest request, HttpServletResponse response, User user) 
            throws ServletException, IOException {
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        
        try {
            // User bilgilerini güncelle
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setPhone(phone);
            user.setEmail(email);
            
            boolean userUpdated = userDAO.updateUser(user);
            
            // Customer bilgilerini güncelle
            Customer customer = customerDAO.getCustomerByUserId(user.getUserId());
            if (customer != null) {
                customer.setFirstName(firstName);
                customer.setLastName(lastName);
                boolean customerUpdated = customerDAO.updateCustomer(customer);
                
                if (userUpdated && customerUpdated) {
                    request.setAttribute("success", "Profil bilgileri başarıyla güncellendi.");
                } else {
                    request.setAttribute("error", "Profil güncellenirken hata oluştu.");
                }
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Profil güncellenirken hata oluştu.");
        }
        
        doGet(request, response);
    }
    
    private void updateAddress(HttpServletRequest request, HttpServletResponse response, User user) 
            throws ServletException, IOException {
        
        String cityId = request.getParameter("cityId");
        String districtId = request.getParameter("districtId");
        String neighborhoodId = request.getParameter("neighborhoodId");
        String fullAddress = request.getParameter("fullAddress");
        
        try {
            Address address = new Address();
            address.setCityId(Integer.parseInt(cityId));
            address.setDistrictId(Integer.parseInt(districtId));
            address.setNeighborhoodId(Integer.parseInt(neighborhoodId));
            address.setFullAddress(fullAddress);
            
            // Adresi kaydet veya güncelle
            Customer customer = customerDAO.getCustomerByUserId(user.getUserId());
            if (customer != null) {
                if (customer.getAddressId() > 0) {
                    // Mevcut adresi güncelle
                    address.setAddressId(customer.getAddressId());
                    boolean addressUpdated = addressDAO.updateAddress(address);
                    if (addressUpdated) {
                        request.setAttribute("success", "Adres bilgileri başarıyla güncellendi.");
                    } else {
                        request.setAttribute("error", "Adres güncellenirken hata oluştu.");
                    }
                } else {
                    // Yeni adres oluştur
                    int addressId = addressDAO.createAddress(address);
                    if (addressId > 0) {
                        customer.setAddressId(addressId);
                        boolean customerUpdated = customerDAO.updateCustomer(customer);
                        if (customerUpdated) {
                            request.setAttribute("success", "Adres bilgileri başarıyla kaydedildi.");
                        } else {
                            request.setAttribute("error", "Adres kaydedilirken hata oluştu.");
                        }
                    } else {
                        request.setAttribute("error", "Adres kaydedilirken hata oluştu.");
                    }
                }
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Adres güncellenirken hata oluştu.");
        }
        
        doGet(request, response);
    }
    
    // Helper methods for getting location data
    private List<City> getCities() {
        List<City> cities = new ArrayList<>();
        String sql = "SELECT * FROM Cities ORDER BY city_name";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                City city = new City();
                city.setCityId(rs.getInt("city_id"));
                city.setCityName(rs.getString("city_name"));
                cities.add(city);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cities;
    }
    
    private List<District> getDistrictsByCityId(int cityId) {
        List<District> districts = new ArrayList<>();
        String sql = "SELECT * FROM Districts WHERE city_id = ? ORDER BY district_name";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, cityId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                District district = new District();
                district.setDistrictId(rs.getInt("district_id"));
                district.setDistrictName(rs.getString("district_name"));
                district.setCityId(rs.getInt("city_id"));
                districts.add(district);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return districts;
    }
    
    private List<Neighborhood> getNeighborhoodsByDistrictId(int districtId) {
        List<Neighborhood> neighborhoods = new ArrayList<>();
        String sql = "SELECT * FROM Neighborhoods WHERE district_id = ? ORDER BY neighborhood_name";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, districtId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Neighborhood neighborhood = new Neighborhood();
                neighborhood.setNeighborhoodId(rs.getInt("neighborhood_id"));
                neighborhood.setNeighborhoodName(rs.getString("neighborhood_name"));
                neighborhood.setDistrictId(rs.getInt("district_id"));
                neighborhood.setPostalCode(rs.getInt("postal_code"));
                neighborhoods.add(neighborhood);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return neighborhoods;
    }
    
    private City getCityById(int cityId) {
        String sql = "SELECT * FROM Cities WHERE city_id = ?";
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
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    private District getDistrictById(int districtId) {
        String sql = "SELECT * FROM Districts WHERE district_id = ?";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, districtId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                District district = new District();
                district.setDistrictId(rs.getInt("district_id"));
                district.setDistrictName(rs.getString("district_name"));
                district.setCityId(rs.getInt("city_id"));
                return district;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    private Neighborhood getNeighborhoodById(int neighborhoodId) {
        String sql = "SELECT * FROM Neighborhoods WHERE neighborhood_id = ?";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, neighborhoodId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                Neighborhood neighborhood = new Neighborhood();
                neighborhood.setNeighborhoodId(rs.getInt("neighborhood_id"));
                neighborhood.setNeighborhoodName(rs.getString("neighborhood_name"));
                neighborhood.setDistrictId(rs.getInt("district_id"));
                neighborhood.setPostalCode(rs.getInt("postal_code"));
                return neighborhood;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
