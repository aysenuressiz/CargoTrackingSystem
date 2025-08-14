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
        Employee employee = employeeDAO.getEmployeeById(employeeId);
        List<Branch> branches = branchDAO.getAllBranches();
        request.setAttribute("branches", branches);
        request.setAttribute("employee", employee);
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
        try {
            int employeeId = Integer.parseInt(request.getParameter("id"));
            
            // Employee bilgilerini al
            Employee employee = employeeDAO.getEmployeeById(employeeId);
            if (employee != null) {
                // Önce employee kaydını sil
                if (employeeDAO.deleteEmployee(employeeId)) {
                    // Sonra user kaydını sil
                    if (userDAO.deleteUser(employee.getUserId())) {
                        response.sendRedirect(request.getContextPath() + "/employee/dashboard?deleted=1");
                    } else {
                        response.sendRedirect(request.getContextPath() + "/employee/dashboard?error=user_delete_failed");
                    }
                } else {
                    response.sendRedirect(request.getContextPath() + "/employee/dashboard?error=employee_delete_failed");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/employee/dashboard?error=employee_not_found");
            }
        } catch (Exception e) {
            request.setAttribute("error", "Çalışan silinirken hata oluştu: " + e.getMessage());
            response.sendRedirect(request.getContextPath() + "/employee/dashboard");
        }
    }
    
    private int getRoleIdByPosition(int positionId) {
        // Pozisyona göre rol belirleme
        switch (positionId) {
            case 1: return 2; // Genel Müdür
            case 2: return 3; // Şube Müdürü
            case 3: return 4; // Depo Görevlisi
            case 4: return 4; // Şube Personeli
            case 5: return 6; // Kurye
            default: return 6; // Varsayılan
        }
    }
}

/*
 * Şimdi bu projede istediklerimi sıralıyorum
 * 1. Admin çalışan ve müşteri olarak 3 grup var 
 * 2. müşteriler şirket ve bireysel müşteri olarak ikiye ayrılıyor
 * 3. yani toplam 4 farklı kullanıcı tipi var
 * 4. Şirketler ve müşteriler giriş yapabilir kayıtları yoksa kayıt olabilirler
 * 5. çalışanların giriş yapabilmei için kullanıcı kaydı olamalı kayıtları yoksa yalnızca admin kullanıcılar tarafından oluşturulabilir.
 * 6. çalışanların emailleri @kargo.com.tr uzantılıdır
 * 7. her kullanıcı  tipi login ekranında giriş yapınca kendi sayfasına yönelndirilecek admin admin dashboard müşreti müşteri dashboard gibisinde olacak
 * 8. bireysel müşteri kendi bilgileriyle giriş yapınca yönlendirldiği dashboard ekranında teslim aldığı aktif kargoları iptal edelineleri ve gönderdiği kargoları görebilir. hem istatiksel hem de liste halinde takip numarası sorgulama yeriyle kendine ait rastgele bir kargonun durumunu görebilir. Ayrıca bir de profil ekranı olur bu profilde veri tabanından çekilen bilgiler gözükür ve güncelleyebilir.
 * 9. şirket müşterileri bireysel müşterilerin yaptığı tüm işlemleri yapabilir ekstra olarak şirket durumu için gerek ne varsa yapabilir vergi bilgilerini kullanarak rapor fatura vs çıkarabilir.
 * 10. çalışanlar genel müdür, şube müdür, depo görevlisi, şube personeli ve kurye olarak 5 farklı pozisyon var.
 * 11. her çalışan pozisyonuna göre yetkilendirilir ve çalışan sayfada yetkisine göre iş yapar
 * 12. kuryeler kendilerine atanan kargoları görebilir ve bu kargoların durumlarını teslim edildi  iptal edildi teslim edilemedi gibi değiştitrebilri ve kargo sahibine duruma göre varsayılan bir mesaj gönderimi yeri olur.
 * 13. şube personeli kargo durumunu kargo alındı yolda şubede dağıtıma çıktı gibi durumlarla güncelleyebilir. şubede olan kargoları kargoculara atayabilir.
 * 14. depo görevlisi kargoyu transfer merkezinde yolda  kargo alındı olarak güncelleyebilir. kargoyu teslim edilecek şubeye doğru yönlendirir.
 * 15. iade edildi durumunu güncelleyecek ilgili personele ekleyebilirsin
 * 16. şube müdürü şube personellerini görebilir ve yönetebilir. şube personellerinin yaptığı tüm işlemleri yapabilir
 * 18. genel müdür tüm çalışanları görebilir ve yönetebilir. tüm çalışanların yaptığı tüm işlemleri yapabilir ekstra olarak rapor falan çıkarabilir
 * 19. admin kullanıcılar tüm kullanıcıların işlemlerini yapabilir. Çalışan eklemeleri üzerinde CRUD işlemlerini yapabilir.
 * 20. tüm kargoların durumlarını görebilir. ve yönetebilir
 * 21. ekstra durumlar varsa eklenebilir
 * 
 * 
 */
