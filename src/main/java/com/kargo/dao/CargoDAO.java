package com.kargo.dao;

import com.kargo.model.Cargo;
import com.kargo.model.CargoStatus;
import com.kargo.util.DatabaseUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CargoDAO {
    
    public Cargo getCargoById(int cargoId) {
        String sql = "SELECT c.*, " +
                    "sender.username as sender_name, receiver.username as receiver_name, " +
                    "sender_addr.full_address as sender_address, receiver_addr.full_address as receiver_address, " +
                    "cs.status_name as current_status " +
                    "FROM Cargos c " +
                    "LEFT JOIN Users sender ON c.sender_user_id = sender.user_id " +
                    "LEFT JOIN Users receiver ON c.receiver_user_id = receiver.user_id " +
                    "LEFT JOIN Addresses sender_addr ON sender.user_id = sender_addr.user_id " +
                    "LEFT JOIN Addresses receiver_addr ON receiver.user_id = receiver_addr.user_id " +
                    "LEFT JOIN CargoStatuses cs_latest ON c.cargo_id = cs_latest.cargo_id " +
                    "LEFT JOIN Statuses cs ON cs_latest.status_id = cs.status_id " +
                    "WHERE c.cargo_id = ? " +
                    "AND cs_latest.update_date = (SELECT MAX(update_date) FROM CargoStatuses WHERE cargo_id = c.cargo_id)";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, cargoId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                return mapResultSetToCargo(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public Cargo getCargoByTrackingNo(String trackingNo) {
        String sql = "SELECT c.*, " +
                    "sender.username as sender_name, receiver.username as receiver_name, " +
                    "sender_addr.full_address as sender_address, receiver_addr.full_address as receiver_address, " +
                    "cs.status_name as current_status " +
                    "FROM Cargos c " +
                    "LEFT JOIN Users sender ON c.sender_user_id = sender.user_id " +
                    "LEFT JOIN Users receiver ON c.receiver_user_id = receiver.user_id " +
                    "LEFT JOIN Addresses sender_addr ON sender.user_id = sender_addr.user_id " +
                    "LEFT JOIN Addresses receiver_addr ON receiver.user_id = receiver_addr.user_id " +
                    "LEFT JOIN CargoStatuses cs_latest ON c.cargo_id = cs_latest.cargo_id " +
                    "LEFT JOIN Statuses cs ON cs_latest.status_id = cs.status_id " +
                    "WHERE c.tracking_no = ? " +
                    "AND cs_latest.update_date = (SELECT MAX(update_date) FROM CargoStatuses WHERE cargo_id = c.cargo_id)";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, trackingNo);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                return mapResultSetToCargo(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public List<CargoStatus> getCargoStatusHistory(int cargoId) {
        List<CargoStatus> statusHistory = new ArrayList<>();
        String sql = "SELECT cs.*, s.status_name, u.username as updated_by_name " +
                    "FROM CargoStatuses cs " +
                    "JOIN Statuses s ON cs.status_id = s.status_id " +
                    "LEFT JOIN Users u ON cs.updated_by_id = u.user_id " +
                    "WHERE cs.cargo_id = ? " +
                    "ORDER BY cs.update_date DESC";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, cargoId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                CargoStatus status = new CargoStatus();
                status.setStatusId(rs.getInt("status_id"));
                status.setCargoId(rs.getInt("cargo_id"));
                status.setStatusId(rs.getInt("status_id"));
                status.setUpdatedById(rs.getInt("update_by_id"));
                status.setUpdatedDate(rs.getTimestamp("update_date"));
                status.setStatusName(rs.getString("status_name"));
                status.setUpdatedByName(rs.getString("updated_by_name"));
                statusHistory.add(status);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return statusHistory;
    }
    
    public boolean createCargo(Cargo cargo) {
        String sql = "INSERT INTO Cargos (tracking_no, sender_user_id, receiver_user_id, weight, desi, content_description, shipping_date) " +
                    "VALUES (?, ?, ?, ?, ?, ?, NOW())";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            
            stmt.setString(1, cargo.getTrackingNo());
            stmt.setInt(2, cargo.getSenderUserId());
            stmt.setInt(3, cargo.getReceiverUserId());
            stmt.setBigDecimal(4, cargo.getWeight());
            stmt.setString(5, cargo.getDescription());
            stmt.setString(6, cargo.getContentDescription());
            
            int result = stmt.executeUpdate();
            if (result > 0) {
                ResultSet generatedKeys = stmt.getGeneratedKeys();
                if (generatedKeys.next()) {
                    cargo.setCargoId(generatedKeys.getInt(1));
                    // İlk durum olarak "Kargo Alındı" ekle
                    addCargoStatus(cargo.getCargoId(), 1, 1); // status_id: 1 = Kargo Alındı, updated_by: 1 = sistem
                    return true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    

    
    public List<Cargo> getCargosByUserId(int userId) {
        List<Cargo> cargos = new ArrayList<>();
        String sql = "SELECT c.*, " +
                    "sender.username as sender_name, receiver.username as receiver_name, " +
                    "cs.status_name as current_status " +
                    "FROM Cargos c " +
                    "LEFT JOIN Users sender ON c.sender_user_id = sender.user_id " +
                    "LEFT JOIN Users receiver ON c.receiver_user_id = receiver.user_id " +
                    "LEFT JOIN CargoStatuses cs_latest ON c.cargo_id = cs_latest.cargo_id " +
                    "LEFT JOIN Statuses cs ON cs_latest.status_id = cs.status_id " +
                    "WHERE (c.sender_user_id = ? OR c.receiver_user_id = ?) " +
                    "AND cs_latest.update_date = (SELECT MAX(update_date) FROM CargoStatuses WHERE cargo_id = c.cargo_id) " +
                    "ORDER BY c.shipping_date DESC";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, userId);
            stmt.setInt(2, userId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Cargo cargo = new Cargo();
                cargo.setCargoId(rs.getInt("cargo_id"));
                cargo.setTrackingNo(rs.getString("tracking_no"));
                cargo.setSenderUserId(rs.getInt("sender_user_id"));
                cargo.setReceiverUserId(rs.getInt("receiver_user_id"));
                cargo.setWeight(rs.getBigDecimal("weight"));
                cargo.setDescription(rs.getString("desi"));
                cargo.setContentDescription(rs.getString("content_description"));
                cargo.setShippingDate(rs.getTimestamp("shipping_date"));
                cargo.setDeliveryDate(rs.getTimestamp("delivery_date"));
                cargo.setSenderName(rs.getString("sender_name"));
                cargo.setReceiverName(rs.getString("receiver_name"));
                cargo.setCurrentStatus(rs.getString("current_status"));
                cargos.add(cargo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cargos;
    }
    
    public List<Cargo> getAllCargos() {
        List<Cargo> cargos = new ArrayList<>();
        String sql = "SELECT c.*, " +
                    "sender.username as sender_name, receiver.username as receiver_name, " +
                    "cs.status_name as current_status " +
                    "FROM Cargos c " +
                    "LEFT JOIN Users sender ON c.sender_user_id = sender.user_id " +
                    "LEFT JOIN Users receiver ON c.receiver_user_id = receiver.user_id " +
                    "LEFT JOIN CargoStatuses cs_latest ON c.cargo_id = cs_latest.cargo_id " +
                    "LEFT JOIN Statuses cs ON cs_latest.status_id = cs.status_id " +
                    "WHERE cs_latest.update_date = (SELECT MAX(update_date) FROM CargoStatuses WHERE cargo_id = c.cargo_id) " +
                    "ORDER BY c.shipping_date DESC";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                Cargo cargo = new Cargo();
                cargo.setCargoId(rs.getInt("cargo_id"));
                cargo.setTrackingNo(rs.getString("tracking_no"));
                cargo.setSenderUserId(rs.getInt("sender_user_id"));
                cargo.setReceiverUserId(rs.getInt("receiver_user_id"));
                cargo.setWeight(rs.getBigDecimal("weight"));
                cargo.setDescription(rs.getString("desi"));
                cargo.setContentDescription(rs.getString("content_description"));
                cargo.setShippingDate(rs.getTimestamp("shipping_date"));
                cargo.setDeliveryDate(rs.getTimestamp("delivery_date"));
                cargo.setSenderName(rs.getString("sender_name"));
                cargo.setReceiverName(rs.getString("receiver_name"));
                cargo.setCurrentStatus(rs.getString("current_status"));
                cargos.add(cargo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cargos;
    }
    
    public String generateTrackingNumber() {
        String prefix = "KT";
        
        // Son kargo numarasını al ve +1 yap
        String sql = "SELECT MAX(CAST(SUBSTRING(tracking_no, 3) AS UNSIGNED)) as max_num FROM Cargos WHERE tracking_no LIKE 'KT%'";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            
            if (rs.next()) {
                long maxNum = rs.getLong("max_num");
                return prefix + String.format("%010d", maxNum + 1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        // Eğer hiç kargo yoksa varsayılan numara döndür
        return prefix + "0000000001";
    }

    public List<Cargo> getCargosBySenderUserId(int senderUserId) {
        List<Cargo> cargos = new ArrayList<>();
        String sql = "SELECT c.*, " +
                    "sender.username as sender_name, receiver.username as receiver_name, " +
                    "cs.status_name as current_status " +
                    "FROM Cargos c " +
                    "LEFT JOIN Users sender ON c.sender_user_id = sender.user_id " +
                    "LEFT JOIN Users receiver ON c.receiver_user_id = receiver.user_id " +
                    "LEFT JOIN CargoStatuses cs_latest ON c.cargo_id = cs_latest.cargo_id " +
                    "LEFT JOIN Statuses cs ON cs_latest.status_type_id = cs.status_type_id " +
                    "WHERE c.sender_user_id = ? " +
                    "AND cs_latest.update_date = (SELECT MAX(update_date) FROM CargoStatuses WHERE cargo_id = c.cargo_id) " +
                    "ORDER BY c.shipping_date DESC";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, senderUserId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Cargo cargo = mapResultSetToCargo(rs);
                cargos.add(cargo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cargos;
    }
    
    public List<Cargo> getCargosByReceiverUserId(int receiverUserId) {
        List<Cargo> cargos = new ArrayList<>();
        String sql = "SELECT c.*, " +
                    "sender.username as sender_name, receiver.username as receiver_name, " +
                    "cs.status_name as current_status " +
                    "FROM Cargos c " +
                    "LEFT JOIN Users sender ON c.sender_user_id = sender.user_id " +
                    "LEFT JOIN Users receiver ON c.receiver_user_id = receiver.user_id " +
                    "LEFT JOIN CargoStatuses cs_latest ON c.cargo_id = cs_latest.cargo_id " +
                    "LEFT JOIN Statuses cs ON cs_latest.status_type_id = cs.status_type_id " +
                    "WHERE c.receiver_user_id = ? " +
                    "AND cs_latest.update_date = (SELECT MAX(update_date) FROM CargoStatuses WHERE cargo_id = c.cargo_id) " +
                    "ORDER BY c.shipping_date DESC";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, receiverUserId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Cargo cargo = mapResultSetToCargo(rs);
                cargos.add(cargo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cargos;
    }
    
    public List<Cargo> getActiveCargosByUserId(int userId) {
        List<Cargo> cargos = new ArrayList<>();
        String sql = "SELECT c.*, " +
                    "sender.username as sender_name, receiver.username as receiver_name, " +
                    "cs.status_name as current_status " +
                    "FROM Cargos c " +
                    "LEFT JOIN Users sender ON c.sender_user_id = sender.user_id " +
                    "LEFT JOIN Users receiver ON c.receiver_user_id = receiver.user_id " +
                    "LEFT JOIN CargoStatuses cs_latest ON c.cargo_id = cs_latest.cargo_id " +
                    "LEFT JOIN Statuses cs ON cs_latest.status_type_id = cs.status_type_id " +
                    "WHERE (c.sender_user_id = ? OR c.receiver_user_id = ?) " +
                    "AND cs_latest.update_date = (SELECT MAX(update_date) FROM CargoStatuses WHERE cargo_id = c.cargo_id) " +
                    "AND cs.status_name NOT IN ('Teslim Edildi', 'İptal Edildi', 'İade Edildi') " +
                    "ORDER BY c.shipping_date DESC";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, userId);
            stmt.setInt(2, userId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Cargo cargo = mapResultSetToCargo(rs);
                cargos.add(cargo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cargos;
    }
    
    public List<Cargo> getCancelledCargosByUserId(int userId) {
        List<Cargo> cargos = new ArrayList<>();
        String sql = "SELECT c.*, " +
                    "sender.username as sender_name, receiver.username as receiver_name, " +
                    "cs.status_name as current_status " +
                    "FROM Cargos c " +
                    "LEFT JOIN Users sender ON c.sender_user_id = sender.user_id " +
                    "LEFT JOIN Users receiver ON c.receiver_user_id = receiver.user_id " +
                    "LEFT JOIN CargoStatuses cs_latest ON c.cargo_id = cs_latest.cargo_id " +
                    "LEFT JOIN Statuses cs ON cs_latest.status_type_id = cs.status_type_id " +
                    "WHERE (c.sender_user_id = ? OR c.receiver_user_id = ?) " +
                    "AND cs_latest.update_date = (SELECT MAX(update_date) FROM CargoStatuses WHERE cargo_id = c.cargo_id) " +
                    "AND cs.status_name = 'İptal Edildi' " +
                    "ORDER BY c.shipping_date DESC";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, userId);
            stmt.setInt(2, userId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Cargo cargo = mapResultSetToCargo(rs);
                cargos.add(cargo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cargos;
    }
    
    public List<Cargo> getCompletedCargosByUserId(int userId) {
        List<Cargo> cargos = new ArrayList<>();
        String sql = "SELECT c.*, " +
                    "sender.username as sender_name, receiver.username as receiver_name, " +
                    "sender_addr.full_address as sender_address, receiver_addr.full_address as receiver_address, " +
                    "cs.status_name as current_status " +
                    "FROM Cargos c " +
                    "LEFT JOIN Users sender ON c.sender_user_id = sender.user_id " +
                    "LEFT JOIN Users receiver ON c.receiver_user_id = receiver.user_id " +
                    "LEFT JOIN Addresses sender_addr ON sender.user_id = sender_addr.user_id " +
                    "LEFT JOIN Addresses receiver_addr ON receiver.user_id = receiver_addr.user_id " +
                    "LEFT JOIN CargoStatuses cs_latest ON c.cargo_id = cs_latest.cargo_id " +
                    "LEFT JOIN Statuses cs ON cs_latest.status_type_id = cs.status_type_id " +
                    "WHERE (c.sender_user_id = ? OR c.receiver_user_id = ?) " +
                    "AND cs_latest.status_type_id = 5 " + // Teslim edildi
                    "AND cs_latest.update_date = (SELECT MAX(update_date) FROM CargoStatuses WHERE cargo_id = c.cargo_id) " +
                    "ORDER BY c.shipping_date DESC";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, userId);
            stmt.setInt(2, userId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                cargos.add(mapResultSetToCargo(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cargos;
    }
    
    // Pozisyon bazlı kargo listesi metodları
    public List<Cargo> getCargosByBranch(int branchId) {
        List<Cargo> cargos = new ArrayList<>();
        String sql = "SELECT c.*, " +
                    "sender.username as sender_name, receiver.username as receiver_name, " +
                    "sender_addr.full_address as sender_address, receiver_addr.full_address as receiver_address, " +
                    "cs.status_name as current_status " +
                    "FROM Cargos c " +
                    "LEFT JOIN Users sender ON c.sender_user_id = sender.user_id " +
                    "LEFT JOIN Users receiver ON c.receiver_user_id = receiver.user_id " +
                    "LEFT JOIN Addresses sender_addr ON sender.user_id = sender_addr.user_id " +
                    "LEFT JOIN Addresses receiver_addr ON receiver.user_id = receiver_addr.user_id " +
                    "LEFT JOIN CargoStatuses cs_latest ON c.cargo_id = cs_latest.cargo_id " +
                    "LEFT JOIN Statuses cs ON cs_latest.status_type_id = cs.status_type_id " +
                    "WHERE c.sender_user_id IN (SELECT user_id FROM Employees WHERE branch_id = ?) " +
                    "AND cs_latest.update_date = (SELECT MAX(update_date) FROM CargoStatuses WHERE cargo_id = c.cargo_id) " +
                    "ORDER BY c.shipping_date DESC";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, branchId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                cargos.add(mapResultSetToCargo(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cargos;
    }
    

    
    public List<Cargo> getCargosByCourier(int userId) {
        // Kurye için kendisine atanan kargolar (basit sistem)
        List<Cargo> cargos = new ArrayList<>();
        String sql = "SELECT c.*, " +
                    "sender.username as sender_name, receiver.username as receiver_name, " +
                    "sender_addr.full_address as sender_address, receiver_addr.full_address as receiver_address, " +
                    "cs.status_name as current_status " +
                    "FROM Cargos c " +
                    "LEFT JOIN Users sender ON c.sender_user_id = sender.user_id " +
                    "LEFT JOIN Users receiver ON c.receiver_user_id = receiver.user_id " +
                    "LEFT JOIN Addresses sender_addr ON sender.user_id = sender_addr.user_id " +
                    "LEFT JOIN Addresses receiver_addr ON receiver.user_id = receiver_addr.user_id " +
                    "LEFT JOIN CargoStatuses cs_latest ON c.cargo_id = cs_latest.cargo_id " +
                    "LEFT JOIN Statuses cs ON cs_latest.status_type_id = cs.status_type_id " +
                    "WHERE c.courier_user_id = ? " +
                    "AND cs_latest.update_date = (SELECT MAX(update_date) FROM CargoStatuses WHERE cargo_id = c.cargo_id) " +
                    "ORDER BY c.shipping_date DESC";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                cargos.add(mapResultSetToCargo(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cargos;
    }
    
    public boolean addCargoStatus(CargoStatus cargoStatus) {
        String sql = "INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (?, ?, ?, ?)";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, cargoStatus.getCargoId());
            stmt.setInt(2, cargoStatus.getStatusTypeId());
            stmt.setInt(3, cargoStatus.getUpdatedById());
            stmt.setTimestamp(4, cargoStatus.getUpdatedDate());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean addCargoStatus(int cargoId, int statusTypeId, int updatedById) {
        String sql = "INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (?, ?, ?, NOW())";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, cargoId);
            stmt.setInt(2, statusTypeId);
            stmt.setInt(3, updatedById);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean assignCourierToCargo(int cargoId, int courierUserId) {
        String sql = "UPDATE Cargos SET courier_user_id = ? WHERE cargo_id = ?";
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, courierUserId);
            stmt.setInt(2, cargoId);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    private Cargo mapResultSetToCargo(ResultSet rs) throws SQLException {
        Cargo cargo = new Cargo();
        cargo.setCargoId(rs.getInt("cargo_id"));
        cargo.setTrackingNo(rs.getString("tracking_no"));
        cargo.setSenderUserId(rs.getInt("sender_user_id"));
        cargo.setReceiverUserId(rs.getInt("receiver_user_id"));
        cargo.setWeight(rs.getBigDecimal("weight"));
        cargo.setDescription(rs.getString("desi"));
        cargo.setContentDescription(rs.getString("content_description"));
        cargo.setShippingDate(rs.getTimestamp("shipping_date"));
        cargo.setDeliveryDate(rs.getTimestamp("delivery_date"));
        cargo.setSenderName(rs.getString("sender_name"));
        cargo.setReceiverName(rs.getString("receiver_name"));
        cargo.setSenderAddress(rs.getString("sender_address"));
        cargo.setReceiverAddress(rs.getString("receiver_address"));
        cargo.setCurrentStatus(rs.getString("current_status"));
        
        // Kurye atama alanı (nullable)
        try {
            int courierUserId = rs.getInt("courier_user_id");
            if (!rs.wasNull()) {
                cargo.setCourierUserId(courierUserId);
            }
        } catch (SQLException e) {
            // Alan yoksa null olarak kalır
        }
        
        return cargo;
    }
    
    public List<Cargo> getCargosByEmployeeId(int employeeId) {
        List<Cargo> cargos = new ArrayList<>();
        String sql = "SELECT c.*, " +
                    "sender.username as sender_name, receiver.username as receiver_name, " +
                    "sender_addr.full_address as sender_address, receiver_addr.full_address as receiver_address, " +
                    "cs.status_name as current_status " +
                    "FROM Cargos c " +
                    "LEFT JOIN Users sender ON c.sender_user_id = sender.user_id " +
                    "LEFT JOIN Users receiver ON c.receiver_user_id = receiver.user_id " +
                    "LEFT JOIN Addresses sender_addr ON sender.user_id = sender_addr.user_id " +
                    "LEFT JOIN Addresses receiver_addr ON receiver.user_id = receiver_addr.user_id " +
                    "LEFT JOIN CargoStatuses cs_latest ON c.cargo_id = cs_latest.cargo_id " +
                    "LEFT JOIN Statuses cs ON cs_latest.status_id = cs.status_id " +
                    "WHERE cs_latest.updated_by_id = ? " +
                    "AND cs_latest.update_date = (SELECT MAX(update_date) FROM CargoStatuses WHERE cargo_id = c.cargo_id) " +
                    "ORDER BY c.shipping_date DESC";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, employeeId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                cargos.add(mapResultSetToCargo(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cargos;
    }
}