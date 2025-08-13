package com.kargo.servlet;

import com.kargo.dao.UserDAO;
import com.kargo.dao.CustomerDAO;
import com.kargo.dao.CompanyDAO;
import com.kargo.model.User;
import com.kargo.model.Customer;
import com.kargo.model.Company;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;
    private CustomerDAO customerDAO;
    private CompanyDAO companyDAO;
    
    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO();
        customerDAO = new CustomerDAO();
        companyDAO = new CompanyDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String userType = request.getParameter("userType");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        
        // @kargo.com.tr uzantılı email kontrolü (çalışan kayıtları sadece admin tarafından yapılabilir)
        if (email.endsWith("@kargo.com.tr")) {
            request.setAttribute("error", "Çalışan kayıtları sadece sistem yöneticisi tarafından yapılabilir.");
            request.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(request, response);
            return;
        }
        
        // Email ve username kontrolü
        if (userDAO.isEmailExists(email)) {
            request.setAttribute("error", "Bu email adresi zaten kullanılmaktadır.");
            request.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(request, response);
            return;
        }
        
        try {
            if ("customer".equals(userType)) {
                registerCustomer(request, email, password, phone);
            } else if ("company".equals(userType)) {
                registerCompany(request, email, password, phone);
            }
            
            request.setAttribute("success", "Kayıt başarılı! Giriş yapabilirsiniz.");
            request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
            
        } catch (Exception e) {
            request.setAttribute("error", "Kayıt sırasında bir hata oluştu: " + e.getMessage());
            request.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(request, response);
        }
    }
    
    private void registerCustomer(HttpServletRequest request, String email, String password, String phone) throws Exception {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String identityNo = request.getParameter("identityNo");
        
        // Müşteri için roleId = 6 (Customers tablosuna bakarak)
        User user = new User(email, password, email, phone, 6);
        
        if (userDAO.createUser(user)) {
            // Kullanıcı oluşturulduktan sonra customer bilgilerini kaydet
            // Bu örnekte address_id = 1 varsayıyoruz, gerçekte adres ekleme işlemi olmalı
            Customer customer = new Customer();
            customer.setUserId(user.getUserId()); // Bu kısım gerçekte son eklenen user id'yi almalı
            customer.setFirstName(firstName);
            customer.setLastName(lastName);
            customer.setIdentityNo(identityNo);
            customer.setAddressId(1); // Varsayılan adres
            
            customerDAO.createCustomer(customer);
        }
    }
    
    private void registerCompany(HttpServletRequest request, String email, String password, String phone) throws Exception {
        String companyName = request.getParameter("companyName");
        String taxNo = request.getParameter("taxNo");
        
        // Şirket için roleId = 7
        User user = new User(email, password, email, phone, 7);
        
        if (userDAO.createUser(user)) {
            Company company = new Company();
            company.setUserId(user.getUserId());
            company.setCompanyName(companyName);
            company.setTaxNo(taxNo);
            company.setAddressId(1); // Varsayılan adres
            
            companyDAO.createCompany(company);
        }
    }
}