<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Müşteri Paneli - Kargo Takip Sistemi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .sidebar {
            min-height: 100vh;
            background: linear-gradient(135deg, #007bff 0%, #0056b3 100%);
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
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav class="col-md-3 col-lg-2 d-md-block sidebar collapse">
                <div class="position-sticky pt-3">
                    <div class="text-center mb-4">
                        <h4 class="text-white"><i class="fas fa-user"></i> Müşteri Paneli</h4>
                        <small class="text-white-50">${sessionScope.user.firstName} ${sessionScope.user.lastName}</small>
                    </div>
                    
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="${pageContext.request.contextPath}/customer/dashboard">
                                <i class="fas fa-tachometer-alt"></i> Dashboard
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/customer/cargos">
                                <i class="fas fa-box"></i> Kargolarım
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/track">
                                <i class="fas fa-search"></i> Kargo Takip
                            </a>
                        </li>
                    </ul>
                    
                    <hr class="my-3" style="border-color: rgba(255,255,255,0.2);">
                    
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/customer/profile">
                                <i class="fas fa-user-cog"></i> Profil Bilgileri
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
                    <h1 class="h2">Müşteri Dashboard</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <a href="${pageContext.request.contextPath}/customer/send-cargo" class="btn btn-primary">
                            <i class="fas fa-plus"></i> Yeni Kargo Gönder
                        </a>
                    </div>
                </div>

                <!-- Stats Cards -->
                <div class="row mb-4">
                    <div class="col-md-3 mb-3">
                        <div class="card stats-card bg-primary text-white">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="card-title">12</h4>
                                        <p class="card-text">Toplam Kargo</p>
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
                                        <h4 class="card-title">8</h4>
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
                                        <h4 class="card-title">3</h4>
                                        <p class="card-text">Yolda</p>
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
                                        <h4 class="card-title">1</h4>
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

                <!-- Recent Cargos -->
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">
                                <h5><i class="fas fa-box"></i> Son Kargolarım</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Takip No</th>
                                                <th>Alıcı</th>
                                                <th>Tarih</th>
                                                <th>Durum</th>
                                                <th>İşlem</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>KT202408090001</td>
                                                <td>Ahmet Yılmaz</td>
                                                <td>09.08.2024</td>
                                                <td><span class="badge bg-success">Teslim Edildi</span></td>
                                                <td><a href="#" class="btn btn-sm btn-outline-primary">Detay</a></td>
                                            </tr>
                                            <tr>
                                                <td>KT202408090002</td>
                                                <td>Mehmet Demir</td>
                                                <td>08.08.2024</td>
                                                <td><span class="badge bg-warning">Yolda</span></td>
                                                <td><a href="#" class="btn btn-sm btn-outline-primary">Takip Et</a></td>
                                            </tr>
                                            <tr>
                                                <td>KT202408090003</td>
                                                <td>Fatma Kaya</td>
                                                <td>07.08.2024</td>
                                                <td><span class="badge bg-info">Şubede</span></td>
                                                <td><a href="#" class="btn btn-sm btn-outline-primary">Detay</a></td>
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
                                    <a href="${pageContext.request.contextPath}/customer/send-cargo" class="btn btn-primary">
                                        <i class="fas fa-paper-plane"></i> Kargo Gönder
                                    </a>
                                    <a href="${pageContext.request.contextPath}/track" class="btn btn-info">
                                        <i class="fas fa-search"></i> Kargo Takip
                                    </a>
                                    <a href="${pageContext.request.contextPath}/customer/addresses" class="btn btn-success">
                                        <i class="fas fa-map-marker-alt"></i> Adres Ekle
                                    </a>
                                    <a href="${pageContext.request.contextPath}/customer/my-cargos" class="btn btn-warning">
                                        <i class="fas fa-list"></i> Tüm Kargolarım
                                    </a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="card mt-3">
                            <div class="card-header">
                                <h5><i class="fas fa-bell"></i> Bildirimler</h5>
                            </div>
                            <div class="card-body">
                                <div class="alert alert-success" role="alert">
                                    <i class="fas fa-check-circle"></i> KT202408090001 kargonuz teslim edildi.
                                </div>
                                <div class="alert alert-info" role="alert">
                                    <i class="fas fa-info-circle"></i> KT202408090002 kargonuz dağıtıma çıktı.
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
