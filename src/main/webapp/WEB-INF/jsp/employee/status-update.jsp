<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kargo Durum Güncelleme - Kargo Takip Sistemi</title>
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
        .status-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .status-card:hover {
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
                        <h4 class="text-white"><i class="fas fa-user-tie"></i> Çalışan Paneli</h4>
                        <small class="text-white-50">${sessionScope.employee.firstName} ${sessionScope.employee.lastName}</small>
                        <br>
                        <span class="badge bg-light text-dark">
                            <i class="fas fa-id-badge"></i> ${sessionScope.employee.positionName}
                        </span>
                    </div>
                    
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/employee/dashboard">
                                <i class="fas fa-tachometer-alt"></i> Dashboard
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/employee/cargos">
                                <i class="fas fa-box"></i> Kargo Yönetimi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="${pageContext.request.contextPath}/employee/status-update">
                                <i class="fas fa-edit"></i> Durum Güncelle
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/employee/tracking">
                                <i class="fas fa-search"></i> Kargo Takip
                            </a>
                        </li>
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
                        <i class="fas fa-edit"></i> Kargo Durum Güncelleme
                    </h1>
                </div>

                <!-- Mesajlar -->
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

                <!-- Hızlı Durum Güncelleme -->
                <div class="row mb-4">
                    <div class="col-md-6">
                        <div class="card status-card">
                            <div class="card-header bg-primary text-white">
                                <h5><i class="fas fa-edit"></i> Hızlı Durum Güncelleme</h5>
                            </div>
                            <div class="card-body">
                                <form action="${pageContext.request.contextPath}/employee/status-update" method="post">
                                    <input type="hidden" name="action" value="updateStatus">
                                    
                                    <div class="mb-3">
                                        <label for="trackingNo" class="form-label">Kargo Takip Numarası</label>
                                        <input type="text" class="form-control" id="trackingNo" name="trackingNo" 
                                               placeholder="KT202408090001" required>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="statusId" class="form-label">Yeni Durum</label>
                                        <select class="form-select" id="statusId" name="statusId" required>
                                            <option value="">Durum Seçin</option>
                                            <c:forEach items="${statuses}" var="status">
                                                <option value="${status.statusTypeId}">${status.statusName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="notes" class="form-label">Notlar (Opsiyonel)</label>
                                        <textarea class="form-control" id="notes" name="notes" rows="3" 
                                                  placeholder="Durum güncellemesi hakkında notlar..."></textarea>
                                    </div>
                                    
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fas fa-save"></i> Durumu Güncelle
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-6">
                        <div class="card status-card">
                            <div class="card-header bg-info text-white">
                                <h5><i class="fas fa-info-circle"></i> Durum Kodları</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-sm">
                                        <thead>
                                            <tr>
                                                <th>Durum</th>
                                                <th>Açıklama</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><span class="badge bg-secondary">Kargo Alındı</span></td>
                                                <td>Kargo şubeye teslim alındı</td>
                                            </tr>
                                            <tr>
                                                <td><span class="badge bg-info">Transfer Merkezinde</span></td>
                                                <td>Kargo transfer merkezinde işleniyor</td>
                                            </tr>
                                            <tr>
                                                <td><span class="badge bg-primary">Şubede</span></td>
                                                <td>Kargo hedef şubeye ulaştı</td>
                                            </tr>
                                            <tr>
                                                <td><span class="badge bg-warning">Dağıtıma Çıktı</span></td>
                                                <td>Kurye kargoyu teslim etmek için yola çıktı</td>
                                            </tr>
                                            <tr>
                                                <td><span class="badge bg-success">Teslim Edildi</span></td>
                                                <td>Kargo başarıyla teslim edildi</td>
                                            </tr>
                                            <tr>
                                                <td><span class="badge bg-danger">Teslim Edilemedi</span></td>
                                                <td>Kargo teslim edilemedi</td>
                                            </tr>
                                            <tr>
                                                <td><span class="badge bg-warning">İade Edildi</span></td>
                                                <td>Kargo iade edildi</td>
                                            </tr>
                                            <tr>
                                                <td><span class="badge bg-dark">İptal Edildi</span></td>
                                                <td>Kargo iptal edildi</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Kargo Listesi -->
                <div class="card">
                    <div class="card-header">
                        <h5><i class="fas fa-list"></i> Güncellenebilir Kargolar</h5>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>Takip No</th>
                                        <th>Gönderen</th>
                                        <th>Alıcı</th>
                                        <th>Mevcut Durum</th>
                                        <th>Gönderim Tarihi</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${cargos}" var="cargo">
                                        <tr>
                                            <td>
                                                <strong>${cargo.trackingNo}</strong>
                                            </td>
                                            <td>
                                                <div>${cargo.senderName}</div>
                                                <small class="text-muted">${cargo.senderAddress}</small>
                                            </td>
                                            <td>
                                                <div>${cargo.receiverName}</div>
                                                <small class="text-muted">${cargo.receiverAddress}</small>
                                            </td>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${cargo.currentStatus == 'Teslim Edildi'}">
                                                        <span class="badge bg-success">${cargo.currentStatus}</span>
                                                    </c:when>
                                                    <c:when test="${cargo.currentStatus == 'Dağıtıma Çıktı'}">
                                                        <span class="badge bg-warning">${cargo.currentStatus}</span>
                                                    </c:when>
                                                    <c:when test="${cargo.currentStatus == 'Şubede'}">
                                                        <span class="badge bg-primary">${cargo.currentStatus}</span>
                                                    </c:when>
                                                    <c:when test="${cargo.currentStatus == 'Teslim Edilemedi'}">
                                                        <span class="badge bg-danger">${cargo.currentStatus}</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span class="badge bg-secondary">${cargo.currentStatus}</span>
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td>
                                                <fmt:formatDate value="${cargo.shippingDate}" pattern="dd.MM.yyyy HH:mm"/>
                                            </td>
                                            <td>
                                                <button class="btn btn-sm btn-primary" 
                                                        onclick="fillTrackingNumber('${cargo.trackingNo}')">
                                                    <i class="fas fa-edit"></i> Güncelle
                                                </button>
                                                <a href="${pageContext.request.contextPath}/track?trackingNo=${cargo.trackingNo}" 
                                                   class="btn btn-sm btn-info" target="_blank">
                                                    <i class="fas fa-eye"></i> Detay
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        
                        <c:if test="${empty cargos}">
                            <div class="text-center py-4">
                                <i class="fas fa-box-open fa-3x text-muted mb-3"></i>
                                <h5 class="text-muted">Güncellenebilir kargo bulunamadı</h5>
                                <p class="text-muted">Pozisyonunuza göre güncelleyebileceğiniz kargo bulunmuyor.</p>
                            </div>
                        </c:if>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function fillTrackingNumber(trackingNo) {
            document.getElementById('trackingNo').value = trackingNo;
            document.getElementById('trackingNo').focus();
        }
        
        // Form validasyonu
        document.querySelector('form').addEventListener('submit', function(e) {
            const trackingNo = document.getElementById('trackingNo').value;
            const statusId = document.getElementById('statusId').value;
            
            if (!trackingNo.trim()) {
                e.preventDefault();
                alert('Lütfen kargo takip numarasını girin.');
                return;
            }
            
            if (!statusId) {
                e.preventDefault();
                alert('Lütfen yeni durumu seçin.');
                return;
            }
        });
    </script>
</body>
</html>
