<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kurye Atama - Kargo Takip Sistemi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .sidebar {
            min-height: 100vh;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
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
        .btn-primary {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            border-radius: 10px;
        }
        .table th {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
        }
        .status-badge {
            padding: 5px 10px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: bold;
        }
        .status-active { background-color: #28a745; color: white; }
        .status-pending { background-color: #ffc107; color: black; }
        .status-delivered { background-color: #17a2b8; color: white; }
        .status-cancelled { background-color: #dc3545; color: white; }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3 col-lg-2 sidebar p-0">
                <div class="d-flex flex-column p-3 text-white">
                    <h4 class="text-center mb-4">
                        <i class="fas fa-truck"></i> Kargo Takip
                    </h4>
                    <hr>
                    <ul class="nav nav-pills flex-column mb-auto">
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/employee/dashboard" class="nav-link text-white">
                                <i class="fas fa-tachometer-alt me-2"></i> Dashboard
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/employee/status-update" class="nav-link text-white">
                                <i class="fas fa-edit me-2"></i> Durum Güncelleme
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/employee/courier-assignment" class="nav-link active">
                                <i class="fas fa-user-tie me-2"></i> Kurye Atama
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/logout" class="nav-link text-white">
                                <i class="fas fa-sign-out-alt me-2"></i> Çıkış
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- Main Content -->
            <div class="col-md-9 col-lg-10 main-content">
                <div class="container-fluid p-4">
                    <!-- Header -->
                    <div class="row mb-4">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h2 class="card-title">
                                        <i class="fas fa-user-tie text-primary"></i> Kurye Atama Sistemi
                                    </h2>
                                    <p class="card-text">
                                        Hoş geldiniz, ${sessionScope.employee.firstName} ${sessionScope.employee.lastName} 
                                        (${sessionScope.employee.positionName})
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Success/Error Messages -->
                    <c:if test="${not empty success}">
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <i class="fas fa-check-circle"></i> ${success}
                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        </div>
                    </c:if>
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <i class="fas fa-exclamation-circle"></i> ${error}
                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        </div>
                    </c:if>

                    <!-- Kurye Atama Formu -->
                    <div class="row mb-4">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5><i class="fas fa-plus-circle"></i> Kurye Atama</h5>
                                </div>
                                <div class="card-body">
                                    <form action="${pageContext.request.contextPath}/employee/courier-assignment" method="post">
                                        <input type="hidden" name="action" value="assignCourier">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="cargoId" class="form-label">Kargo Seçin</label>
                                                    <select class="form-select" id="cargoId" name="cargoId" required>
                                                        <option value="">Kargo seçin...</option>
                                                        <c:forEach var="cargo" items="${availableCargos}">
                                                            <option value="${cargo.cargoId}">
                                                                ${cargo.trackingNo} - ${cargo.contentDescription}
                                                            </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="courierId" class="form-label">Kurye Seçin</label>
                                                    <select class="form-select" id="courierId" name="courierId" required>
                                                        <option value="">Kurye seçin...</option>
                                                        <c:forEach var="courier" items="${couriers}">
                                                            <option value="${courier.employeeId}">
                                                                ${courier.firstName} ${courier.lastName}
                                                            </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary">
                                            <i class="fas fa-user-plus"></i> Kurye Ata
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Kargo Listesi -->
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5><i class="fas fa-list"></i> Kargo Listesi</h5>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Takip No</th>
                                                    <th>Gönderen</th>
                                                    <th>Alıcı</th>
                                                    <th>İçerik</th>
                                                    <th>Ağırlık</th>
                                                    <th>Durum</th>
                                                    <th>Kurye</th>
                                                    <th>İşlemler</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="cargo" items="${availableCargos}">
                                                    <tr>
                                                        <td><strong>${cargo.trackingNo}</strong></td>
                                                        <td>${cargo.senderName}</td>
                                                        <td>${cargo.receiverName}</td>
                                                        <td>${cargo.contentDescription}</td>
                                                        <td>${cargo.weight} kg</td>
                                                        <td>
                                                            <span class="status-badge status-active">
                                                                ${cargo.currentStatus}
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${not empty cargo.courierUserId}">
                                                                    <span class="badge bg-success">Atanmış</span>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <span class="badge bg-warning">Atanmamış</span>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td>
                                                            <button class="btn btn-sm btn-outline-primary" 
                                                                    onclick="updateStatus('${cargo.trackingNo}')">
                                                                <i class="fas fa-edit"></i> Durum Güncelle
                                                            </button>
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
        </div>
    </div>

    <!-- Durum Güncelleme Modal -->
    <div class="modal fade" id="statusModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Kargo Durumu Güncelle</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <form action="${pageContext.request.contextPath}/employee/courier-assignment" method="post">
                    <input type="hidden" name="action" value="updateStatus">
                    <input type="hidden" id="modalCargoId" name="cargoId">
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="statusId" class="form-label">Yeni Durum</label>
                            <select class="form-select" id="statusId" name="statusId" required>
                                <option value="">Durum seçin...</option>
                                <option value="1">Kargo Alındı</option>
                                <option value="2">Transfer Merkezinde</option>
                                <option value="3">Şubede</option>
                                <option value="4">Dağıtıma Çıktı</option>
                                <option value="5">Teslim Edildi</option>
                                <option value="6">Teslim Edilemedi</option>
                                <option value="7">İade Edildi</option>
                                <option value="8">İptal Edildi</option>
                                <option value="9">Yolda</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="message" class="form-label">Mesaj (Opsiyonel)</label>
                            <textarea class="form-control" id="message" name="message" rows="3" 
                                      placeholder="Durum güncellemesi hakkında not..."></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">İptal</button>
                        <button type="submit" class="btn btn-primary">Güncelle</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function updateStatus(trackingNo) {
            // Tracking number'dan cargo ID'yi bul
            const cargoRow = document.querySelector(`tr:has(td:contains('${trackingNo}'))`);
            if (cargoRow) {
                const cargoId = cargoRow.querySelector('option[value]').value;
                document.getElementById('modalCargoId').value = cargoId;
                new bootstrap.Modal(document.getElementById('statusModal')).show();
            }
        }
    </script>
</body>
</html>
