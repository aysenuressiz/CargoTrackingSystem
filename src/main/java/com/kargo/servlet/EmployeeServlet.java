package com.kargo.servlet;

import com.kargo.dao.EmployeeDAO;
import com.kargo.dao.UserDAO;
import com.kargo.dao.BranchDAO;
import com.kargo.model.Employee;
import com.kargo.model.User;
import com.kargo.model.Branch;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/employee/*")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeDAO employeeDAO;
    private UserDAO userDAO;
    private BranchDAO branchDAO;
    
    @Override
    public void init() throws ServletException {
        employeeDAO = new EmployeeDAO();
        userDAO = new UserDAO();
        branchDAO = new BranchDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User currentUser = (User) session.getAttribute("user");
        
        // Sadece admin ve genel müdür çalışan yönetimi yapabilir
        if (currentUser == null || (currentUser.getRoleId() != 1 && currentUser.getRoleId() != 2)) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        String action = getAction(request);
        
        switch (action) {
            case "dashboard":
                showEmployeeDashboard(request, response);
                break;
            case "list":
                listEmployees(request, response);
                break;
            case "add":
                showAddEmployeeForm(request, response);
                break;
            case "edit":
                showEditEmployeeForm(request, response);
                break;
            default:
                showEmployeeDashboard(request, response);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String action = getAction(request);
        
        switch (action) {
            case "add":
                addEmployee(request, response);
                break;
            case "update":
                updateEmployee(request, response);
                break;
            case "delete":
                deleteEmployee(request, response);
                break;
            default:
                response.sendRedirect(request.getContextPath() + "/employee/dashboard");
        }
    }
    
    private String getAction(HttpServletRequest request) {
        String pathInfo = request.getPathInfo();
        if (pathInfo == null || pathInfo.equals("/")) {
            return "dashboard";
        }
        return pathInfo.substring(1);
    }
    
    private void showEmployeeDashboard(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        List<Employee> employees = employeeDAO.getAllEmployees();
        List<Branch> branches = branchDAO.getAllBranches();
        
        request.setAttribute("employees", employees);
        request.setAttribute("branches", branches);
        request.getRequestDispatcher("/WEB-INF/jsp/employee/dashboard.jsp").forward(request, response);
    }
    
    private void listEmployees(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        List<Employee> employees = employeeDAO.getAllEmployees();
        request.setAttribute("employees", employees);
        request.getRequestDispatcher("/WEB-INF/jsp/employee/list.jsp").forward(request, response);
    }
    
    private void showAddEmployeeForm(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        List<Branch> branches = branchDAO.getAllBranches();
        request.setAttribute("branches", branches);
        request.getRequestDispatcher("/WEB-INF/jsp/employee/add.jsp").forward(request, response);
    }
    
    private void addEmployee(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            int branchId = Integer.parseInt(request.getParameter("branchId"));
            int positionId = Integer.parseInt(request.getParameter("positionId"));
            
            // Email @kargo.com.tr ile bitmeli
            if (!email.endsWith("@kargo.com.tr")) {
                request.setAttribute("error", "Çalışan email adresi @kargo.com.tr ile bitmelidir.");
                showAddEmployeeForm(request, response);
                return;
            }
            
            // Pozisyona göre rol belirleme
            int roleId = getRoleIdByPosition(positionId);
            
            // User oluştur
            User user = new User(email, password, email, phone, roleId);
            if (userDAO.createUser(user)) {
                // Employee oluştur
                Employee employee = new Employee();
                employee.setUserId(user.getUserId());
                employee.setFirstName(firstName);
                employee.setLastName(lastName);
                employee.setBranchId(branchId);
                employee.setPositionId(positionId);
                
                if (employeeDAO.createEmployee(employee)) {
                    response.sendRedirect(request.getContextPath() + "/employee/dashboard?success=1");
                } else {
                    request.setAttribute("error", "Çalışan kaydı oluşturulamadı.");
                    showAddEmployeeForm(request, response);
                }
            } else {
                request.setAttribute("error", "Kullanıcı kaydı oluşturulamadı.");
                showAddEmployeeForm(request, response);
            }
            
        } catch (Exception e) {
            request.setAttribute("error", "Bir hata oluştu: " + e.getMessage());
            showAddEmployeeForm(request, response);
        }
    }
    
    private void showEditEmployeeForm(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        int employeeId = Integer.parseInt(request.getParameter("id"));
        // Employee bilgilerini getir ve form göster
        List<Branch> branches = branchDAO.getAllBranches();
        request.setAttribute("branches", branches);
        request.setAttribute("employeeId", employeeId);
        request.getRequestDispatcher("/WEB-INF/jsp/employee/edit.jsp").forward(request, response);
    }
    
    private void updateEmployee(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Employee güncelleme işlemi
        response.sendRedirect(request.getContextPath() + "/employee/dashboard?updated=1");
    }
    
    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        int employeeId = Integer.parseInt(request.getParameter("id"));
        // Employee silme işlemi
        response.sendRedirect(request.getContextPath() + "/employee/dashboard?deleted=1");
    }
    
    private int getRoleIdByPosition(int positionId) {
        // Pozisyona göre rol belirleme
        switch (positionId) {
            case 1: return 2; // Genel Müdür
            case 2: return 3; // Şube Müdürü
            case 3: return 4; // Depo Görevlisi
            case 4: return 5; // Bölge Sorumlusu
            case 5: return 6; // Kurye
            default: return 6; // Varsayılan
        }
    }
}