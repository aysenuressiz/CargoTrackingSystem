<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kargo Takip Sonucu - Kargo Takip Sistemi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .tracking-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 50px 0;
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
            background: #dee2e6;
        }
        .status-item {
            position: relative;
            margin-bottom: 30px;
            padding-left: 20px;
        }
        .status-item::before {
            content: '';
            position: absolute;
            left: -9px;
            top: 5px;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            background: #6c757d;
            border: 3px solid white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .status-item.active::before {
            background: #28a745;
        }
        .status-item.current::before {
            background: #007bff;
            box-shadow: 0 0 0 4px rgba(0,123,255,0.2);
        }
        .cargo-card {
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="tracking-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col">
                    <h1 class="h2 mb-0">
                        <i class="fas fa-search me-2"></i>Kargo Takip Sonucu
                    </h1>
                </div>
                <div class="col-auto">
                    <a href="index.jsp" class="btn btn-light">
                        <i class="fas fa-arrow-left me-2"></i>Ana Sayfa
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="container py-5">
        <c:if test="${not empty error}">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="card cargo-card border-0">
                        <div class="card-body text-center p-5">
                            <i class="fas fa-exclamation-triangle fa-3x text-warning mb-3"></i>
                            <h3 class="h4 text-danger mb-3">Kargo Bulunamadı</h3>
                            <p class="text-muted mb-4">${error}</p>
                            
                            <!-- New Search Form -->
                            <div class="card bg-light">
                                <div class="card-body">
                                    <h5 class="card-title">Tekrar Ara</h5>
                                    <form action="track" method="post">
                                        <div class="input-group">
                                            <input type="text" name="trackingNo" class="form-control" 
                                                   placeholder="Takip numaranızı giriniz" required>
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
            </div>
        </c:if>

        <c:if test="${not empty cargo}">
            <div class="row">
                <!-- Cargo Information -->
                <div class="col-lg-8">
                    <div class="card cargo-card border-0 mb-4">
                        <div class="card-header bg-primary text-white">
                            <h3 class="h5 mb-0">
                                <i class="fas fa-box me-2"></i>Kargo Bilgileri
                            </h3>
                        </div>
                        <div class="card-body p-4">
                            <div class="row">
                                <div class="col-md-6">
                                    <h6 class="text-muted">Takip Numarası</h6>
                                    <p class="fw-bold fs-5 text-primary">${cargo.trackingNo}</p>
                                </div>
                                <div class="col-md-6">
                                    <h6 class="text-muted">Güncel Durum</h6>
                                    <p class="fw-bold">
                                        <span class="badge bg-info fs-6">${cargo.currentStatus}</span>
                                    </p>
                                </div>
                            </div>
                            
                            <hr>
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <h6 class="text-muted">Gönderen</h6>
                                    <p class="mb-1 fw-bold">${cargo.senderName}</p>
                                    <c:if test="${not empty cargo.senderAddress}">
                                        <p class="text-muted small">${cargo.senderAddress}</p>
                                    </c:if>
                                </div>
                                <div class="col-md-6">
                                    <h6 class="text-muted">Alıcı</h6>
                                    <p class="mb-1 fw-bold">${cargo.receiverName}</p>
                                    <c:if test="${not empty cargo.receiverAddress}">
                                        <p class="text-muted small">${cargo.receiverAddress}</p>
                                    </c:if>
                                </div>
                            </div>
                            
                            <hr>
                            
                            <div class="row">
                                <div class="col-md-4">
                                    <h6 class="text-muted">Ağırlık</h6>
                                    <p class="mb-0">${cargo.weight} kg</p>
                                </div>
                                <div class="col-md-4">
                                    <h6 class="text-muted">Gönderim Tarihi</h6>
                                    <p class="mb-0">
                                        <fmt:formatDate value="${cargo.shippingDate}" pattern="dd.MM.yyyy HH:mm"/>
                                    </p>
                                </div>
                                <div class="col-md-4">
                                    <h6 class="text-muted">İçerik</h6>
                                    <p class="mb-0">${cargo.contentDescription}</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Live Tracking Map Placeholder -->
                    <div class="card cargo-card border-0">
                        <div class="card-header bg-success text-white">
                            <h3 class="h5 mb-0">
                                <i class="fas fa-map-marker-alt me-2"></i>Canlı Konum Takibi
                            </h3>
                        </div>
                        <div class="card-body p-4">
                            <div class="text-center p-5" style="background: #f8f9fa; border-radius: 10px;">
                                <i class="fas fa-map fa-3x text-muted mb-3"></i>
                                <h5 class="text-muted">Harita Yükleniyor...</h5>
                                <p class="text-muted">Kargonuzun güncel konumu haritada gösterilecek</p>
                                <div class="d-flex justify-content-center">
                                    <div class="spinner-border text-primary" role="status">
                                        <span class="visually-hidden">Yükleniyor...</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Status Timeline -->
                <div class="col-lg-4">
                    <div class="card cargo-card border-0">
                        <div class="card-header bg-info text-white">
                            <h3 class="h5 mb-0">
                                <i class="fas fa-clock me-2"></i>Durum Geçmişi
                            </h3>
                        </div>
                        <div class="card-body p-4">
                            <c:choose>
                                <c:when test="${not empty statusHistory}">
                                    <div class="status-timeline">
                                        <c:forEach var="status" items="${statusHistory}" varStatus="loop">
                                            <div class="status-item ${loop.index == 0 ? 'current' : (loop.index < 3 ? 'active' : '')}">
                                                <div class="d-flex justify-content-between align-items-start">
                                                    <div>
                                                        <h6 class="mb-1">${status.statusName}</h6>
                                                        <p class="text-muted small mb-1">
                                                            <fmt:formatDate value="${status.updatedDate}" pattern="dd.MM.yyyy HH:mm"/>
                                                        </p>
                                                        <c:if test="${not empty status.updatedByName}">
                                                            <p class="text-muted small mb-0">
                                                                Güncellenen: ${status.updatedByName}
                                                            </p>
                                                        </c:if>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="text-center p-3">
                                        <i class="fas fa-info-circle fa-2x text-muted mb-2"></i>
                                        <p class="text-muted">Henüz durum güncellemesi yok</p>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>

        <!-- Search Again -->
        <div class="row mt-4">
            <div class="col-12">
                <div class="card border-0 bg-light">
                    <div class="card-body text-center p-4">
                        <h5 class="mb-3">Başka Bir Kargo Takip Et</h5>
                        <form action="track" method="post" class="d-flex justify-content-center">
                            <div class="input-group" style="max-width: 400px;">
                                <input type="text" name="trackingNo" class="form-control" 
                                       placeholder="Yeni takip numarası girin" required>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Live tracking simulation -->
    <script>
        // Simulate live tracking updates
        setTimeout(() => {
            const mapContainer = document.querySelector('.card-body .text-center');
            if (mapContainer) {
                mapContainer.innerHTML = `
                    <div style="background: #f8f9fa; border-radius: 10px; padding: 30px;">
                        <i class="fas fa-map-marker-alt fa-2x text-success mb-3"></i>
                        <h5 class="text-success">Konum Tespit Edildi</h5>
                        <p class="text-muted mb-3">Son konum: İstanbul Ataşehir Şubesi</p>
                        <div class="btn-group" role="group">
                            <button type="button" class="btn btn-sm btn-outline-primary">
                                <i class="fas fa-route me-1"></i>Rotayı Gör
                            </button>
                            <button type="button" class="btn btn-sm btn-outline-success">
                                <i class="fas fa-sync-alt me-1"></i>Güncelle
                            </button>
                        </div>
                    </div>
                `;
            }
        }, 3000);
    </script>
</body>
</html>