package com.kargo.servlet;

import com.kargo.dao.UserDAO;
import com.kargo.dao.EmployeeDAO;
import com.kargo.dao.BranchDAO;
import com.kargo.dao.CargoDAO;
import com.kargo.dao.PositionDAO;
import com.kargo.dao.CustomerDAO;
import com.kargo.dao.CompanyDAO;
import com.kargo.model.User;
import com.kargo.model.Employee;
import com.kargo.model.Branch;
import com.kargo.model.Cargo;
import com.kargo.model.Position;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/*")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO = new UserDAO();
    private EmployeeDAO employeeDAO = new EmployeeDAO();
    private BranchDAO branchDAO = new BranchDAO();
    private CargoDAO cargoDAO = new CargoDAO();
    private PositionDAO positionDAO = new PositionDAO();
    private CustomerDAO customerDAO = new CustomerDAO();
    private CompanyDAO companyDAO = new CompanyDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null || !user.getRoleName().equals("Admin")) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        String pathInfo = request.getPathInfo();
        if (pathInfo == null) {
            pathInfo = "/dashboard";
        }
        
        switch (pathInfo) {
            case "/dashboard":
                showDashboard(request, response);
                break;
            case "/users":
                showUsers(request, response);
                break;
            case "/employees":
                showEmployees(request, response);
                break;
            case "/branches":
                showBranches(request, response);
                break;
            case "/cargo":
                showCargo(request, response);
                break;
            case "/create-user":
                showCreateUser(request, response);
                break;
            case "/create-employee":
                showCreateEmployee(request, response);
                break;
            case "/create-branch":
                showCreateBranch(request, response);
                break;
            case "/edit-user":
                showEditUser(request, response);
                break;
            case "/edit-employee":
                showEditEmployee(request, response);
                break;
            case "/edit-branch":
                showEditBranch(request, response);
                break;
            default:
                response.sendError(404);
                break;
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null || !user.getRoleName().equals("Admin")) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        String pathInfo = request.getPathInfo();
        
        switch (pathInfo) {
            case "/create-user":
                createUser(request, response);
                break;
            case "/create-employee":
                createEmployee(request, response);
                break;
            case "/create-branch":
                createBranch(request, response);
                break;
            case "/update-user":
                updateUser(request, response);
                break;
            case "/update-employee":
                updateEmployee(request, response);
                break;
            case "/update-branch":
                updateBranch(request, response);
                break;
            case "/delete-user":
                deleteUser(request, response);
                break;
            case "/delete-employee":
                deleteEmployee(request, response);
                break;
            case "/delete-branch":
                deleteBranch(request, response);
                break;
            default:
                response.sendError(404);
                break;
        }
    }
    
    private void showDashboard(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Dashboard istatistikleri
        List<User> allUsers = userDAO.getAllUsers();
        List<Employee> allEmployees = employeeDAO.getAllEmployees();
        List<Branch> allBranches = branchDAO.getAllBranches();
        List<Cargo> allCargos = cargoDAO.getAllCargos();
        
        request.setAttribute("totalUsers", allUsers.size());
        request.setAttribute("totalEmployees", allEmployees.size());
        request.setAttribute("totalCustomers", 
            allUsers.stream().mapToInt(u -> u.getRoleName().equals("Müşteri") ? 1 : 0).sum());
        request.setAttribute("totalCompanies", 
            allUsers.stream().mapToInt(u -> u.getRoleName().equals("Şirket") ? 1 : 0).sum());
        request.setAttribute("totalBranches", allBranches.size());
        request.setAttribute("totalCargos", allCargos.size());
        
        request.getRequestDispatcher("/WEB-INF/jsp/admin/dashboard.jsp").forward(request, response);
    }
    
    private void showUsers(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        List<User> users = userDAO.getAllUsers();
        request.setAttribute("users", users);
        request.getRequestDispatcher("/WEB-INF/jsp/admin/users.jsp").forward(request, response);
    }
    
    private void showEmployees(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        List<Employee> employees = employeeDAO.getAllEmployees();
        List<Position> positions = positionDAO.getAllPositions();
        List<Branch> branches = branchDAO.getAllBranches();
        
        request.setAttribute("employees", employees);
        request.setAttribute("positions", positions);
        request.setAttribute("branches", branches);
        request.getRequestDispatcher("/WEB-INF/jsp/admin/employees.jsp").forward(request, response);
    }
    
    private void showBranches(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        List<Branch> branches = branchDAO.getAllBranches();
        request.setAttribute("branches", branches);
        request.getRequestDispatcher("/WEB-INF/jsp/admin/branches.jsp").forward(request, response);
    }
    
    private void showCargo(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        List<Cargo> cargos = cargoDAO.getAllCargos();
        request.setAttribute("cargos", cargos);
        request.getRequestDispatcher("/WEB-INF/jsp/admin/cargo.jsp").forward(request, response);
    }
    
    private void showCreateUser(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/admin/create-user.jsp").forward(request, response);
    }
    
    private void showCreateEmployee(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        List<Position> positions = positionDAO.getAllPositions();
        List<Branch> branches = branchDAO.getAllBranches();
        
        request.setAttribute("positions", positions);
        request.setAttribute("branches", branches);
        request.getRequestDispatcher("/WEB-INF/jsp/admin/create-employee.jsp").forward(request, response);
    }
    
    private void showCreateBranch(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/admin/create-branch.jsp").forward(request, response);
    }
    
    private void showEditUser(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String userIdStr = request.getParameter("id");
        if (userIdStr != null) {
            try {
                int userId = Integer.parseInt(userIdStr);
                User editUser = userDAO.getUserById(userId);
                if (editUser != null) {
                    request.setAttribute("editUser", editUser);
                    request.getRequestDispatcher("/WEB-INF/jsp/admin/edit-user.jsp").forward(request, response);
                    return;
                }
            } catch (NumberFormatException e) {
                // Ignore
            }
        }
        response.sendRedirect("users");
    }
    
    private void showEditEmployee(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String employeeIdStr = request.getParameter("id");
        if (employeeIdStr != null) {
            try {
                int employeeId = Integer.parseInt(employeeIdStr);
                Employee editEmployee = employeeDAO.getEmployeeById(employeeId);
                if (editEmployee != null) {
                    List<Position> positions = positionDAO.getAllPositions();
                    List<Branch> branches = branchDAO.getAllBranches();
                    
                    request.setAttribute("editEmployee", editEmployee);
                    request.setAttribute("positions", positions);
                    request.setAttribute("branches", branches);
                    request.getRequestDispatcher("/WEB-INF/jsp/admin/edit-employee.jsp").forward(request, response);
                    return;
                }
            } catch (NumberFormatException e) {
                // Ignore
            }
        }
        response.sendRedirect("employees");
    }
    
    private void showEditBranch(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String branchIdStr = request.getParameter("id");
        if (branchIdStr != null) {
            try {
                int branchId = Integer.parseInt(branchIdStr);
                Branch editBranch = branchDAO.getBranchById(branchId);
                if (editBranch != null) {
                    request.setAttribute("editBranch", editBranch);
                    request.getRequestDispatcher("/WEB-INF/jsp/admin/edit-branch.jsp").forward(request, response);
                    return;
                }
            } catch (NumberFormatException e) {
                // Ignore
            }
        }
        response.sendRedirect("branches");
    }
    
    private void createUser(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String roleIdStr = request.getParameter("roleId");
        
        if (username == null || email == null || password == null || 
            phone == null || roleIdStr == null ||
            username.trim().isEmpty() || email.trim().isEmpty() || 
            password.trim().isEmpty() || phone.trim().isEmpty()) {
            
            request.setAttribute("error", "Tüm alanlar doldurulmalıdır.");
            request.getRequestDispatcher("/WEB-INF/jsp/admin/create-user.jsp").forward(request, response);
            return;
        }
        
        try {
            int roleId = Integer.parseInt(roleIdStr);
            
            // @kargo.com.tr email kontrolü - sadece admin ekleyebilir
            if (email.endsWith("@kargo.com.tr")) {
                // Bu email ile kayıt yapılmasına izin ver (admin olduğu için)
            } else if (roleId == 4) { // Çalışan rolü
                request.setAttribute("error", "Çalışanlar için @kargo.com.tr uzantılı email kullanılmalıdır.");
                request.getRequestDispatcher("/WEB-INF/jsp/admin/create-user.jsp").forward(request, response);
                return;
            }
            
            if (userDAO.isEmailExists(email)) {
                request.setAttribute("error", "Bu e-posta adresi zaten kullanılıyor.");
                request.getRequestDispatcher("/WEB-INF/jsp/admin/create-user.jsp").forward(request, response);
                return;
            }
            
            if (userDAO.isUsernameExists(username)) {
                request.setAttribute("error", "Bu kullanıcı adı zaten kullanılıyor.");
                request.getRequestDispatcher("/WEB-INF/jsp/admin/create-user.jsp").forward(request, response);
                return;
            }
            
            User newUser = new User(username, password, email, phone, roleId);
            
            if (userDAO.createUser(newUser)) {
                response.sendRedirect("users?success=Kullanıcı başarıyla oluşturuldu.");
            } else {
                request.setAttribute("error", "Kullanıcı oluşturma işlemi başarısız.");
                request.getRequestDispatcher("/WEB-INF/jsp/admin/create-user.jsp").forward(request, response);
            }
            
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Geçersiz rol seçimi.");
            request.getRequestDispatcher("/WEB-INF/jsp/admin/create-user.jsp").forward(request, response);
        }
    }
    
    private void createEmployee(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String positionIdStr = request.getParameter("positionId");
        String branchIdStr = request.getParameter("branchId");
        
        if (username == null || email == null || password == null || 
            phone == null || firstName == null || lastName == null ||
            positionIdStr == null || branchIdStr == null ||
            username.trim().isEmpty() || email.trim().isEmpty() || 
            password.trim().isEmpty() || phone.trim().isEmpty() ||
            firstName.trim().isEmpty() || lastName.trim().isEmpty()) {
            
            request.setAttribute("error", "Tüm alanlar doldurulmalıdır.");
            showCreateEmployee(request, response);
            return;
        }
        
        try {
            int positionId = Integer.parseInt(positionIdStr);
            int branchId = Integer.parseInt(branchIdStr);
            
            // Çalışanlar için @kargo.com.tr email zorunlu
            if (!email.endsWith("@kargo.com.tr")) {
                request.setAttribute("error", "Çalışanlar için @kargo.com.tr uzantılı email kullanılmalıdır.");
                showCreateEmployee(request, response);
                return;
            }
            
            if (userDAO.isEmailExists(email)) {
                request.setAttribute("error", "Bu e-posta adresi zaten kullanılıyor.");
                showCreateEmployee(request, response);
                return;
            }
            
            if (userDAO.isUsernameExists(username)) {
                request.setAttribute("error", "Bu kullanıcı adı zaten kullanılıyor.");
                showCreateEmployee(request, response);
                return;
            }
            
            // Önce User oluştur (role_id = 4 for Employee)
            User newUser = new User(username, password, email, phone, 4);
            int userId = userDAO.createUserAndGetId(newUser);
            
            if (userId > 0) {
                // Sonra Employee oluştur
                Employee newEmployee = new Employee();
                newEmployee.setUserId(userId);
                newEmployee.setFirstName(firstName);
                newEmployee.setLastName(lastName);
                newEmployee.setPositionId(positionId);
                newEmployee.setBranchId(branchId);
                
                if (employeeDAO.createEmployee(newEmployee)) {
                    response.sendRedirect("employees?success=Çalışan başarıyla oluşturuldu.");
                } else {
                    // Employee oluşturulamadıysa User'ı da sil
                    userDAO.deleteUser(userId);
                    request.setAttribute("error", "Çalışan oluşturma işlemi başarısız.");
                    showCreateEmployee(request, response);
                }
            } else {
                request.setAttribute("error", "Kullanıcı oluşturma işlemi başarısız.");
                showCreateEmployee(request, response);
            }
            
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Geçersiz pozisyon veya şube seçimi.");
            showCreateEmployee(request, response);
        }
    }
    
    private void createBranch(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String branchName = request.getParameter("branchName");
        String addressIdStr = request.getParameter("addressId");
        
        if (branchName == null || addressIdStr == null ||
            branchName.trim().isEmpty()) {
            
            request.setAttribute("error", "Şube adı ve adres bilgileri gereklidir.");
            request.getRequestDispatcher("/WEB-INF/jsp/admin/create-branch.jsp").forward(request, response);
            return;
        }
        
        try {
            int addressId = Integer.parseInt(addressIdStr);
            
            Branch newBranch = new Branch();
            newBranch.setBranchName(branchName);
            newBranch.setAddressId(addressId);
            
            if (branchDAO.createBranch(newBranch)) {
                response.sendRedirect("branches?success=Şube başarıyla oluşturuldu.");
            } else {
                request.setAttribute("error", "Şube oluşturma işlemi başarısız.");
                request.getRequestDispatcher("/WEB-INF/jsp/admin/create-branch.jsp").forward(request, response);
            }
            
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Geçersiz adres ID.");
            request.getRequestDispatcher("/WEB-INF/jsp/admin/create-branch.jsp").forward(request, response);
        }
    }
    
    private void updateUser(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String userIdStr = request.getParameter("userId");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String roleIdStr = request.getParameter("roleId");
        
        try {
            int userId = Integer.parseInt(userIdStr);
            int roleId = Integer.parseInt(roleIdStr);
            
            User updateUser = new User();
            updateUser.setUserId(userId);
            updateUser.setUsername(username);
            updateUser.setEmail(email);
            updateUser.setPhone(phone);
            updateUser.setRoleId(roleId);
            
            if (userDAO.updateUser(updateUser)) {
                response.sendRedirect("users?success=Kullanıcı başarıyla güncellendi.");
            } else {
                response.sendRedirect("users?error=Kullanıcı güncelleme işlemi başarısız.");
            }
            
        } catch (NumberFormatException e) {
            response.sendRedirect("users?error=Geçersiz parametre.");
        }
    }
    
    private void updateEmployee(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String employeeIdStr = request.getParameter("employeeId");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String positionIdStr = request.getParameter("positionId");
        String branchIdStr = request.getParameter("branchId");
        
        try {
            int employeeId = Integer.parseInt(employeeIdStr);
            int positionId = Integer.parseInt(positionIdStr);
            int branchId = Integer.parseInt(branchIdStr);
            
            Employee updateEmployee = new Employee();
            updateEmployee.setEmployeeId(employeeId);
            updateEmployee.setFirstName(firstName);
            updateEmployee.setLastName(lastName);
            updateEmployee.setPositionId(positionId);
            updateEmployee.setBranchId(branchId);
            
            if (employeeDAO.updateEmployee(updateEmployee)) {
                response.sendRedirect("employees?success=Çalışan başarıyla güncellendi.");
            } else {
                response.sendRedirect("employees?error=Çalışan güncelleme işlemi başarısız.");
            }
            
        } catch (NumberFormatException e) {
            response.sendRedirect("employees?error=Geçersiz parametre.");
        }
    }
    
    private void updateBranch(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String branchIdStr = request.getParameter("branchId");
        String branchName = request.getParameter("branchName");
        String addressIdStr = request.getParameter("addressId");
        
        try {
            int branchId = Integer.parseInt(branchIdStr);
            int addressId = Integer.parseInt(addressIdStr);
            
            Branch updateBranch = new Branch();
            updateBranch.setBranchId(branchId);
            updateBranch.setBranchName(branchName);
            updateBranch.setAddressId(addressId);
            
            if (branchDAO.updateBranch(updateBranch)) {
                response.sendRedirect("branches?success=Şube başarıyla güncellendi.");
            } else {
                response.sendRedirect("branches?error=Şube güncelleme işlemi başarısız.");
            }
            
        } catch (NumberFormatException e) {
            response.sendRedirect("branches?error=Geçersiz parametre.");
        }
    }
    
    private void deleteUser(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String userIdStr = request.getParameter("userId");
        
        try {
            int userId = Integer.parseInt(userIdStr);
            
            if (userDAO.deleteUser(userId)) {
                response.sendRedirect("users?success=Kullanıcı başarıyla silindi.");
            } else {
                response.sendRedirect("users?error=Kullanıcı silme işlemi başarısız.");
            }
            
        } catch (NumberFormatException e) {
            response.sendRedirect("users?error=Geçersiz kullanıcı ID.");
        }
    }
    
    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String employeeIdStr = request.getParameter("employeeId");
        
        try {
            int employeeId = Integer.parseInt(employeeIdStr);
            
            if (employeeDAO.deleteEmployee(employeeId)) {
                response.sendRedirect("employees?success=Çalışan başarıyla silindi.");
            } else {
                response.sendRedirect("employees?error=Çalışan silme işlemi başarısız.");
            }
            
        } catch (NumberFormatException e) {
            response.sendRedirect("employees?error=Geçersiz çalışan ID.");
        }
    }
    
    private void deleteBranch(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String branchIdStr = request.getParameter("branchId");
        
        try {
            int branchId = Integer.parseInt(branchIdStr);
            
            if (branchDAO.deleteBranch(branchId)) {
                response.sendRedirect("branches?success=Şube başarıyla silindi.");
            } else {
                response.sendRedirect("branches?error=Şube silme işlemi başarısız.");
            }
            
        } catch (NumberFormatException e) {
            response.sendRedirect("branches?error=Geçersiz şube ID.");
        }
    }
}