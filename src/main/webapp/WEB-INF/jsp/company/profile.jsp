<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Şirket Profili - Kargo Takip Sistemi</title>
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
        .profile-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
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
                            <a class="nav-link" href="${pageContext.request.contextPath}/company/cargos">
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
                            <a class="nav-link active" href="${pageContext.request.contextPath}/company/profile">
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
                    <h1 class="h2">Şirket Profili</h1>
                </div>

                <!-- Alert Messages -->
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

                <div class="row">
                    <!-- Company Information -->
                    <div class="col-md-6 mb-4">
                        <div class="card profile-card">
                            <div class="card-header bg-warning text-white">
                                <h5 class="mb-0"><i class="fas fa-building"></i> Şirket Bilgileri</h5>
                            </div>
                            <div class="card-body">
                                <form action="${pageContext.request.contextPath}/company/profile" method="post">
                                    <input type="hidden" name="action" value="updateProfile">
                                    
                                    <div class="mb-3">
                                        <label for="companyName" class="form-label">Şirket Adı</label>
                                        <input type="text" class="form-control" id="companyName" name="companyName" 
                                               value="${company.companyName}" required>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="taxNo" class="form-label">Vergi Numarası</label>
                                        <input type="text" class="form-control" id="taxNo" name="taxNo" 
                                               value="${company.taxNo}" required>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="phone" class="form-label">Telefon</label>
                                        <input type="tel" class="form-control" id="phone" name="phone" 
                                               value="${sessionScope.user.phone}" required>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="email" class="form-label">E-posta</label>
                                        <input type="email" class="form-control" id="email" name="email" 
                                               value="${sessionScope.user.email}" required>
                                    </div>
                                    
                                    <button type="submit" class="btn btn-warning">
                                        <i class="fas fa-save"></i> Bilgileri Güncelle
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Address Information -->
                    <div class="col-md-6 mb-4">
                        <div class="card profile-card">
                            <div class="card-header bg-info text-white">
                                <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> Adres Bilgileri</h5>
                            </div>
                            <div class="card-body">
                                <form action="${pageContext.request.contextPath}/company/profile" method="post">
                                    <input type="hidden" name="action" value="updateAddress">
                                    
                                    <div class="mb-3">
                                        <label for="cityId" class="form-label">Şehir</label>
                                        <select class="form-select" id="cityId" name="cityId" required>
                                            <option value="">Şehir Seçiniz</option>
                                            <c:forEach items="${cities}" var="city">
                                                <option value="${city.cityId}" 
                                                        ${city.cityId == address.cityId ? 'selected' : ''}>
                                                    ${city.cityName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="districtId" class="form-label">İlçe</label>
                                        <select class="form-select" id="districtId" name="districtId" required>
                                            <option value="">Önce şehir seçiniz</option>
                                            <c:if test="${not empty district}">
                                                <option value="${district.districtId}" selected>
                                                    ${district.districtName}
                                                </option>
                                            </c:if>
                                        </select>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="neighborhoodId" class="form-label">Mahalle</label>
                                        <select class="form-select" id="neighborhoodId" name="neighborhoodId" required>
                                            <option value="">Önce ilçe seçiniz</option>
                                            <c:if test="${not empty neighborhood}">
                                                <option value="${neighborhood.neighborhoodId}" selected>
                                                    ${neighborhood.neighborhoodName}
                                                </option>
                                            </c:if>
                                        </select>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="fullAddress" class="form-label">Açık Adres</label>
                                        <textarea class="form-control" id="fullAddress" name="fullAddress" 
                                                  rows="3" required>${address.fullAddress}</textarea>
                                    </div>
                                    
                                    <button type="submit" class="btn btn-info">
                                        <i class="fas fa-save"></i> Adresi Güncelle
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Company Statistics -->
                <div class="row">
                    <div class="col-12">
                        <div class="card profile-card">
                            <div class="card-header bg-success text-white">
                                <h5 class="mb-0"><i class="fas fa-chart-bar"></i> Şirket İstatistikleri</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3 text-center">
                                        <div class="border rounded p-3">
                                            <h3 class="text-warning">156</h3>
                                            <p class="text-muted">Toplam Kargo</p>
                                        </div>
                                    </div>
                                    <div class="col-md-3 text-center">
                                        <div class="border rounded p-3">
                                            <h3 class="text-success">142</h3>
                                            <p class="text-muted">Teslim Edilen</p>
                                        </div>
                                    </div>
                                    <div class="col-md-3 text-center">
                                        <div class="border rounded p-3">
                                            <h3 class="text-info">12</h3>
                                            <p class="text-muted">Yolda</p>
                                        </div>
                                    </div>
                                    <div class="col-md-3 text-center">
                                        <div class="border rounded p-3">
                                            <h3 class="text-primary">2</h3>
                                            <p class="text-muted">Bekleyen</p>
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
    <script>
        // Dependent dropdowns for location
        document.getElementById('cityId').addEventListener('change', function() {
            const cityId = this.value;
            const districtSelect = document.getElementById('districtId');
            const neighborhoodSelect = document.getElementById('neighborhoodId');
            
            // Clear dependent dropdowns
            districtSelect.innerHTML = '<option value="">İlçe seçiniz</option>';
            neighborhoodSelect.innerHTML = '<option value="">Mahalle seçiniz</option>';
            
            if (cityId) {
                fetch(`${pageContext.request.contextPath}/location?type=districts&cityId=${cityId}`)
                    .then(response => response.json())
                    .then(data => {
                        data.forEach(district => {
                            const option = document.createElement('option');
                            option.value = district.districtId;
                            option.textContent = district.districtName;
                            districtSelect.appendChild(option);
                        });
                    });
            }
        });

        document.getElementById('districtId').addEventListener('change', function() {
            const districtId = this.value;
            const neighborhoodSelect = document.getElementById('neighborhoodId');
            
            // Clear neighborhood dropdown
            neighborhoodSelect.innerHTML = '<option value="">Mahalle seçiniz</option>';
            
            if (districtId) {
                fetch(`${pageContext.request.contextPath}/location?type=neighborhoods&districtId=${districtId}`)
                    .then(response => response.json())
                    .then(data => {
                        data.forEach(neighborhood => {
                            const option = document.createElement('option');
                            option.value = neighborhood.neighborhoodId;
                            option.textContent = neighborhood.neighborhoodName;
                            neighborhoodSelect.appendChild(option);
                        });
                    });
            }
        });
    </script>
</body>
</html>
