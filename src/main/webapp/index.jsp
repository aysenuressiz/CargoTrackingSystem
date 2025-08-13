<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kargo Takip Sistemi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .hero-section {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 100px 0;
        }
        .feature-card {
            transition: transform 0.3s;
        }
        .feature-card:hover {
            transform: translateY(-5px);
        }
        .tracking-section {
            background: #f8f9fa;
            padding: 80px 0;
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <i class="fas fa-shipping-fast me-2"></i>Kargo Takip
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#tracking">Kargo Takip</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login">Giriş Yap</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register">Kayıt Ol</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <h1 class="display-4 fw-bold mb-4">Hızlı ve Güvenli Kargo Takibi</h1>
                    <p class="lead mb-4">Kargolarınızı gerçek zamanlı olarak takip edin. Müşteri ve şirket hesapları ile kolay erişim sağlayın.</p>
                    <div class="d-flex gap-3">
                        <a href="register" class="btn btn-light btn-lg">Kayıt Ol</a>
                        <a href="jsp/login" class="btn btn-outline-light btn-lg">Giriş Yap</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <img src="https://via.placeholder.com/500x400/667eea/ffffff?text=Kargo+Takip" class="img-fluid rounded" alt="Kargo Takip">
                </div>
            </div>
        </div>
    </section>

    <!-- Tracking Section -->
    <section id="tracking" class="tracking-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="text-center mb-5">
                        <h2 class="h1 fw-bold">Kargo Takip</h2>
                        <p class="lead text-muted">Takip numaranızı girerek kargonuzun durumunu öğrenin</p>
                    </div>
                    
                    <div class="card shadow-lg">
                        <div class="card-body p-5">
                            <form action="track" method="post">
                                <div class="input-group input-group-lg">
                                    <input type="text" name="trackingNo" class="form-control" 
                                           placeholder="Takip numaranızı giriniz (ör: TRK1234567890)" required>
                                    <button class="btn btn-primary" type="submit">
                                        <i class="fas fa-search me-2"></i>Takip Et
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="py-5">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="h1 fw-bold">Özelliklerimiz</h2>
                <p class="lead text-muted">Kargo takip sistemi ile sunduğumuz hizmetler</p>
            </div>
            
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card h-100 feature-card border-0 shadow">
                        <div class="card-body text-center p-4">
                            <div class="mb-3">
                                <i class="fas fa-map-marker-alt fa-3x text-primary"></i>
                            </div>
                            <h5 class="card-title">Gerçek Zamanlı Takip</h5>
                            <p class="card-text">Kargolarınızı harita üzerinde canlı olarak takip edin</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card h-100 feature-card border-0 shadow">
                        <div class="card-body text-center p-4">
                            <div class="mb-3">
                                <i class="fas fa-shield-alt fa-3x text-success"></i>
                            </div>
                            <h5 class="card-title">Güvenli Sistem</h5>
                            <p class="card-text">Verileriniz güvenli bir şekilde korunur</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card h-100 feature-card border-0 shadow">
                        <div class="card-body text-center p-4">
                            <div class="mb-3">
                                <i class="fas fa-users fa-3x text-info"></i>
                            </div>
								<h5 class="card-title">Müşteri &amp; Şirket</h5>                            <p class="card-text">Hem bireysel hem de kurumsal hesap seçenekleri</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-light py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h5>Kargo Takip Sistemi</h5>
                    <p class="mb-0">Güvenli ve hızlı kargo takip hizmeti</p>
                </div>
                <div class="col-md-6 text-md-end">
                    <p class="mb-0">&copy; 2024 Kargo Takip Sistemi. Tüm hakları saklıdır.</p>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
