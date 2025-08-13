package com.kargo.servlet;

import com.kargo.model.District;
import com.kargo.model.Neighborhood;
import com.kargo.util.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/location/*")
public class LocationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String pathInfo = request.getPathInfo();
        if (pathInfo == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            return;
        }
        
        String[] pathParts = pathInfo.split("/");
        if (pathParts.length < 2) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            return;
        }
        
        String action = pathParts[1];
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        
        try {
            switch (action) {
                case "districts":
                    if (pathParts.length >= 3) {
                        int cityId = Integer.parseInt(pathParts[2]);
                        List<District> districts = getDistrictsByCityId(cityId);
                        String json = convertDistrictsToJson(districts);
                        response.getWriter().write(json);
                    } else {
                        response.sendError(HttpServletResponse.SC_BAD_REQUEST);
                    }
                    break;
                    
                case "neighborhoods":
                    if (pathParts.length >= 3) {
                        int districtId = Integer.parseInt(pathParts[2]);
                        List<Neighborhood> neighborhoods = getNeighborhoodsByDistrictId(districtId);
                        String json = convertNeighborhoodsToJson(neighborhoods);
                        response.getWriter().write(json);
                    } else {
                        response.sendError(HttpServletResponse.SC_BAD_REQUEST);
                    }
                    break;
                    
                default:
                    response.sendError(HttpServletResponse.SC_NOT_FOUND);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
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
    
    private String convertDistrictsToJson(List<District> districts) {
        StringBuilder json = new StringBuilder("[");
        for (int i = 0; i < districts.size(); i++) {
            District district = districts.get(i);
            json.append("{");
            json.append("\"districtId\":").append(district.getDistrictId()).append(",");
            json.append("\"districtName\":\"").append(district.getDistrictName()).append("\"");
            json.append("}");
            if (i < districts.size() - 1) {
                json.append(",");
            }
        }
        json.append("]");
        return json.toString();
    }
    
    private String convertNeighborhoodsToJson(List<Neighborhood> neighborhoods) {
        StringBuilder json = new StringBuilder("[");
        for (int i = 0; i < neighborhoods.size(); i++) {
            Neighborhood neighborhood = neighborhoods.get(i);
            json.append("{");
            json.append("\"neighborhoodId\":").append(neighborhood.getNeighborhoodId()).append(",");
            json.append("\"neighborhoodName\":\"").append(neighborhood.getNeighborhoodName()).append("\",");
            json.append("\"postalCode\":").append(neighborhood.getPostalCode());
            json.append("}");
            if (i < neighborhoods.size() - 1) {
                json.append(",");
            }
        }
        json.append("]");
        return json.toString();
    }
}
