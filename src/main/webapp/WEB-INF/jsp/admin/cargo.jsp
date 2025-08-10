<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kargo Yönetimi - Admin Panel</title>
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
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/employees">
                                <i class="fas fa-user-tie"></i> Çalışan Yönetimi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/branches">
                                <i class="fas fa-building"></i> Şube Yönetimi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="${pageContext.request.contextPath}/admin/cargo">
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
                    <h1 class="h2"><i class="fas fa-box me-2"></i>Kargo Yönetimi</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="input-group me-2">
                            <input type="text" class="form-control" id="searchInput" placeholder="Takip numarası ara...">
                            <button class="btn btn-outline-secondary" type="button" onclick="searchCargo()">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Cargo Table -->
                <div class="card shadow">
                    <div class="card-header bg-white">
                        <h5 class="mb-0">Tüm Kargolar</h5>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover" id="cargoTable">
                                <thead class="table-light">
                                    <tr>
                                        <th>Takip No</th>
                                        <th>Gönderen</th>
                                        <th>Alıcı</th>
                                        <th>İçerik</th>
                                        <th>Ağırlık</th>
                                        <th>Desi</th>
                                        <th>Gönderim Tarihi</th>
                                        <th>Durum</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cargo" items="${cargos}">
                                        <tr>
                                            <td><strong>${cargo.trackingNo}</strong></td>
                                            <td>${cargo.senderName}</td>
                                            <td>${cargo.receiverName}</td>
                                            <td>${cargo.contentDescription}</td>
                                            <td>${cargo.weight} kg</td>
                                            <td>${cargo.desi}</td>
                                            <td>
                                                <fmt:formatDate value="${cargo.shippingDate}" pattern="dd.MM.yyyy HH:mm"/>
                                            </td>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${cargo.currentStatus eq 'Teslim Edildi'}">
                                                        <span class="badge bg-success">${cargo.currentStatus}</span>
                                                    </c:when>
                                                    <c:when test="${cargo.currentStatus eq 'Dağıtıma Çıktı'}">
                                                        <span class="badge bg-primary">${cargo.currentStatus}</span>
                                                    </c:when>
                                                    <c:when test="${cargo.currentStatus eq 'Teslim Edilemedi'}">
                                                        <span class="badge bg-danger">${cargo.currentStatus}</span>
                                                    </c:when>
                                                    <c:when test="${cargo.currentStatus eq 'İade Edildi'}">
                                                        <span class="badge bg-warning">${cargo.currentStatus}</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span class="badge bg-secondary">${cargo.currentStatus}</span>
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td>
                                                <div class="btn-group" role="group">
                                                    <button type="button" class="btn btn-sm btn-outline-info" 
                                                            onclick="viewCargoDetails('${cargo.trackingNo}')">
                                                        <i class="fas fa-eye"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-sm btn-outline-primary" 
                                                            onclick="trackCargo('${cargo.trackingNo}')">
                                                        <i class="fas fa-search"></i>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
    
    <script>
        $(document).ready(function() {
            $('#cargoTable').DataTable({
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.11.5/i18n/tr.json"
                },
                "order": [[ 6, "desc" ]],
                "pageLength": 25
            });
        });
        
        function searchCargo() {
            var searchTerm = document.getElementById('searchInput').value;
            if (searchTerm.trim() !== '') {
                window.location.href = '${pageContext.request.contextPath}/track?trackingNo=' + encodeURIComponent(searchTerm);
            }
        }
        
        function viewCargoDetails(trackingNo) {
            window.location.href = '${pageContext.request.contextPath}/track?trackingNo=' + encodeURIComponent(trackingNo);
        }
        
        function trackCargo(trackingNo) {
            window.open('${pageContext.request.contextPath}/track?trackingNo=' + encodeURIComponent(trackingNo), '_blank');
        }
        
        // Enter key search
        document.getElementById('searchInput').addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                searchCargo();
            }
        });
    </script>
</body>
</html>
