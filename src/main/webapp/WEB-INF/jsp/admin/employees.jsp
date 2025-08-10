<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Çalışan Yönetimi - Admin Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet">
    <style>
        .sidebar {
            min-height: 100vh;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }
        .sidebar .nav-link {
            color: rgba(255, 255, 255, 0.8);
            border-radius: 5px;
            margin: 2px 0;
        }
        .sidebar .nav-link:hover, .sidebar .nav-link.active {
            color: white;
            background-color: rgba(255, 255, 255, 0.1);
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav class="col-md-3 col-lg-2 d-md-block sidebar collapse">
                <div class="position-sticky pt-3">
                    <div class="text-center mb-4">
                        <h4 class="text-white"><i class="fas fa-shipping-fast"></i> KargoTakip</h4>
                        <small class="text-white-50">Admin Panel</small>
                    </div>
                    
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/dashboard">
                                <i class="fas fa-tachometer-alt"></i> Dashboard
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/users">
                                <i class="fas fa-users"></i> Kullanıcı Yönetimi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="${pageContext.request.contextPath}/admin/employees">
                                <i class="fas fa-user-tie"></i> Çalışan Yönetimi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/branches">
                                <i class="fas fa-building"></i> Şube Yönetimi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/cargo">
                                <i class="fas fa-box"></i> Kargo Yönetimi
                            </a>
                        </li>
                    </ul>
                    
                    <hr class="my-3" style="border-color: rgba(255,255,255,0.2);">
                    
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/logout">
                                <i class="fas fa-sign-out-alt"></i> Çıkış Yap
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>

            <!-- Main content -->
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2"><i class="fas fa-user-tie me-2"></i>Çalışan Yönetimi</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addEmployeeModal">
                            <i class="fas fa-user-plus"></i> Yeni Çalışan Ekle
                        </button>
                    </div>
                </div>

                <!-- Alerts -->
                <c:if test="${not empty param.success}">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <i class="fas fa-check-circle me-2"></i>${param.success}
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                </c:if>

                <c:if test="${not empty param.error}">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <i class="fas fa-exclamation-triangle me-2"></i>${param.error}
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                </c:if>

                <!-- Employees Table -->
                <div class="card shadow">
                    <div class="card-header bg-white">
                        <h5 class="mb-0">Tüm Çalışanlar</h5>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover" id="employeesTable">
                                <thead class="table-light">
                                    <tr>
                                        <th>ID</th>
                                        <th>Ad Soyad</th>
                                        <th>Email</th>
                                        <th>Telefon</th>
                                        <th>Pozisyon</th>
                                        <th>Şube</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="employee" items="${employees}">
                                        <tr>
                                            <td>${employee.employeeId}</td>
                                            <td>${employee.firstName} ${employee.lastName}</td>
                                            <td>${employee.email}</td>
                                            <td>${employee.phone}</td>
                                            <td>
                                                <span class="badge bg-info">${employee.positionName}</span>
                                            </td>
                                            <td>${employee.branchName}</td>
                                            <td>
                                                <div class="btn-group" role="group">
                                                    <button type="button" class="btn btn-sm btn-outline-primary" 
                                                            onclick="editEmployee(${employee.employeeId})">
                                                        <i class="fas fa-edit"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-sm btn-outline-danger" 
                                                            onclick="deleteEmployee(${employee.employeeId}, '${employee.firstName} ${employee.lastName}')">
                                                        <i class="fas fa-trash"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- Add Employee Modal -->
    <div class="modal fade" id="addEmployeeModal" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><i class="fas fa-user-plus me-2"></i>Yeni Çalışan Ekle</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <form action="${pageContext.request.contextPath}/admin/create-employee" method="post">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="firstName" class="form-label">Ad</label>
                                    <input type="text" class="form-control" id="firstName" name="firstName" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="lastName" class="form-label">Soyad</label>
                                    <input type="text" class="form-control" id="lastName" name="lastName" required>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="username" class="form-label">Kullanıcı Adı</label>
                                    <input type="text" class="form-control" id="username" name="username" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email (@kargo.com.tr)</label>
                                    <input type="email" class="form-control" id="email" name="email" 
                                           pattern=".*@kargo\.com\.tr$" 
                                           title="Çalışanlar için @kargo.com.tr uzantılı email kullanılmalıdır" required>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="password" class="form-label">Şifre</label>
                                    <input type="password" class="form-control" id="password" name="password" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="phone" class="form-label">Telefon</label>
                                    <input type="tel" class="form-control" id="phone" name="phone" required>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="positionId" class="form-label">Pozisyon</label>
                                    <select class="form-select" id="positionId" name="positionId" required>
                                        <option value="">Pozisyon Seçin</option>
                                        <c:forEach var="position" items="${positions}">
                                            <option value="${position.positionId}">${position.positionName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="branchId" class="form-label">Şube</label>
                                    <select class="form-select" id="branchId" name="branchId" required>
                                        <option value="">Şube Seçin</option>
                                        <c:forEach var="branch" items="${branches}">
                                            <option value="${branch.branchId}">${branch.branchName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">İptal</button>
                        <button type="submit" class="btn btn-primary">Çalışan Ekle</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Delete Confirmation Modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-danger"><i class="fas fa-exclamation-triangle me-2"></i>Çalışan Sil</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <p>Bu çalışanı silmek istediğinizden emin misiniz?</p>
                    <p><strong id="deleteEmployeeName"></strong></p>
                    <div class="alert alert-warning">
                        <i class="fas fa-exclamation-triangle me-2"></i>Bu işlem geri alınamaz!
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">İptal</button>
                    <form action="${pageContext.request.contextPath}/admin/delete-employee" method="post" style="display: inline;">
                        <input type="hidden" id="deleteEmployeeId" name="employeeId">
                        <button type="submit" class="btn btn-danger">Sil</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
    
    <script>
        $(document).ready(function() {
            $('#employeesTable').DataTable({
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.11.5/i18n/tr.json"
                },
                "order": [[ 0, "desc" ]],
                "pageLength": 25
            });
        });
        
        function editEmployee(employeeId) {
            window.location.href = '${pageContext.request.contextPath}/admin/edit-employee?id=' + employeeId;
        }
        
        function deleteEmployee(employeeId, employeeName) {
            document.getElementById('deleteEmployeeId').value = employeeId;
            document.getElementById('deleteEmployeeName').textContent = employeeName;
            
            var deleteModal = new bootstrap.Modal(document.getElementById('deleteModal'));
            deleteModal.show();
        }
    </script>
</body>
</html>
