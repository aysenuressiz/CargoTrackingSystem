package com.kargo.servlet;

import com.kargo.dao.CargoDAO;
import com.kargo.dao.UserDAO;
import com.kargo.dao.EmployeeDAO;
import com.kargo.dao.BranchDAO;
import com.kargo.model.Cargo;
import com.kargo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/dashboard")
public class AdminDashboardServlet extends HttpServlet {
    
    private CargoDAO cargoDAO = new CargoDAO();
    private UserDAO userDAO = new UserDAO();
    private EmployeeDAO employeeDAO = new EmployeeDAO();
    private BranchDAO branchDAO = new BranchDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        try {
            // Tüm kargoları al
            List<Cargo> allCargos = cargoDAO.getAllCargos();
            
            // İstatistikleri hesapla
            int totalCargos = allCargos.size();
            int deliveredCargos = (int) allCargos.stream()
                .filter(cargo -> "Teslim Edildi".equals(cargo.getCurrentStatus()))
                .count();
            int inTransitCargos = totalCargos - deliveredCargos;
            
            // Kullanıcı sayıları
            int totalUsers = userDAO.getAllUsers().size();
            int totalEmployees = employeeDAO.getAllEmployees().size();
            int totalBranches = branchDAO.getAllBranches().size();
            
            request.setAttribute("totalCargos", totalCargos);
            request.setAttribute("deliveredCargos", deliveredCargos);
            request.setAttribute("inTransitCargos", inTransitCargos);
            request.setAttribute("totalUsers", totalUsers);
            request.setAttribute("totalEmployees", totalEmployees);
            request.setAttribute("totalBranches", totalBranches);
            request.setAttribute("recentCargos", allCargos.subList(0, Math.min(10, allCargos.size())));
            
            request.getRequestDispatcher("/WEB-INF/jsp/admin/dashboard.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Dashboard yüklenirken hata oluştu: " + e.getMessage());
            request.getRequestDispatcher("/WEB-INF/jsp/admin/dashboard.jsp").forward(request, response);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        doGet(request, response);
    }
}
