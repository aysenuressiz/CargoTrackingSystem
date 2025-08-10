<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kargolarım - Kargo Takip Sistemi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .sidebar {
            min-height: 100vh;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }
        .sidebar .nav-link {
            color: white;
            padding: 15px 20px;
            border-radius: 10px;
            margin: 5px 0;
            transition: all 0.3s;
        }
        .sidebar .nav-link:hover {
            background: rgba(255,255,255,0.1);
            transform: translateX(5px);
        }
        .sidebar .nav-link.active {
            background: rgba(255,255,255,0.2);
        }
        .main-content {
            background-color: #f8f9fa;
            min-height: 100vh;
        }
        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
        }
        .card-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border-radius: 15px 15px 0 0 !important;
            padding: 20px;
        }
        .btn-primary {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            border-radius: 10px;
            padding: 10px 25px;
        }
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        .nav-tabs .nav-link {
            border-radius: 10px 10px 0 0;
            border: none;
            color: #6c757d;
            font-weight: 500;
        }
        .nav-tabs .nav-link.active {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }
        .cargo-card {
            border: 1px solid #e9ecef;
            border-radius: 10px;
            padding: 15px;
            margin-bottom: 15px;
            transition: all 0.3s;
        }
        .cargo-card:hover {
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transform: translateY(-2px);
        }
        .status-badge {
            font-size: 0.8rem;
            padding: 5px 10px;
            border-radius: 20px;
        }
        .status-active { background-color: #28a745; color: white; }
        .status-delivered { background-color: #17a2b8; color: white; }
        .status-cancelled { background-color: #dc3545; color: white; }
        .status-pending { background-color: #ffc107; color: black; }
        .search-box {
            background: white;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
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
                        <i class="fas fa-user-circle fa-3x text-white mb-2"></i>
                        <h5 class="text-white">Müşteri Paneli</h5>
                        <p class="text-white-50">Hoş geldiniz, ${user.firstName} ${user.lastName}</p>
                    </div>
                    
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="dashboard">
                                <i class="fas fa-tachometer-alt me-2"></i>
                                Dashboard
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="profile">
                                <i class="fas fa-user me-2"></i>
                                Profil Bilgileri
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="cargos">
                                <i class="fas fa-box me-2"></i>
                                Kargolarım
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../track">
                                <i class="fas fa-search me-2"></i>
                                Kargo Takip
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../logout">
                                <i class="fas fa-sign-out-alt me-2"></i>
                                Çıkış Yap
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>

            <!-- Main content -->
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main-content">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">
                        <i class="fas fa-box me-2"></i>
                        Kargolarım
                    </h1>
                </div>

                <!-- Search Box -->
                <div class="search-box">
                    <form action="cargos" method="post" class="row g-3">
                        <input type="hidden" name="action" value="trackCargo">
                        <div class="col-md-8">
                            <label for="trackingNo" class="form-label">Kargo Takip Numarası</label>
                            <input type="text" class="form-control" id="trackingNo" name="trackingNo" 
                                   placeholder="Takip numarasını giriniz...">
                        </div>
                        <div class="col-md-4 d-flex align-items-end">
                            <button type="submit" class="btn btn-primary w-100">
                                <i class="fas fa-search me-2"></i>
                                Kargo Ara
                            </button>
                        </div>
                    </form>
                </div>

                <!-- Alert Messages -->
                <c:if test="${not empty error}">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <i class="fas fa-exclamation-circle me-2"></i>
                        ${error}
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                </c:if>

                <!-- Cargo Statistics -->
                <div class="row mb-4">
                    <div class="col-md-3">
                        <div class="card text-center">
                            <div class="card-body">
                                <i class="fas fa-shipping-fast fa-2x text-primary mb-2"></i>
                                <h5 class="card-title">Aktif Kargolar</h5>
                                <h3 class="text-primary">${activeCargos.size()}</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card text-center">
                            <div class="card-body">
                                <i class="fas fa-check-circle fa-2x text-success mb-2"></i>
                                <h5 class="card-title">Tamamlanan</h5>
                                <h3 class="text-success">${completedCargos.size()}</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card text-center">
                            <div class="card-body">
                                <i class="fas fa-paper-plane fa-2x text-info mb-2"></i>
                                <h5 class="card-title">Gönderdiğim</h5>
                                <h3 class="text-info">${sentCargos.size()}</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card text-center">
                            <div class="card-body">
                                <i class="fas fa-download fa-2x text-warning mb-2"></i>
                                <h5 class="card-title">Aldığım</h5>
                                <h3 class="text-warning">${receivedCargos.size()}</h3>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Cargo Tabs -->
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0">
                            <i class="fas fa-list me-2"></i>
                            Kargo Listesi
                        </h5>
                    </div>
                    <div class="card-body">
                        <ul class="nav nav-tabs" id="cargoTabs" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="active-tab" data-bs-toggle="tab" data-bs-target="#active" type="button" role="tab">
                                    <i class="fas fa-shipping-fast me-2"></i>
                                    Aktif Kargolar (${activeCargos.size()})
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="sent-tab" data-bs-toggle="tab" data-bs-target="#sent" type="button" role="tab">
                                    <i class="fas fa-paper-plane me-2"></i>
                                    Gönderdiğim (${sentCargos.size()})
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="received-tab" data-bs-toggle="tab" data-bs-target="#received" type="button" role="tab">
                                    <i class="fas fa-download me-2"></i>
                                    Aldığım (${receivedCargos.size()})
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="completed-tab" data-bs-toggle="tab" data-bs-target="#completed" type="button" role="tab">
                                    <i class="fas fa-check-circle me-2"></i>
                                    Tamamlanan (${completedCargos.size()})
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="cancelled-tab" data-bs-toggle="tab" data-bs-target="#cancelled" type="button" role="tab">
                                    <i class="fas fa-times-circle me-2"></i>
                                    İptal Edilen (${cancelledCargos.size()})
                                </button>
                            </li>
                        </ul>
                        
                        <div class="tab-content" id="cargoTabsContent">
                            <!-- Active Cargos -->
                            <div class="tab-pane fade show active" id="active" role="tabpanel">
                                <div class="mt-3">
                                    <c:choose>
                                        <c:when test="${empty activeCargos}">
                                            <div class="text-center py-5">
                                                <i class="fas fa-box-open fa-3x text-muted mb-3"></i>
                                                <h5 class="text-muted">Aktif kargonuz bulunmamaktadır.</h5>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <c:forEach var="cargo" items="${activeCargos}">
                                                <div class="cargo-card">
                                                    <div class="row align-items-center">
                                                        <div class="col-md-3">
                                                            <strong>Takip No:</strong> ${cargo.trackingNo}<br>
                                                            <small class="text-muted">${cargo.contentDescription}</small>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <strong>Durum:</strong><br>
                                                            <span class="status-badge status-active">${cargo.currentStatus}</span>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <strong>Gönderim Tarihi:</strong><br>
                                                            <fmt:formatDate value="${cargo.shippingDate}" pattern="dd.MM.yyyy HH:mm"/>
                                                        </div>
                                                        <div class="col-md-3 text-end">
                                                            <a href="../track?trackingNo=${cargo.trackingNo}" class="btn btn-sm btn-primary">
                                                                <i class="fas fa-search me-1"></i>
                                                                Detay
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>

                            <!-- Sent Cargos -->
                            <div class="tab-pane fade" id="sent" role="tabpanel">
                                <div class="mt-3">
                                    <c:choose>
                                        <c:when test="${empty sentCargos}">
                                            <div class="text-center py-5">
                                                <i class="fas fa-paper-plane fa-3x text-muted mb-3"></i>
                                                <h5 class="text-muted">Henüz kargo göndermemişsiniz.</h5>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <c:forEach var="cargo" items="${sentCargos}">
                                                <div class="cargo-card">
                                                    <div class="row align-items-center">
                                                        <div class="col-md-3">
                                                            <strong>Takip No:</strong> ${cargo.trackingNo}<br>
                                                            <small class="text-muted">Alıcı: ${cargo.receiverName}</small>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <strong>Durum:</strong><br>
                                                            <span class="status-badge status-${cargo.currentStatus == 'Teslim Edildi' ? 'delivered' : 'pending'}">${cargo.currentStatus}</span>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <strong>Gönderim Tarihi:</strong><br>
                                                            <fmt:formatDate value="${cargo.shippingDate}" pattern="dd.MM.yyyy HH:mm"/>
                                                        </div>
                                                        <div class="col-md-3 text-end">
                                                            <a href="../track?trackingNo=${cargo.trackingNo}" class="btn btn-sm btn-primary">
                                                                <i class="fas fa-search me-1"></i>
                                                                Detay
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>

                            <!-- Received Cargos -->
                            <div class="tab-pane fade" id="received" role="tabpanel">
                                <div class="mt-3">
                                    <c:choose>
                                        <c:when test="${empty receivedCargos}">
                                            <div class="text-center py-5">
                                                <i class="fas fa-download fa-3x text-muted mb-3"></i>
                                                <h5 class="text-muted">Henüz kargo almamışsınız.</h5>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <c:forEach var="cargo" items="${receivedCargos}">
                                                <div class="cargo-card">
                                                    <div class="row align-items-center">
                                                        <div class="col-md-3">
                                                            <strong>Takip No:</strong> ${cargo.trackingNo}<br>
                                                            <small class="text-muted">Gönderen: ${cargo.senderName}</small>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <strong>Durum:</strong><br>
                                                            <span class="status-badge status-${cargo.currentStatus == 'Teslim Edildi' ? 'delivered' : 'pending'}">${cargo.currentStatus}</span>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <strong>Gönderim Tarihi:</strong><br>
                                                            <fmt:formatDate value="${cargo.shippingDate}" pattern="dd.MM.yyyy HH:mm"/>
                                                        </div>
                                                        <div class="col-md-3 text-end">
                                                            <a href="../track?trackingNo=${cargo.trackingNo}" class="btn btn-sm btn-primary">
                                                                <i class="fas fa-search me-1"></i>
                                                                Detay
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>

                            <!-- Completed Cargos -->
                            <div class="tab-pane fade" id="completed" role="tabpanel">
                                <div class="mt-3">
                                    <c:choose>
                                        <c:when test="${empty completedCargos}">
                                            <div class="text-center py-5">
                                                <i class="fas fa-check-circle fa-3x text-muted mb-3"></i>
                                                <h5 class="text-muted">Tamamlanan kargonuz bulunmamaktadır.</h5>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <c:forEach var="cargo" items="${completedCargos}">
                                                <div class="cargo-card">
                                                    <div class="row align-items-center">
                                                        <div class="col-md-3">
                                                            <strong>Takip No:</strong> ${cargo.trackingNo}<br>
                                                            <small class="text-muted">${cargo.contentDescription}</small>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <strong>Durum:</strong><br>
                                                            <span class="status-badge status-delivered">${cargo.currentStatus}</span>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <strong>Teslim Tarihi:</strong><br>
                                                            <fmt:formatDate value="${cargo.deliveryDate}" pattern="dd.MM.yyyy HH:mm"/>
                                                        </div>
                                                        <div class="col-md-3 text-end">
                                                            <a href="../track?trackingNo=${cargo.trackingNo}" class="btn btn-sm btn-primary">
                                                                <i class="fas fa-search me-1"></i>
                                                                Detay
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>

                            <!-- Cancelled Cargos -->
                            <div class="tab-pane fade" id="cancelled" role="tabpanel">
                                <div class="mt-3">
                                    <c:choose>
                                        <c:when test="${empty cancelledCargos}">
                                            <div class="text-center py-5">
                                                <i class="fas fa-times-circle fa-3x text-muted mb-3"></i>
                                                <h5 class="text-muted">İptal edilen kargonuz bulunmamaktadır.</h5>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <c:forEach var="cargo" items="${cancelledCargos}">
                                                <div class="cargo-card">
                                                    <div class="row align-items-center">
                                                        <div class="col-md-3">
                                                            <strong>Takip No:</strong> ${cargo.trackingNo}<br>
                                                            <small class="text-muted">${cargo.contentDescription}</small>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <strong>Durum:</strong><br>
                                                            <span class="status-badge status-cancelled">${cargo.currentStatus}</span>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <strong>Gönderim Tarihi:</strong><br>
                                                            <fmt:formatDate value="${cargo.shippingDate}" pattern="dd.MM.yyyy HH:mm"/>
                                                        </div>
                                                        <div class="col-md-3 text-end">
                                                            <a href="../track?trackingNo=${cargo.trackingNo}" class="btn btn-sm btn-primary">
                                                                <i class="fas fa-search me-1"></i>
                                                                Detay
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
