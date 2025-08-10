<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kargo Yönetimi - Şirket Paneli</title>
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
        .stats-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .stats-card:hover {
            transform: translateY(-2px);
        }
        .cargo-table {
            border-radius: 10px;
            overflow: hidden;
        }
        .status-badge {
            font-size: 0.8em;
            padding: 0.4em 0.8em;
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
                            <a class="nav-link active" href="${pageContext.request.contextPath}/company/cargos">
                                <i class="fas fa-box"></i> Kargo Yönetimi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/company/bulk-send">
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
                    <h1 class="h2">Kargo Yönetimi</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <a href="${pageContext.request.contextPath}/company/bulk-send" class="btn btn-warning">
                            <i class="fas fa-truck"></i> Toplu Kargo Gönder
                        </a>
                    </div>
                </div>

                <!-- Alert Messages -->
                <c:if test="${not empty error}">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <i class="fas fa-exclamation-triangle"></i> ${error}
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                </c:if>

                <!-- Statistics Cards -->
                <div class="row mb-4">
                    <div class="col-md-2 mb-3">
                        <div class="card stats-card bg-warning text-white">
                            <div class="card-body text-center">
                                <h4 class="card-title">${totalSent}</h4>
                                <p class="card-text">Gönderilen</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 mb-3">
                        <div class="card stats-card bg-info text-white">
                            <div class="card-body text-center">
                                <h4 class="card-title">${totalReceived}</h4>
                                <p class="card-text">Alınan</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 mb-3">
                        <div class="card stats-card bg-primary text-white">
                            <div class="card-body text-center">
                                <h4 class="card-title">${totalActive}</h4>
                                <p class="card-text">Aktif</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 mb-3">
                        <div class="card stats-card bg-success text-white">
                            <div class="card-body text-center">
                                <h4 class="card-title">${totalCompleted}</h4>
                                <p class="card-text">Tamamlanan</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 mb-3">
                        <div class="card stats-card bg-danger text-white">
                            <div class="card-body text-center">
                                <h4 class="card-title">${totalCancelled}</h4>
                                <p class="card-text">İptal</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 mb-3">
                        <div class="card stats-card bg-secondary text-white">
                            <div class="card-body text-center">
                                <h4 class="card-title">${totalSent + totalReceived}</h4>
                                <p class="card-text">Toplam</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Search Box -->
                <div class="row mb-4">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <form action="${pageContext.request.contextPath}/company/cargos" method="post">
                                    <input type="hidden" name="action" value="search">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="trackingNo" 
                                               placeholder="Kargo numarası ile ara..." 
                                               value="${searchTrackingNo}">
                                        <button class="btn btn-warning" type="submit">
                                            <i class="fas fa-search"></i> Ara
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Search Result -->
                <c:if test="${not empty searchResult}">
                    <div class="row mb-4">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header bg-success text-white">
                                    <h5 class="mb-0"><i class="fas fa-search"></i> Arama Sonucu</h5>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <p><strong>Kargo No:</strong> ${searchResult.trackingNo}</p>
                                            <p><strong>Durum:</strong> 
                                                <span class="badge bg-primary status-badge">${searchResult.currentStatus}</span>
                                            </p>
                                            <p><strong>İçerik:</strong> ${searchResult.contentDescription}</p>
                                        </div>
                                        <div class="col-md-6">
                                            <p><strong>Gönderim Tarihi:</strong> 
                                                <fmt:formatDate value="${searchResult.shippingDate}" pattern="dd.MM.yyyy HH:mm"/>
                                            </p>
                                            <p><strong>Teslim Tarihi:</strong> 
                                                <c:choose>
                                                    <c:when test="${not empty searchResult.deliveryDate}">
                                                        <fmt:formatDate value="${searchResult.deliveryDate}" pattern="dd.MM.yyyy HH:mm"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span class="text-muted">Henüz teslim edilmedi</span>
                                                    </c:otherwise>
                                                </c:choose>
                                            </p>
                                            <p><strong>Ağırlık:</strong> ${searchResult.weight} kg</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>

                <!-- Cargo Tabs -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <ul class="nav nav-tabs card-header-tabs" id="cargoTabs" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active" id="sent-tab" data-bs-toggle="tab" 
                                                data-bs-target="#sent" type="button" role="tab">
                                            <i class="fas fa-paper-plane"></i> Gönderilen (${totalSent})
                                        </button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="received-tab" data-bs-toggle="tab" 
                                                data-bs-target="#received" type="button" role="tab">
                                            <i class="fas fa-inbox"></i> Alınan (${totalReceived})
                                        </button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="active-tab" data-bs-toggle="tab" 
                                                data-bs-target="#active" type="button" role="tab">
                                            <i class="fas fa-clock"></i> Aktif (${totalActive})
                                        </button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="completed-tab" data-bs-toggle="tab" 
                                                data-bs-target="#completed" type="button" role="tab">
                                            <i class="fas fa-check-circle"></i> Tamamlanan (${totalCompleted})
                                        </button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="cancelled-tab" data-bs-toggle="tab" 
                                                data-bs-target="#cancelled" type="button" role="tab">
                                            <i class="fas fa-times-circle"></i> İptal (${totalCancelled})
                                        </button>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-body">
                                <div class="tab-content" id="cargoTabsContent">
                                    <!-- Sent Cargos -->
                                    <div class="tab-pane fade show active" id="sent" role="tabpanel">
                                        <div class="table-responsive">
                                            <table class="table table-striped cargo-table">
                                                <thead class="table-warning">
                                                    <tr>
                                                        <th>Kargo No</th>
                                                        <th>Alıcı</th>
                                                        <th>İçerik</th>
                                                        <th>Durum</th>
                                                        <th>Gönderim Tarihi</th>
                                                        <th>İşlemler</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${sentCargos}" var="cargo">
                                                        <tr>
                                                            <td><strong>${cargo.trackingNo}</strong></td>
                                                            <td>${cargo.receiverName}</td>
                                                            <td>${cargo.contentDescription}</td>
                                                            <td>
                                                                <span class="badge bg-primary status-badge">${cargo.currentStatus}</span>
                                                            </td>
                                                            <td>
                                                                <fmt:formatDate value="${cargo.shippingDate}" pattern="dd.MM.yyyy"/>
                                                            </td>
                                                            <td>
                                                                <a href="${pageContext.request.contextPath}/track?trackingNo=${cargo.trackingNo}" 
                                                                   class="btn btn-sm btn-outline-primary" target="_blank">
                                                                    <i class="fas fa-eye"></i> Detay
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <!-- Received Cargos -->
                                    <div class="tab-pane fade" id="received" role="tabpanel">
                                        <div class="table-responsive">
                                            <table class="table table-striped cargo-table">
                                                <thead class="table-info">
                                                    <tr>
                                                        <th>Kargo No</th>
                                                        <th>Gönderen</th>
                                                        <th>İçerik</th>
                                                        <th>Durum</th>
                                                        <th>Gönderim Tarihi</th>
                                                        <th>İşlemler</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${receivedCargos}" var="cargo">
                                                        <tr>
                                                            <td><strong>${cargo.trackingNo}</strong></td>
                                                            <td>${cargo.senderName}</td>
                                                            <td>${cargo.contentDescription}</td>
                                                            <td>
                                                                <span class="badge bg-primary status-badge">${cargo.currentStatus}</span>
                                                            </td>
                                                            <td>
                                                                <fmt:formatDate value="${cargo.shippingDate}" pattern="dd.MM.yyyy"/>
                                                            </td>
                                                            <td>
                                                                <a href="${pageContext.request.contextPath}/track?trackingNo=${cargo.trackingNo}" 
                                                                   class="btn btn-sm btn-outline-info" target="_blank">
                                                                    <i class="fas fa-eye"></i> Detay
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <!-- Active Cargos -->
                                    <div class="tab-pane fade" id="active" role="tabpanel">
                                        <div class="table-responsive">
                                            <table class="table table-striped cargo-table">
                                                <thead class="table-primary">
                                                    <tr>
                                                        <th>Kargo No</th>
                                                        <th>Gönderen/Alıcı</th>
                                                        <th>İçerik</th>
                                                        <th>Durum</th>
                                                        <th>Gönderim Tarihi</th>
                                                        <th>İşlemler</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${activeCargos}" var="cargo">
                                                        <tr>
                                                            <td><strong>${cargo.trackingNo}</strong></td>
                                                            <td>
                                                                <c:choose>
                                                                    <c:when test="${cargo.senderUserId == sessionScope.user.userId}">
                                                                        <span class="text-success">→ ${cargo.receiverName}</span>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <span class="text-info">← ${cargo.senderName}</span>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </td>
                                                            <td>${cargo.contentDescription}</td>
                                                            <td>
                                                                <span class="badge bg-warning status-badge">${cargo.currentStatus}</span>
                                                            </td>
                                                            <td>
                                                                <fmt:formatDate value="${cargo.shippingDate}" pattern="dd.MM.yyyy"/>
                                                            </td>
                                                            <td>
                                                                <a href="${pageContext.request.contextPath}/track?trackingNo=${cargo.trackingNo}" 
                                                                   class="btn btn-sm btn-outline-warning" target="_blank">
                                                                    <i class="fas fa-eye"></i> Detay
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <!-- Completed Cargos -->
                                    <div class="tab-pane fade" id="completed" role="tabpanel">
                                        <div class="table-responsive">
                                            <table class="table table-striped cargo-table">
                                                <thead class="table-success">
                                                    <tr>
                                                        <th>Kargo No</th>
                                                        <th>Gönderen/Alıcı</th>
                                                        <th>İçerik</th>
                                                        <th>Teslim Tarihi</th>
                                                        <th>Gönderim Tarihi</th>
                                                        <th>İşlemler</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${completedCargos}" var="cargo">
                                                        <tr>
                                                            <td><strong>${cargo.trackingNo}</strong></td>
                                                            <td>
                                                                <c:choose>
                                                                    <c:when test="${cargo.senderUserId == sessionScope.user.userId}">
                                                                        <span class="text-success">→ ${cargo.receiverName}</span>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <span class="text-info">← ${cargo.senderName}</span>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </td>
                                                            <td>${cargo.contentDescription}</td>
                                                            <td>
                                                                <fmt:formatDate value="${cargo.deliveryDate}" pattern="dd.MM.yyyy"/>
                                                            </td>
                                                            <td>
                                                                <fmt:formatDate value="${cargo.shippingDate}" pattern="dd.MM.yyyy"/>
                                                            </td>
                                                            <td>
                                                                <a href="${pageContext.request.contextPath}/track?trackingNo=${cargo.trackingNo}" 
                                                                   class="btn btn-sm btn-outline-success" target="_blank">
                                                                    <i class="fas fa-eye"></i> Detay
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <!-- Cancelled Cargos -->
                                    <div class="tab-pane fade" id="cancelled" role="tabpanel">
                                        <div class="table-responsive">
                                            <table class="table table-striped cargo-table">
                                                <thead class="table-danger">
                                                    <tr>
                                                        <th>Kargo No</th>
                                                        <th>Gönderen/Alıcı</th>
                                                        <th>İçerik</th>
                                                        <th>Durum</th>
                                                        <th>Gönderim Tarihi</th>
                                                        <th>İşlemler</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${cancelledCargos}" var="cargo">
                                                        <tr>
                                                            <td><strong>${cargo.trackingNo}</strong></td>
                                                            <td>
                                                                <c:choose>
                                                                    <c:when test="${cargo.senderUserId == sessionScope.user.userId}">
                                                                        <span class="text-success">→ ${cargo.receiverName}</span>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <span class="text-info">← ${cargo.senderName}</span>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </td>
                                                            <td>${cargo.contentDescription}</td>
                                                            <td>
                                                                <span class="badge bg-danger status-badge">${cargo.currentStatus}</span>
                                                            </td>
                                                            <td>
                                                                <fmt:formatDate value="${cargo.shippingDate}" pattern="dd.MM.yyyy"/>
                                                            </td>
                                                            <td>
                                                                <a href="${pageContext.request.contextPath}/track?trackingNo=${cargo.trackingNo}" 
                                                                   class="btn btn-sm btn-outline-danger" target="_blank">
                                                                    <i class="fas fa-eye"></i> Detay
                                                                </a>
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
                    </div>
                </div>
            </main>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
