package com.kargo.servlet;

import com.kargo.dao.BranchDAO;
import com.kargo.model.Branch;
import com.kargo.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/branch/*")
public class BranchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BranchDAO branchDAO;
    
    @Override
    public void init() throws ServletException {
        branchDAO = new BranchDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User currentUser = (User) session.getAttribute("user");
        
        // Sadece admin ve genel müdür şube yönetimi yapabilir
        if (currentUser == null || (currentUser.getRoleId() != 1 && currentUser.getRoleId() != 2)) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        String action = getAction(request);
        
        switch (action) {
            case "dashboard":
                showBranchDashboard(request, response);
                break;
            case "list":
                listBranches(request, response);
                break;
            case "add":
                showAddBranchForm(request, response);
                break;
            default:
                showBranchDashboard(request, response);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String action = getAction(request);
        
        switch (action) {
            case "add":
                addBranch(request, response);
                break;
            case "delete":
                deleteBranch(request, response);
                break;
            default:
                response.sendRedirect(request.getContextPath() + "/branch/dashboard");
        }
    }
    
    private String getAction(HttpServletRequest request) {
        String pathInfo = request.getPathInfo();
        if (pathInfo == null || pathInfo.equals("/")) {
            return "dashboard";
        }
        return pathInfo.substring(1);
    }
    
    private void showBranchDashboard(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        List<Branch> branches = branchDAO.getAllBranches();
        request.setAttribute("branches", branches);
        request.getRequestDispatcher("/WEB-INF/jsp/branch/dashboard.jsp").forward(request, response);
    }
    
    private void listBranches(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        List<Branch> branches = branchDAO.getAllBranches();
        request.setAttribute("branches", branches);
        request.getRequestDispatcher("/WEB-INF/jsp/branch/list.jsp").forward(request, response);
    }
    
    private void showAddBranchForm(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/branch/add.jsp").forward(request, response);
    }
    
    private void addBranch(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        try {
            String branchName = request.getParameter("branchName");
            String address = request.getParameter("address");
            
            Branch branch = new Branch();
            branch.setBranchName(branchName);
            branch.setAddressId(1); // Varsayılan adres, gerçekte adres ekleme işlemi olmalı
            
            if (branchDAO.createBranch(branch)) {
                response.sendRedirect(request.getContextPath() + "/branch/dashboard?success=1");
            } else {
                request.setAttribute("error", "Şube eklenemedi.");
                showAddBranchForm(request, response);
            }
            
        } catch (Exception e) {
            request.setAttribute("error", "Bir hata oluştu: " + e.getMessage());
            showAddBranchForm(request, response);
        }
    }
    
    private void deleteBranch(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        try {
            int branchId = Integer.parseInt(request.getParameter("id"));
            
            if (branchDAO.deleteBranch(branchId)) {
                response.sendRedirect(request.getContextPath() + "/branch/dashboard?deleted=1");
            } else {
                response.sendRedirect(request.getContextPath() + "/branch/dashboard?error=1");
            }
            
        } catch (Exception e) {
            response.sendRedirect(request.getContextPath() + "/branch/dashboard?error=1");
        }
    }
}