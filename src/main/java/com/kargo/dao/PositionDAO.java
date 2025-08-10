package com.kargo.dao;

import com.kargo.model.Position;
import com.kargo.util.DatabaseUtil;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PositionDAO {
    
    public List<Position> getAllPositions() {
        List<Position> positions = new ArrayList<>();
        String sql = "SELECT * FROM Positions ORDER BY position_name";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                Position position = new Position();
                position.setPositionId(rs.getInt("position_id"));
                position.setPositionName(rs.getString("position_name"));
                positions.add(position);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return positions;
    }
    
    public Position getPositionById(int positionId) {
        String sql = "SELECT * FROM Positions WHERE position_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, positionId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                Position position = new Position();
                position.setPositionId(rs.getInt("position_id"));
                position.setPositionName(rs.getString("position_name"));
                return position;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
