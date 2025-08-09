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
            border: none;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .feature-card:hover {
            transform: translateY(-5px);
        }
        .tracking-section {
            background-color: #f8f9fa;
            padding: 80px 0;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold text-primary" href="index.jsp">
                <i class="fas fa-shipping-fast"></i> KargoTakip
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
                        <a class="nav-link" href="#features">Özellikler</a>
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
                    <h1 class="display-4 fw-bold mb-4">Hızlı ve Güvenli Kargo Takip</h1>
                    <p class="lead mb-4">Kargonuzun durumunu anlık olarak takip edin. Güvenli, hızlı ve kolay kullanım.</p>
                    <a href="register" class="btn btn-light btn-lg me-3">Hemen Başla</a>
                    <a href="#tracking" class="btn btn-outline-light btn-lg">Kargo Takip</a>
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
                    <div class="card shadow">
                        <div class="card-body p-5">
                            <h2 class="text-center mb-4">Kargo Takip</h2>
                            <form action="track" method="post">
                                <div class="input-group input-group-lg">
                                    <input type="text" class="form-control" name="trackingNo" 
                                           placeholder="Kargo takip numaranızı girin" required>
                                    <button class="btn btn-primary" type="submit">
                                        <i class="fas fa-search"></i> Takip Et
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
    <section id="features" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center mb-5">
                    <h2 class="display-5 fw-bold">Neden Bizi Seçmelisiniz?</h2>
                    <p class="lead text-muted">Modern teknoloji ile güvenli kargo hizmeti</p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 mb-4">
                    <div class="card feature-card h-100">
                        <div class="card-body text-center p-4">
                            <div class="mb-3">
                                <i class="fas fa-map-marker-alt fa-3x text-primary"></i>
                            </div>
                            <h5 class="card-title">Canlı Konum Takibi</h5>
                            <p class="card-text">Kargonuzun gerçek zamanlı konumunu haritada görün.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-4">
                    <div class="card feature-card h-100">
                        <div class="card-body text-center p-4">
                            <div class="mb-3">
                                <i class="fas fa-shield-alt fa-3x text-success"></i>
                            </div>
                            <h5 class="card-title">Güvenli Teslimat</h5>
                            <p class="card-text">Kargolarınız güvenli ellerde, sigortalı teslimat.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-4">
                    <div class="card feature-card h-100">
                        <div class="card-body text-center p-4">
                            <div class="mb-3">
                                <i class="fas fa-clock fa-3x text-warning"></i>
                            </div>
                            <h5 class="card-title">Hızlı Teslimat</h5>
                            <p class="card-text">Aynı gün ve ertesi gün teslimat seçenekleri.</p>
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
                <div class="col-lg-6">
                    <h5><i class="fas fa-shipping-fast"></i> KargoTakip</h5>
                    <p>Güvenilir kargo hizmetleri</p>
                </div>
                <div class="col-lg-6 text-end">
                    <p>&copy; 2024 KargoTakip. Tüm hakları saklıdır.</p>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>