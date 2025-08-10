<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Çalışan Paneli - Kargo Takip Sistemi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .sidebar {
            min-height: 100vh;
            background: linear-gradient(135deg, #28a745 0%, #20c997 100%);
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
        .stats-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .stats-card:hover {
            transform: translateY(-2px);
        }
        .position-badge {
            font-size: 0.8rem;
            padding: 0.25rem 0.5rem;
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
                        <h4 class="text-white"><i class="fas fa-user-tie"></i> Çalışan Paneli</h4>
                        <small class="text-white-50">${sessionScope.employee.firstName} ${sessionScope.employee.lastName}</small>
                        <br>
                        <span class="badge bg-light text-dark position-badge">
                            <i class="fas fa-id-badge"></i> ${sessionScope.employee.positionName}
                        </span>
                        <c:if test="${not empty sessionScope.employee.branchName}">
                            <br>
                            <small class="text-white-50">${sessionScope.employee.branchName}</small>
                        </c:if>
                    </div>
                    
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="${pageContext.request.contextPath}/employee/dashboard">
                                <i class="fas fa-tachometer-alt"></i> Dashboard
                            </a>
                        </li>
                        
                        <!-- Kargo Yönetimi - Tüm pozisyonlar -->
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/employee/cargos">
                                <i class="fas fa-box"></i> Kargo Yönetimi
                            </a>
                        </li>
                        
                        <!-- Durum Güncelleme - Tüm pozisyonlar -->
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/employee/status-update">
                                <i class="fas fa-edit"></i> Durum Güncelle
                            </a>
                        </li>
                        
                        
                        
                        <!-- Kargo Takip - Tüm pozisyonlar -->
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/employee/tracking">
                                <i class="fas fa-search"></i> Kargo Takip
                            </a>
                        </li>
                        
                        <!-- Genel Müdür ve Bölge Sorumlusu için Şube Yönetimi -->
                        <c:if test="${sessionScope.employee.positionId == 1 || sessionScope.employee.positionId == 4}">
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/employee/branches">
                                    <i class="fas fa-building"></i> Şube Yönetimi
                                </a>
                            </li>
                        </c:if>
                        
                        <!-- Şube Müdürü için Çalışan Yönetimi -->
                        <c:if test="${sessionScope.employee.positionId == 2}">
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/employee/staff">
                                    <i class="fas fa-users"></i> Çalışan Yönetimi
                                </a>
                            </li>
                        </c:if>
                        
                        <!-- Depo Görevlisi için Depo İşlemleri -->
                        <c:if test="${sessionScope.employee.positionId == 3}">
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/employee/warehouse">
                                    <i class="fas fa-warehouse"></i> Depo İşlemleri
                                </a>
                            </li>
                        </c:if>
                        
                        <!-- Kurye için Teslimat İşlemleri -->
                        <c:if test="${sessionScope.employee.positionId == 5}">
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/employee/delivery">
                                    <i class="fas fa-truck"></i> Teslimat İşlemleri
                                </a>
                            </li>
                        </c:if>
                        
                        <!-- Raporlar - Genel Müdür, Bölge Sorumlusu, Şube Müdürü -->
                        <c:if test="${sessionScope.employee.positionId == 1 || sessionScope.employee.positionId == 4 || sessionScope.employee.positionId == 2}">
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/employee/reports">
                                    <i class="fas fa-chart-line"></i> Raporlar
                                </a>
                            </li>
                        </c:if>
                        
                        <!-- Genel Müdür için Sistem Yönetimi -->
                        <c:if test="${sessionScope.employee.positionId == 1}">
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/employee/system">
                                    <i class="fas fa-cogs"></i> Sistem Yönetimi
                                </a>
                            </li>
                        </c:if>
                    </ul>
                    
                    <hr class="my-3" style="border-color: rgba(255,255,255,0.2);">
                    
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/employee/profile">
                                <i class="fas fa-user"></i> Profil
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
                    <h1 class="h2">
                        <i class="fas fa-tachometer-alt"></i> 
                        ${sessionScope.employee.positionName} Dashboard
                    </h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group me-2">
                            <button type="button" class="btn btn-sm btn-outline-secondary">
                                <i class="fas fa-download"></i> Rapor İndir
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Pozisyon Bazlı Hoşgeldin Mesajı -->
                <div class="alert alert-info" role="alert">
                    <h5><i class="fas fa-info-circle"></i> Hoş Geldiniz!</h5>
                    <c:choose>
                        <c:when test="${sessionScope.employee.positionId == 1}">
                            <p class="mb-0">Genel Müdür olarak şirketin tüm operasyonlarını yönetebilir, stratejik raporları inceleyebilir ve sistem ayarlarını yapabilirsiniz.</p>
                        </c:when>
                        <c:when test="${sessionScope.employee.positionId == 2}">
                            <p class="mb-0">Şube Müdürü olarak ${sessionScope.employee.branchName} şubesinin operasyonlarını yönetebilir ve çalışanlarınızı koordine edebilirsiniz.</p>
                        </c:when>
                        <c:when test="${sessionScope.employee.positionId == 3}">
                            <p class="mb-0">Depo Görevlisi olarak kargo teslim alma, hazırlama ve kuryelere teslim etme işlemlerini gerçekleştirebilirsiniz.</p>
                        </c:when>
                        <c:when test="${sessionScope.employee.positionId == 4}">
                            <p class="mb-0">Bölge Sorumlusu olarak bölgenizdeki şubeleri denetleyebilir ve bölgesel raporları inceleyebilirsiniz.</p>
                        </c:when>
                        <c:when test="${sessionScope.employee.positionId == 5}">
                            <p class="mb-0">Kurye olarak size atanan teslimatları görüntüleyebilir ve teslim durumlarını güncelleyebilirsiniz.</p>
                        </c:when>
                    </c:choose>
                </div>

                <!-- Stats Cards -->
                <div class="row mb-4">
                    <div class="col-md-3 mb-3">
                        <div class="card stats-card bg-primary text-white">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="card-title">${stats.todayCargos}</h4>
                                        <p class="card-text">Bugünkü Kargolar</p>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fas fa-box fa-2x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 mb-3">
                        <div class="card stats-card bg-success text-white">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="card-title">${stats.deliveredCargos}</h4>
                                        <p class="card-text">Teslim Edilen</p>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fas fa-check-circle fa-2x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 mb-3">
                        <div class="card stats-card bg-warning text-white">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="card-title">${stats.inDeliveryCargos}</h4>
                                        <p class="card-text">Dağıtımda</p>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fas fa-truck fa-2x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 mb-3">
                        <div class="card stats-card bg-info text-white">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="card-title">${stats.pendingCargos}</h4>
                                        <p class="card-text">Bekleyen</p>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fas fa-clock fa-2x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pozisyon Bazlı Özel Kartlar -->
                <div class="row mb-4">
                    <!-- Genel Müdür için Şube Performansı -->
                    <c:if test="${sessionScope.employee.positionId == 1}">
                        <div class="col-md-6 mb-3">
                            <div class="card">
                                <div class="card-header bg-primary text-white">
                                    <h5><i class="fas fa-chart-bar"></i> Şube Performansı</h5>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-sm">
                                            <thead>
                                                <tr>
                                                    <th>Şube</th>
                                                    <th>Günlük Kargo</th>
                                                    <th>Başarı Oranı</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Merkez Şube</td>
                                                    <td>45</td>
                                                    <td><span class="badge bg-success">95%</span></td>
                                                </tr>
                                                <tr>
                                                    <td>Kadıköy Şube</td>
                                                    <td>32</td>
                                                    <td><span class="badge bg-warning">87%</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    
                    <!-- Şube Müdürü için Çalışan Performansı -->
                    <c:if test="${sessionScope.employee.positionId == 2}">
                        <div class="col-md-6 mb-3">
                            <div class="card">
                                <div class="card-header bg-success text-white">
                                    <h5><i class="fas fa-users"></i> Çalışan Performansı</h5>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-sm">
                                            <thead>
                                                <tr>
                                                    <th>Çalışan</th>
                                                    <th>Pozisyon</th>
                                                    <th>Günlük İşlem</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Ahmet Yılmaz</td>
                                                    <td>Depo Görevlisi</td>
                                                    <td><span class="badge bg-success">25 kargo</span></td>
                                                </tr>
                                                <tr>
                                                    <td>Mehmet Kaya</td>
                                                    <td>Kurye</td>
                                                    <td><span class="badge bg-info">18 teslimat</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    
                    <!-- Kurye için Teslimat Listesi -->
                    <c:if test="${sessionScope.employee.positionId == 5}">
                        <div class="col-md-6 mb-3">
                            <div class="card">
                                <div class="card-header bg-warning text-white">
                                    <h5><i class="fas fa-route"></i> Bugünkü Teslimatlar</h5>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-sm">
                                            <thead>
                                                <tr>
                                                    <th>Kargo No</th>
                                                    <th>Adres</th>
                                                    <th>Durum</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>KT202408090001</td>
                                                    <td>Kadıköy, İstanbul</td>
                                                    <td><span class="badge bg-warning">Yolda</span></td>
                                                </tr>
                                                <tr>
                                                    <td>KT202408090002</td>
                                                    <td>Beşiktaş, İstanbul</td>
                                                    <td><span class="badge bg-info">Bekliyor</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </div>

                <!-- Recent Activities -->
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">
                                <h5><i class="fas fa-clock"></i> Son Aktiviteler</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Tarih</th>
                                                <th>Kargo No</th>
                                                <th>İşlem</th>
                                                <th>Durum</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>09.08.2024 14:30</td>
                                                <td>KT202408090001</td>
                                                <td>Kargo teslim edildi</td>
                                                <td><span class="badge bg-success">Teslim Edildi</span></td>
                                            </tr>
                                            <tr>
                                                <td>09.08.2024 13:15</td>
                                                <td>KT202408090002</td>
                                                <td>Dağıtıma çıktı</td>
                                                <td><span class="badge bg-warning">Dağıtımda</span></td>
                                            </tr>
                                            <tr>
                                                <td>09.08.2024 12:45</td>
                                                <td>KT202408090003</td>
                                                <td>Şubeye ulaştı</td>
                                                <td><span class="badge bg-info">Şubede</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">
                                <h5><i class="fas fa-tasks"></i> Hızlı İşlemler</h5>
                            </div>
                            <div class="card-body">
                                <div class="d-grid gap-2">
                                    <a href="${pageContext.request.contextPath}/employee/cargos" class="btn btn-primary">
                                        <i class="fas fa-box"></i> Kargo Listesi
                                    </a>
                                    <a href="${pageContext.request.contextPath}/employee/status-update" class="btn btn-success">
                                        <i class="fas fa-edit"></i> Durum Güncelle
                                    </a>
                                    <a href="${pageContext.request.contextPath}/track" class="btn btn-info">
                                        <i class="fas fa-search"></i> Kargo Ara
                                    </a>
                                    
                                    <!-- Pozisyon bazlı özel butonlar -->
                                    <c:if test="${sessionScope.employee.positionId == 1 || sessionScope.employee.positionId == 4 || sessionScope.employee.positionId == 2}">
                                        <a href="${pageContext.request.contextPath}/employee/reports" class="btn btn-warning">
                                            <i class="fas fa-file-alt"></i> Rapor Oluştur
                                        </a>
                                    </c:if>
                                    
                                    <c:if test="${sessionScope.employee.positionId == 3}">
                                        <a href="${pageContext.request.contextPath}/employee/warehouse" class="btn btn-secondary">
                                            <i class="fas fa-warehouse"></i> Depo İşlemleri
                                        </a>
                                    </c:if>
                                    
                                    <c:if test="${sessionScope.employee.positionId == 5}">
                                        <a href="${pageContext.request.contextPath}/employee/delivery" class="btn btn-warning">
                                            <i class="fas fa-truck"></i> Teslimat Listesi
                                        </a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                        
                        <div class="card mt-3">
                            <div class="card-header">
                                <h5><i class="fas fa-bell"></i> Bildirimler</h5>
                            </div>
                            <div class="card-body">
                                <div class="alert alert-info" role="alert">
                                    <i class="fas fa-info-circle"></i> 3 adet kargo dağıtıma hazır.
                                </div>
                                <div class="alert alert-warning" role="alert">
                                    <i class="fas fa-exclamation-triangle"></i> 1 adet kargo teslim edilemedi.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
