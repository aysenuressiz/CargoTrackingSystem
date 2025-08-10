<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Toplu Gönderim - Şirket Paneli</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .sidebar {
            min-height: 100vh;
            background: linear-gradient(135deg, #ffc107 0%, #fd7e14 100%);
        }
        .sidebar .nav-link {
            color: rgba(255,255,255,0.8);
            border-radius: 5px;
            margin: 2px 0;
        }
        .sidebar .nav-link:hover, .sidebar .nav-link.active {
            color: white;
            background-color: rgba(255,255,255,0.1);
        }
        .feature-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .feature-card:hover {
            transform: translateY(-2px);
        }
        .stats-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
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
                        <h4 class="text-white"><i class="fas fa-building"></i> Şirket Paneli</h4>
                        <small class="text-white-50">${sessionScope.user.firstName} ${sessionScope.user.lastName}</small>
                    </div>
                    
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/company/dashboard">
                                <i class="fas fa-tachometer-alt"></i> Dashboard
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/company/cargos">
                                <i class="fas fa-box"></i> Kargo Yönetimi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="${pageContext.request.contextPath}/company/bulk-send">
                                <i class="fas fa-truck"></i> Toplu Gönderim
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/company/reports">
                                <i class="fas fa-chart-line"></i> Raporlar
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/company/addresses">
                                <i class="fas fa-map-marker-alt"></i> Adres Yönetimi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/company/employees">
                                <i class="fas fa-users"></i> Çalışan Yönetimi
                            </a>
                        </li>
                    </ul>
                    
                    <hr class="my-3" style="border-color: rgba(255,255,255,0.2);">
                    
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/company/profile">
                                <i class="fas fa-user-cog"></i> Profil
                            </a>
                        </li>
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
                    <h1 class="h2">Toplu Gönderim</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#bulkShipmentModal">
                            <i class="fas fa-plus"></i> Yeni Toplu Gönderim
                        </button>
                    </div>
                </div>

                <!-- Alert Messages -->
                <c:if test="${not empty success}">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <i class="fas fa-check-circle"></i> ${success}
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                </c:if>
                
                <c:if test="${not empty error}">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <i class="fas fa-exclamation-triangle"></i> ${error}
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                </c:if>

                <!-- Company Features -->
                <div class="row mb-4">
                    <div class="col-md-4 mb-3">
                        <div class="card feature-card bg-warning text-white">
                            <div class="card-body text-center">
                                <i class="fas fa-file-invoice-dollar fa-3x mb-3"></i>
                                <h5 class="card-title">Aylık Faturalandırma</h5>
                                <p class="card-text">Her kargo için ayrı ödeme yerine toplu fatura sistemi</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <div class="card feature-card bg-info text-white">
                            <div class="card-body text-center">
                                <i class="fas fa-chart-bar fa-3x mb-3"></i>
                                <h5 class="card-title">Detaylı Raporlama</h5>
                                <p class="card-text">Tarih, alıcı şehir, teslim süreleri vb. detaylı raporlar</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <div class="card feature-card bg-success text-white">
                            <div class="card-body text-center">
                                <i class="fas fa-truck fa-3x mb-3"></i>
                                <h5 class="card-title">Toplu Gönderim</h5>
                                <p class="card-text">Tek seferde birden fazla kargo oluşturma</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Monthly Statistics -->
                <div class="row mb-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header bg-primary text-white">
                                <h5 class="mb-0"><i class="fas fa-chart-line"></i> Bu Ay İstatistikleri</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3 text-center">
                                        <div class="border rounded p-3">
                                            <h3 class="text-primary">${monthlyStats.totalCargos}</h3>
                                            <p class="text-muted">Toplam Kargo</p>
                                        </div>
                                    </div>
                                    <div class="col-md-3 text-center">
                                        <div class="border rounded p-3">
                                            <h3 class="text-success">${monthlyStats.deliveredCargos}</h3>
                                            <p class="text-muted">Teslim Edilen</p>
                                        </div>
                                    </div>
                                    <div class="col-md-3 text-center">
                                        <div class="border rounded p-3">
                                            <h3 class="text-warning">${monthlyStats.totalWeight} kg</h3>
                                            <p class="text-muted">Toplam Ağırlık</p>
                                        </div>
                                    </div>
                                    <div class="col-md-3 text-center">
                                        <div class="border rounded p-3">
                                            <h3 class="text-info">${monthlyStats.averageDeliveryDays} gün</h3>
                                            <p class="text-muted">Ortalama Teslim Süresi</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Recent Bulk Shipments -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0"><i class="fas fa-history"></i> Son Toplu Gönderimler</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Gönderim ID</th>
                                                <th>Alıcı E-posta</th>
                                                <th>Miktar</th>
                                                <th>İçerik</th>
                                                <th>Oluşturma Tarihi</th>
                                                <th>Durum</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${recentShipments}" var="shipment">
                                                <tr>
                                                    <td><strong>#${shipment.shipmentId}</strong></td>
                                                    <td>${shipment.receiverEmail}</td>
                                                    <td>
                                                        <span class="badge bg-warning">${shipment.quantity} adet</span>
                                                    </td>
                                                    <td>${shipment.contentDescription}</td>
                                                    <td>
                                                        <fmt:formatDate value="${shipment.createdAt}" pattern="dd.MM.yyyy HH:mm"/>
                                                    </td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${shipment.cargoCount == shipment.quantity}">
                                                                <span class="badge bg-success">Tamamlandı</span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="badge bg-warning">İşlemde</span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- Bulk Shipment Modal -->
    <div class="modal fade" id="bulkShipmentModal" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header bg-warning text-white">
                    <h5 class="modal-title"><i class="fas fa-truck"></i> Yeni Toplu Gönderim</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                </div>
                <form action="${pageContext.request.contextPath}/company/bulk-send" method="post">
                    <input type="hidden" name="action" value="createBulkShipment">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="receiverEmail" class="form-label">Alıcı E-posta *</label>
                                <input type="email" class="form-control" id="receiverEmail" name="receiverEmail" required>
                                <small class="text-muted">Alıcı yoksa otomatik olarak oluşturulacak</small>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="receiverName" class="form-label">Alıcı Adı</label>
                                <input type="text" class="form-control" id="receiverName" name="receiverName">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="receiverPhone" class="form-label">Alıcı Telefon</label>
                                <input type="tel" class="form-control" id="receiverPhone" name="receiverPhone">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="quantity" class="form-label">Kargo Miktarı *</label>
                                <input type="number" class="form-control" id="quantity" name="quantity" min="1" max="100" required>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="contentDescription" class="form-label">İçerik Açıklaması *</label>
                            <textarea class="form-control" id="contentDescription" name="contentDescription" rows="3" required></textarea>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="weight" class="form-label">Ağırlık (kg) *</label>
                                <input type="number" class="form-control" id="weight" name="weight" step="0.1" min="0.1" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="specialInstructions" class="form-label">Özel Talimatlar</label>
                                <textarea class="form-control" id="specialInstructions" name="specialInstructions" rows="3"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">İptal</button>
                        <button type="submit" class="btn btn-warning">
                            <i class="fas fa-truck"></i> Toplu Gönderim Oluştur
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Report Generation Modal -->
    <div class="modal fade" id="reportModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-info text-white">
                    <h5 class="modal-title"><i class="fas fa-chart-line"></i> Rapor Oluştur</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                </div>
                <form action="${pageContext.request.contextPath}/company/bulk-send" method="post">
                    <input type="hidden" name="action" value="generateReport">
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="reportType" class="form-label">Rapor Türü</label>
                            <select class="form-select" id="reportType" name="reportType" required>
                                <option value="">Rapor türü seçiniz</option>
                                <option value="monthly">Aylık Rapor</option>
                                <option value="bulk">Toplu Gönderim Raporu</option>
                                <option value="general">Genel Rapor</option>
                            </select>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="startDate" class="form-label">Başlangıç Tarihi</label>
                                <input type="date" class="form-control" id="startDate" name="startDate" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="endDate" class="form-label">Bitiş Tarihi</label>
                                <input type="date" class="form-control" id="endDate" name="endDate" required>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">İptal</button>
                        <button type="submit" class="btn btn-info">
                            <i class="fas fa-download"></i> Rapor Oluştur
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Set default dates for report modal
        document.addEventListener('DOMContentLoaded', function() {
            const today = new Date();
            const firstDay = new Date(today.getFullYear(), today.getMonth(), 1);
            
            document.getElementById('startDate').value = firstDay.toISOString().split('T')[0];
            document.getElementById('endDate').value = today.toISOString().split('T')[0];
        });
    </script>
</body>
</html>
