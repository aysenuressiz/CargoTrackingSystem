package com.kargo.filter;

import com.kargo.model.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebFilter("/*")
public class AuthenticationFilter implements Filter {
    
    private static final List<String> PUBLIC_PATHS = Arrays.asList(
        "/index.jsp", "/login", "/register", "/track", "/track-result.jsp", 
        "/css/", "/js/", "/images/", "/favicon.ico"
    );
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        
        String requestURI = httpRequest.getRequestURI();
        String contextPath = httpRequest.getContextPath();
        String path = requestURI.substring(contextPath.length());
        
        // Check if path is public
        boolean isPublicPath = PUBLIC_PATHS.stream().anyMatch(publicPath -> 
            path.equals(publicPath) || path.startsWith(publicPath) || path.equals("/"));
        
        if (isPublicPath) {
            chain.doFilter(request, response);
            return;
        }
        
        HttpSession session = httpRequest.getSession(false);
        User user = (session != null) ? (User) session.getAttribute("user") : null;
        
        if (user == null) {
            httpResponse.sendRedirect(contextPath + "/login");
            return;
        }
        
        // Role-based access control
        String roleName = user.getRoleName();
        
        if (path.startsWith("/admin/") && !"Admin".equals(roleName)) {
            httpResponse.sendError(HttpServletResponse.SC_FORBIDDEN, "Erişim reddedildi");
            return;
        }
        
        if (path.startsWith("/employee/") && !isEmployee(roleName)) {
            httpResponse.sendError(HttpServletResponse.SC_FORBIDDEN, "Erişim reddedildi");
            return;
        }
        
        if (path.startsWith("/customer/") && !"Müşteri".equals(roleName)) {
            httpResponse.sendError(HttpServletResponse.SC_FORBIDDEN, "Erişim reddedildi");
            return;
        }
        
        if (path.startsWith("/company/") && !"Şirket".equals(roleName)) {
            httpResponse.sendError(HttpServletResponse.SC_FORBIDDEN, "Erişim reddedildi");
            return;
        }
        
        chain.doFilter(request, response);
    }
    
    private boolean isEmployee(String roleName) {
        return Arrays.asList("Genel Müdür", "Şube Müdürü", "Depo Görevlisi", "Bölge Sorumlusu", "Kurye")
                .contains(roleName);
    }
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {}
    
    @Override
    public void destroy() {}
}
