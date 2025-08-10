<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Kargo Takip Sistemi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
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
        .stats-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .stats-card:hover {
            transform: translateY(-2px);
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
                            <a class="nav-link active" href="${pageContext.request.contextPath}/admin/dashboard">
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
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/cargo">
                                <i class="fas fa-box"></i> Kargo Yönetimi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/reports">
                                <i class="fas fa-chart-line"></i> Raporlar
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/settings">
                                <i class="fas fa-cog"></i> Ayarlar
                            </a>
                        </li>
                    </ul>
                    
                    <hr class="my-3" style="border-color: rgba(255,255,255,0.2);">
                    
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/profile">
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
                    <h1 class="h2">Dashboard</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group me-2">
                            <button type="button" class="btn btn-sm btn-outline-secondary">
                                <i class="fas fa-download"></i> Rapor İndir
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Stats Cards -->
                <div class="row mb-4">
                    <div class="col-md-3 mb-3">
                        <div class="card stats-card bg-primary text-white">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="card-title">${totalUsers}</h4>
                                        <p class="card-text">Toplam Kullanıcı</p>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fas fa-users fa-2x"></i>
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
                                        <h4 class="card-title">${totalEmployees}</h4>
                                        <p class="card-text">Çalışan Sayısı</p>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fas fa-user-tie fa-2x"></i>
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
                                        <h4 class="card-title">${totalCustomers}</h4>
                                        <p class="card-text">Müşteri Sayısı</p>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fas fa-user fa-2x"></i>
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
                                        <h4 class="card-title">${totalCompanies}</h4>
                                        <p class="card-text">Şirket Sayısı</p>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fas fa-building fa-2x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Recent Activity -->
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">
                                <h5><i class="fas fa-chart-line"></i> Son Aktiviteler</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Tarih</th>
                                                <th>Aktivite</th>
                                                <th>Kullanıcı</th>
                                                <th>Durum</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>09.08.2024 14:30</td>
                                                <td>Yeni kullanıcı kaydı</td>
                                                <td>ali.yilmaz@email.com</td>
                                                <td><span class="badge bg-success">Başarılı</span></td>
                                            </tr>
                                            <tr>
                                                <td>09.08.2024 13:15</td>
                                                <td>Kargo teslim edildi</td>
                                                <td>KT202408090001</td>
                                                <td><span class="badge bg-success">Teslim Edildi</span></td>
                                            </tr>
                                            <tr>
                                                <td>09.08.2024 12:45</td>
                                                <td>Şube eklendi</td>
                                                <td>Ankara Çankaya</td>
                                                <td><span class="badge bg-info">Aktif</span></td>
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
                                    <a href="${pageContext.request.contextPath}/admin/create-user" class="btn btn-primary">
                                        <i class="fas fa-user-plus"></i> Yeni Kullanıcı Ekle
                                    </a>
                                    <a href="${pageContext.request.contextPath}/admin/create-branch" class="btn btn-success">
                                        <i class="fas fa-plus"></i> Yeni Şube Ekle
                                    </a>
                                    <a href="${pageContext.request.contextPath}/admin/cargo" class="btn btn-info">
                                        <i class="fas fa-search"></i> Kargo Ara
                                    </a>
                                    <a href="${pageContext.request.contextPath}/admin/reports" class="btn btn-warning">
                                        <i class="fas fa-file-alt"></i> Rapor Oluştur
                                    </a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="card mt-3">
                            <div class="card-header">
                                <h5><i class="fas fa-bell"></i> Sistem Bildirimleri</h5>
                            </div>
                            <div class="card-body">
                                <div class="alert alert-info" role="alert">
                                    <i class="fas fa-info-circle"></i> Sistem bakımı 15.08.2024 02:00'da yapılacaktır.
                                </div>
                                <div class="alert alert-warning" role="alert">
                                    <i class="fas fa-exclamation-triangle"></i> 5 adet kargo teslim edilemedi durumunda.
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