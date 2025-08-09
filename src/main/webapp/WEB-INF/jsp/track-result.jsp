<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kargo Takip Sonucu - ${trackingNo}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .tracking-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 60px 0;
        }
        .status-timeline {
            position: relative;
            padding-left: 30px;
        }
        .status-timeline::before {
            content: '';
            position: absolute;
            left: 15px;
            top: 0;
            bottom: 0;
            width: 2px;
            background: #e9ecef;
        }
        .timeline-item {
            position: relative;
            margin-bottom: 30px;
        }
        .timeline-item::before {
            content: '';
            position: absolute;
            left: -22px;
            top: 8px;
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background: #6c757d;
            border: 3px solid white;
            box-shadow: 0 0 0 3px #e9ecef;
        }
        .timeline-item.active::before {
            background: #198754;
            box-shadow: 0 0 0 3px #198754;
        }
        .timeline-item.current::before {
            background: #0d6efd;
            box-shadow: 0 0 0 3px #0d6efd;
        }
        .cargo-info-card {
            border: none;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .map-container {
            height: 400px;
            background: #f8f9fa;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
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
            <div class="navbar-nav ms-auto">
                <a class="nav-link" href="index.jsp">Ana Sayfa</a>
                <a class="nav-link" href="login">Giriş Yap</a>
            </div>
        </div>
    </nav>

    <!-- Header -->
    <section class="tracking-header">
        <div class="container text-center">
            <h1><i class="fas fa-search"></i> Kargo Takip Sonucu</h1>
            <p class="lead">Takip No: <strong>${trackingNo}</strong></p>
        </div>
    </section>

    <div class="container my-5">
        <c:choose>
            <c:when test="${not empty error}">
                <!-- Error Message -->
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="alert alert-danger text-center" role="alert">
                            <i class="fas fa-exclamation-triangle fa-3x mb-3"></i>
                            <h4>Kargo Bulunamadı</h4>
                            <p>${error}</p>
                            <a href="index.jsp" class="btn btn-primary">
                                <i class="fas fa-arrow-left"></i> Yeniden Ara
                            </a>
                        </div>
                    </div>
                </div>
            </c:when>
            <c:otherwise>
                <!-- Cargo Information -->
                <div class="row mb-4">
                    <div class="col-lg-6">
                        <div class="card cargo-info-card h-100">
                            <div class="card-header bg-primary text-white">
                                <h5><i class="fas fa-box"></i> Kargo Bilgileri</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-6">
                                        <strong>Takip No:</strong><br>
                                        <span class="text-primary">${cargo.trackingNo}</span>
                                    </div>
                                    <div class="col-6">
                                        <strong>Durum:</strong><br>
                                        <c:choose>
                                            <c:when test="${cargo.currentStatus eq 'Teslim Edildi'}">
                                                <span class="badge bg-success">${cargo.currentStatus}</span>
                                            </c:when>
                                            <c:when test="${cargo.currentStatus eq 'Dağıtıma Çıktı'}">
                                                <span class="badge bg-warning">${cargo.currentStatus}</span>
                                            </c:when>
                                            <c:when test="${cargo.currentStatus eq 'Teslim Edilemedi' || cargo.currentStatus eq 'İptal Edildi'}">
                                                <span class="badge bg-danger">${cargo.currentStatus}</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="badge bg-info">${cargo.currentStatus}</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-6">
                                        <strong>Ağırlık:</strong><br>
                                        ${cargo.weight} kg
                                    </div>
                                    <div class="col-6">
                                        <strong>Gönderim Tarihi:</strong><br>
                                        <fmt:formatDate value="${cargo.shippingDate}" pattern="dd.MM.yyyy HH:mm" />
                                    </div>
                                </div>
                                <c:if test="${not empty cargo.deliveryDate}">
                                    <hr>
                                    <div class="row">
                                        <div class="col-12">
                                            <strong>Teslimat Tarihi:</strong><br>
                                            <fmt:formatDate value="${cargo.deliveryDate}" pattern="dd.MM.yyyy HH:mm" />
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${not empty cargo.contentDescription}">
                                    <hr>
                                    <div class="row">
                                        <div class="col-12">
                                            <strong>İçerik Açıklaması:</strong><br>
                                            ${cargo.contentDescription}
                                        </div>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-6">
                        <div class="card cargo-info-card h-100">
                            <div class="card-header bg-success text-white">
                                <h5><i class="fas fa-route"></i> Gönderici & Alıcı</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-6">
                                        <h6><i class="fas fa-user"></i> Gönderici</h6>
                                        <p class="mb-2"><strong>${cargo.senderName}</strong></p>
                                        <c:if test="${not empty cargo.senderAddress}">
                                            <small class="text-muted">${cargo.senderAddress}</small>
                                        </c:if>
                                    </div>
                                    <div class="col-6">
                                        <h6><i class="fas fa-user-check"></i> Alıcı</h6>
                                        <p class="mb-2"><strong>${cargo.receiverName}</strong></p>
                                        <c:if test="${not empty cargo.receiverAddress}">
                                            <small class="text-muted">${cargo.receiverAddress}</small>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Status Timeline -->
                <div class="row">
                    <div class="col-lg-8">
                        <div class="card cargo-info-card">
                            <div class="card-header bg-info text-white">
                                <h5><i class="fas fa-history"></i> Kargo Geçmişi</h5>
                            </div>
                            <div class="card-body">
                                <c:choose>
                                    <c:when test="${not empty statusHistory}">
                                        <div class="status-timeline">
                                            <c:forEach var="status" items="${statusHistory}" varStatus="loop">
                                                <div class="timeline-item ${loop.index == 0 ? 'current' : 'active'}">
                                                    <div class="d-flex justify-content-between align-items-start">
                                                        <div>
                                                            <h6 class="mb-1">${status.statusName}</h6>
                                                            <p class="mb-1 text-muted">
                                                                <small>
                                                                    <fmt:formatDate value="${status.updatedDate}" pattern="dd.MM.yyyy HH:mm" />
                                                                    <c:if test="${not empty status.updatedByName}">
                                                                        - ${status.updatedByName}
                                                                    </c:if>
                                                                </small>
                                                            </p>
                                                        </div>
                                                        <c:if test="${loop.index == 0}">
                                                            <span class="badge bg-primary">Güncel</span>
                                                        </c:if>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <p class="text-muted">Henüz durum güncellemesi bulunmuyor.</p>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4">
                        <!-- Live Tracking Map (Placeholder) -->
                        <c:if test="${cargo.currentStatus eq 'Dağıtıma Çıktı'}">
                            <div class="card cargo-info-card">
                                <div class="card-header bg-warning text-white">
                                    <h5><i class="fas fa-map-marker-alt"></i> Canlı Takip</h5>
                                </div>
                                <div class="card-body">
                                    <div class="map-container">
                                        <div class="text-center">
                                            <i class="fas fa-map-marker-alt fa-3x text-primary mb-3"></i>
                                            <p class="text-muted">Kargonuz dağıtıma çıktı!</p>
                                            <button class="btn btn-primary" onclick="showLiveMap()">
                                                <i class="fas fa-eye"></i> Canlı Haritada Gör
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        
                        <!-- Actions -->
                        <div class="card cargo-info-card mt-3">
                            <div class="card-header bg-secondary text-white">
                                <h5><i class="fas fa-tools"></i> İşlemler</h5>
                            </div>
                            <div class="card-body">
                                <div class="d-grid gap-2">
                                    <button class="btn btn-outline-primary" onclick="printTrackingInfo()">
                                        <i class="fas fa-print"></i> Yazdır
                                    </button>
                                    <button class="btn btn-outline-info" onclick="shareTracking()">
                                        <i class="fas fa-share"></i> Paylaş
                                    </button>
                                    <a href="index.jsp" class="btn btn-outline-secondary">
                                        <i class="fas fa-search"></i> Başka Kargo Ara
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-light py-4 mt-5">
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
    <script>
        function showLiveMap() {
            // Gerçek uygulamada burada Google Maps API ile canlı konum gösterilecek
            alert('Canlı harita özelliği yakında aktif olacak!');
        }
        
        function printTrackingInfo() {
            window.print();
        }
        
        function shareTracking() {
            if (navigator.share) {
                navigator.share({
                    title: 'Kargo Takip - ${trackingNo}',
                    text: 'Kargom: ${cargo.currentStatus}',
                    url: window.location.href
                });
            } else {
                // Fallback for browsers that don't support Web Share API
                const url = window.location.href;
                navigator.clipboard.writeText(url).then(() => {
                    alert('Takip linki panoya kopyalandı!');
                });
            }
        }
    </script>
</body>
</html>