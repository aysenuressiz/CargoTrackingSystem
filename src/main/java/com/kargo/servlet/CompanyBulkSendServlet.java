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

import com.kargo.dao.CargoDAO;
import com.kargo.dao.CompanyDAO;
import com.kargo.dao.UserDAO;
import com.kargo.model.Company;
import com.kargo.model.User;
import com.kargo.util.DatabaseUtil;

@WebServlet("/company/bulk-send")
public class CompanyBulkSendServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CargoDAO cargoDAO;
    private CompanyDAO companyDAO;
    private UserDAO userDAO;

    public void init() {
        cargoDAO = new CargoDAO();
        companyDAO = new CompanyDAO();
        userDAO = new UserDAO();
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
            request.setAttribute("company", company);

            // Get recent bulk shipments for this company
            List<BulkShipment> recentShipments = getRecentBulkShipments(user.getUserId());
            request.setAttribute("recentShipments", recentShipments);

            // Get monthly statistics
            MonthlyStats monthlyStats = getMonthlyStats(user.getUserId());
            request.setAttribute("monthlyStats", monthlyStats);

            request.getRequestDispatcher("/WEB-INF/jsp/company/bulk-send.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Sayfa yüklenirken hata oluştu: " + e.getMessage());
            request.getRequestDispatcher("/WEB-INF/jsp/company/bulk-send.jsp").forward(request, response);
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
            if ("createBulkShipment".equals(action)) {
                createBulkShipment(request, response, user);
            } else if ("generateReport".equals(action)) {
                generateReport(request, response, user);
            } else {
                doGet(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "İşlem sırasında hata oluştu: " + e.getMessage());
            doGet(request, response);
        }
    }

    private void createBulkShipment(HttpServletRequest request, HttpServletResponse response, User user) 
            throws ServletException, IOException {
        
        String receiverEmail = request.getParameter("receiverEmail");
        String receiverName = request.getParameter("receiverName");
        String receiverPhone = request.getParameter("receiverPhone");
        String contentDescription = request.getParameter("contentDescription");
        String weight = request.getParameter("weight");
        String quantity = request.getParameter("quantity");
        String specialInstructions = request.getParameter("specialInstructions");

        try {
            // Validate receiver email
            if (receiverEmail == null || receiverEmail.trim().isEmpty()) {
                request.setAttribute("error", "Alıcı e-posta adresi gereklidir.");
                doGet(request, response);
                return;
            }

            // Check if receiver exists, if not create a new user
            User receiver = userDAO.getUserByEmail(receiverEmail);
            if (receiver == null) {
                // Create new user for receiver
                receiver = new User();
                receiver.setUsername(receiverEmail.split("@")[0] + "_" + System.currentTimeMillis());
                receiver.setEmail(receiverEmail);
                receiver.setPhone(receiverPhone);
                receiver.setRoleId(2); // Customer role
                
                // Set receiver name if provided
                if (receiverName != null && !receiverName.trim().isEmpty()) {
                    receiver.setUsername(receiverName.replaceAll("\\s+", "_") + "_" + System.currentTimeMillis());
                }
                
                // Generate a temporary password
                String tempPassword = "TempPass" + System.currentTimeMillis();
                receiver.setPassword(tempPassword); // This should be hashed in production
                
                int receiverId = userDAO.createUserAndGetId(receiver);
                receiver.setUserId(receiverId);
            }

            // Create multiple cargos based on quantity
            int qty = Integer.parseInt(quantity);
            List<String> trackingNumbers = new ArrayList<>();
            
            for (int i = 0; i < qty; i++) {
                // Generate tracking number
                String trackingNo = cargoDAO.generateTrackingNumber();
                
                // Create cargo
                com.kargo.model.Cargo cargo = new com.kargo.model.Cargo();
                cargo.setTrackingNo(trackingNo);
                cargo.setSenderUserId(user.getUserId());
                cargo.setReceiverUserId(receiver.getUserId());
                cargo.setWeight(new java.math.BigDecimal(weight));
                cargo.setContentDescription(contentDescription + " (Paket " + (i+1) + "/" + qty + ")");
                
                cargoDAO.createCargo(cargo);
                trackingNumbers.add(trackingNo);
            }

            // Create bulk shipment record
            createBulkShipmentRecord(user.getUserId(), receiver.getUserId(), qty, 
                                   contentDescription, specialInstructions, trackingNumbers);

            request.setAttribute("success", qty + " adet kargo başarıyla oluşturuldu. " +
                               "Kargo numaraları: " + String.join(", ", trackingNumbers));
            
        } catch (Exception e) {
            request.setAttribute("error", "Toplu gönderim oluşturulurken hata oluştu: " + e.getMessage());
        }

        doGet(request, response);
    }

    private void generateReport(HttpServletRequest request, HttpServletResponse response, User user) 
            throws ServletException, IOException {
        
        String reportType = request.getParameter("reportType");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");

        try {
            // Generate report based on type
            if ("monthly".equals(reportType)) {
                generateMonthlyReport(request, response, user, startDate, endDate);
            } else if ("bulk".equals(reportType)) {
                generateBulkShipmentReport(request, response, user, startDate, endDate);
            } else {
                generateGeneralReport(request, response, user, startDate, endDate);
            }
        } catch (Exception e) {
            request.setAttribute("error", "Rapor oluşturulurken hata oluştu: " + e.getMessage());
            doGet(request, response);
        }
    }

    private void generateMonthlyReport(HttpServletRequest request, HttpServletResponse response, User user, 
                                     String startDate, String endDate) throws ServletException, IOException {
        
        try {
            // Get monthly cargo statistics
            MonthlyReport report = getMonthlyReport(user.getUserId(), startDate, endDate);
            request.setAttribute("monthlyReport", report);
            request.setAttribute("reportType", "monthly");
            
            request.getRequestDispatcher("/WEB-INF/jsp/company/report.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException("Aylık rapor oluşturulamadı", e);
        }
    }

    private void generateBulkShipmentReport(HttpServletRequest request, HttpServletResponse response, User user, 
                                          String startDate, String endDate) throws ServletException, IOException {
        
        try {
            // Get bulk shipment statistics
            List<BulkShipment> bulkShipments = getBulkShipmentsByDateRange(user.getUserId(), startDate, endDate);
            request.setAttribute("bulkShipments", bulkShipments);
            request.setAttribute("reportType", "bulk");
            
            request.getRequestDispatcher("/WEB-INF/jsp/company/report.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException("Toplu gönderim raporu oluşturulamadı", e);
        }
    }

    private void generateGeneralReport(HttpServletRequest request, HttpServletResponse response, User user, 
                                     String startDate, String endDate) throws ServletException, IOException {
        
        try {
            // Get general cargo statistics
            GeneralReport report = getGeneralReport(user.getUserId(), startDate, endDate);
            request.setAttribute("generalReport", report);
            request.setAttribute("reportType", "general");
            
            request.getRequestDispatcher("/WEB-INF/jsp/company/report.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException("Genel rapor oluşturulamadı", e);
        }
    }

    // Helper methods for database operations
    private List<BulkShipment> getRecentBulkShipments(int userId) {
        List<BulkShipment> shipments = new ArrayList<>();
        String sql = "SELECT bs.*, u.email as receiver_email, COUNT(c.cargo_id) as cargo_count " +
                    "FROM BulkShipments bs " +
                    "LEFT JOIN Users u ON bs.receiver_user_id = u.user_id " +
                    "LEFT JOIN Cargos c ON bs.shipment_id = c.bulk_shipment_id " +
                    "WHERE bs.sender_user_id = ? " +
                    "GROUP BY bs.shipment_id " +
                    "ORDER BY bs.created_at DESC " +
                    "LIMIT 10";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                BulkShipment shipment = new BulkShipment();
                shipment.setShipmentId(rs.getInt("shipment_id"));
                shipment.setSenderUserId(rs.getInt("sender_user_id"));
                shipment.setReceiverUserId(rs.getInt("receiver_user_id"));
                shipment.setQuantity(rs.getInt("quantity"));
                shipment.setContentDescription(rs.getString("content_description"));
                shipment.setSpecialInstructions(rs.getString("special_instructions"));
                shipment.setReceiverEmail(rs.getString("receiver_email"));
                shipment.setCargoCount(rs.getInt("cargo_count"));
                shipment.setCreatedAt(rs.getTimestamp("created_at"));
                shipments.add(shipment);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return shipments;
    }

    private MonthlyStats getMonthlyStats(int userId) {
        MonthlyStats stats = new MonthlyStats();
        String sql = "SELECT " +
                    "COUNT(*) as total_cargos, " +
                    "SUM(CASE WHEN cs.status_type_id = 5 THEN 1 ELSE 0 END) as delivered, " +
                    "SUM(c.weight) as total_weight, " +
                    "AVG(DATEDIFF(cs.update_date, c.shipping_date)) as avg_delivery_days " +
                    "FROM Cargos c " +
                    "LEFT JOIN CargoStatuses cs ON c.cargo_id = cs.cargo_id " +
                    "WHERE c.sender_user_id = ? " +
                    "AND MONTH(c.shipping_date) = MONTH(CURRENT_DATE()) " +
                    "AND YEAR(c.shipping_date) = YEAR(CURRENT_DATE())";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                stats.setTotalCargos(rs.getInt("total_cargos"));
                stats.setDeliveredCargos(rs.getInt("delivered"));
                stats.setTotalWeight(rs.getDouble("total_weight"));
                stats.setAverageDeliveryDays(rs.getDouble("avg_delivery_days"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stats;
    }

    private void createBulkShipmentRecord(int senderUserId, int receiverUserId, int quantity, 
                                        String contentDescription, String specialInstructions, 
                                        List<String> trackingNumbers) {
        String sql = "INSERT INTO BulkShipments (sender_user_id, receiver_user_id, quantity, " +
                    "content_description, special_instructions, tracking_numbers, created_at) " +
                    "VALUES (?, ?, ?, ?, ?, ?, NOW())";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, senderUserId);
            stmt.setInt(2, receiverUserId);
            stmt.setInt(3, quantity);
            stmt.setString(4, contentDescription);
            stmt.setString(5, specialInstructions);
            stmt.setString(6, String.join(",", trackingNumbers));
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Inner classes for data transfer
    public static class BulkShipment {
        private int shipmentId;
        private int senderUserId;
        private int receiverUserId;
        private int quantity;
        private String contentDescription;
        private String specialInstructions;
        private String receiverEmail;
        private int cargoCount;
        private java.sql.Timestamp createdAt;

        // Getters and setters
        public int getShipmentId() { return shipmentId; }
        public void setShipmentId(int shipmentId) { this.shipmentId = shipmentId; }
        public int getSenderUserId() { return senderUserId; }
        public void setSenderUserId(int senderUserId) { this.senderUserId = senderUserId; }
        public int getReceiverUserId() { return receiverUserId; }
        public void setReceiverUserId(int receiverUserId) { this.receiverUserId = receiverUserId; }
        public int getQuantity() { return quantity; }
        public void setQuantity(int quantity) { this.quantity = quantity; }
        public String getContentDescription() { return contentDescription; }
        public void setContentDescription(String contentDescription) { this.contentDescription = contentDescription; }
        public String getSpecialInstructions() { return specialInstructions; }
        public void setSpecialInstructions(String specialInstructions) { this.specialInstructions = specialInstructions; }
        public String getReceiverEmail() { return receiverEmail; }
        public void setReceiverEmail(String receiverEmail) { this.receiverEmail = receiverEmail; }
        public int getCargoCount() { return cargoCount; }
        public void setCargoCount(int cargoCount) { this.cargoCount = cargoCount; }
        public java.sql.Timestamp getCreatedAt() { return createdAt; }
        public void setCreatedAt(java.sql.Timestamp createdAt) { this.createdAt = createdAt; }
    }

    public static class MonthlyStats {
        private int totalCargos;
        private int deliveredCargos;
        private double totalWeight;
        private double averageDeliveryDays;

        // Getters and setters
        public int getTotalCargos() { return totalCargos; }
        public void setTotalCargos(int totalCargos) { this.totalCargos = totalCargos; }
        public int getDeliveredCargos() { return deliveredCargos; }
        public void setDeliveredCargos(int deliveredCargos) { this.deliveredCargos = deliveredCargos; }
        public double getTotalWeight() { return totalWeight; }
        public void setTotalWeight(double totalWeight) { this.totalWeight = totalWeight; }
        public double getAverageDeliveryDays() { return averageDeliveryDays; }
        public void setAverageDeliveryDays(double averageDeliveryDays) { this.averageDeliveryDays = averageDeliveryDays; }
    }

    public static class MonthlyReport {
        private int totalShipments;
        private int totalCargos;
        private double totalWeight;
        private double totalCost;
        private double averageDeliveryTime;

        // Getters and setters
        public int getTotalShipments() { return totalShipments; }
        public void setTotalShipments(int totalShipments) { this.totalShipments = totalShipments; }
        public int getTotalCargos() { return totalCargos; }
        public void setTotalCargos(int totalCargos) { this.totalCargos = totalCargos; }
        public double getTotalWeight() { return totalWeight; }
        public void setTotalWeight(double totalWeight) { this.totalWeight = totalWeight; }
        public double getTotalCost() { return totalCost; }
        public void setTotalCost(double totalCost) { this.totalCost = totalCost; }
        public double getAverageDeliveryTime() { return averageDeliveryTime; }
        public void setAverageDeliveryTime(double averageDeliveryTime) { this.averageDeliveryTime = averageDeliveryTime; }
    }

    public static class GeneralReport {
        private int totalCargos;
        private int deliveredCargos;
        private int inTransitCargos;
        private int cancelledCargos;
        private double successRate;

        // Getters and setters
        public int getTotalCargos() { return totalCargos; }
        public void setTotalCargos(int totalCargos) { this.totalCargos = totalCargos; }
        public int getDeliveredCargos() { return deliveredCargos; }
        public void setDeliveredCargos(int deliveredCargos) { this.deliveredCargos = deliveredCargos; }
        public int getInTransitCargos() { return inTransitCargos; }
        public void setInTransitCargos(int inTransitCargos) { this.inTransitCargos = inTransitCargos; }
        public int getCancelledCargos() { return cancelledCargos; }
        public void setCancelledCargos(int cancelledCargos) { this.cancelledCargos = cancelledCargos; }
        public double getSuccessRate() { return successRate; }
        public void setSuccessRate(double successRate) { this.successRate = successRate; }
    }

    // Additional helper methods for reports
    private MonthlyReport getMonthlyReport(int userId, String startDate, String endDate) {
        // Implementation for monthly report
        MonthlyReport report = new MonthlyReport();
        // Add database query logic here
        return report;
    }

    private List<BulkShipment> getBulkShipmentsByDateRange(int userId, String startDate, String endDate) {
        // Implementation for bulk shipment report
        return new ArrayList<>();
    }

    private GeneralReport getGeneralReport(int userId, String startDate, String endDate) {
        // Implementation for general report
        GeneralReport report = new GeneralReport();
        // Add database query logic here
        return report;
    }
}
