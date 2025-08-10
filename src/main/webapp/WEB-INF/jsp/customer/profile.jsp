<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Müşteri Profili - Kargo Takip Sistemi</title>
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
        .form-control, .form-select {
            border-radius: 10px;
            border: 2px solid #e9ecef;
            padding: 12px 15px;
        }
        .form-control:focus, .form-select:focus {
            border-color: #667eea;
            box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.25);
        }
        .alert {
            border-radius: 10px;
            border: none;
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
                            <a class="nav-link active" href="profile">
                                <i class="fas fa-user me-2"></i>
                                Profil Bilgileri
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cargos">
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
                        <i class="fas fa-user me-2"></i>
                        Profil Bilgileri
                    </h1>
                </div>

                <!-- Alert Messages -->
                <c:if test="${not empty success}">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <i class="fas fa-check-circle me-2"></i>
                        ${success}
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                </c:if>
                
                <c:if test="${not empty error}">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <i class="fas fa-exclamation-circle me-2"></i>
                        ${error}
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                </c:if>

                <div class="row">
                    <!-- Profil Bilgileri -->
                    <div class="col-lg-6 mb-4">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">
                                    <i class="fas fa-user-edit me-2"></i>
                                    Kişisel Bilgiler
                                </h5>
                            </div>
                            <div class="card-body">
                                <form action="profile" method="post">
                                    <input type="hidden" name="action" value="updateProfile">
                                    
                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <label for="firstName" class="form-label">Ad</label>
                                            <input type="text" class="form-control" id="firstName" name="firstName" 
                                                   value="${customer.firstName}" required>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <label for="lastName" class="form-label">Soyad</label>
                                            <input type="text" class="form-control" id="lastName" name="lastName" 
                                                   value="${customer.lastName}" required>
                                        </div>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="email" class="form-label">E-posta</label>
                                        <input type="email" class="form-control" id="email" name="email" 
                                               value="${user.email}" required>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="phone" class="form-label">Telefon</label>
                                        <input type="tel" class="form-control" id="phone" name="phone" 
                                               value="${user.phone}" required>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="identityNo" class="form-label">TC Kimlik No</label>
                                        <input type="text" class="form-control" id="identityNo" name="identityNo" 
                                               value="${customer.identityNo}" readonly>
                                        <small class="text-muted">TC Kimlik numarası değiştirilemez</small>
                                    </div>
                                    
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fas fa-save me-2"></i>
                                        Bilgileri Güncelle
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Adres Bilgileri -->
                    <div class="col-lg-6 mb-4">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">
                                    <i class="fas fa-map-marker-alt me-2"></i>
                                    Adres Bilgileri
                                </h5>
                            </div>
                            <div class="card-body">
                                <form action="profile" method="post">
                                    <input type="hidden" name="action" value="updateAddress">
                                    
                                    <div class="mb-3">
                                        <label for="cityId" class="form-label">Şehir</label>
                                        <select class="form-select" id="cityId" name="cityId" required>
                                            <option value="">Şehir seçiniz</option>
                                            <c:forEach var="city" items="${cities}">
                                                <option value="${city.cityId}" 
                                                        ${currentCity != null && currentCity.cityId == city.cityId ? 'selected' : ''}>
                                                    ${city.cityName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="districtId" class="form-label">İlçe</label>
                                        <select class="form-select" id="districtId" name="districtId" required>
                                            <option value="">Önce şehir seçiniz</option>
                                            <c:forEach var="district" items="${districts}">
                                                <option value="${district.districtId}" 
                                                        ${currentDistrict != null && currentDistrict.districtId == district.districtId ? 'selected' : ''}>
                                                    ${district.districtName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="neighborhoodId" class="form-label">Mahalle</label>
                                        <select class="form-select" id="neighborhoodId" name="neighborhoodId" required>
                                            <option value="">Önce ilçe seçiniz</option>
                                            <c:forEach var="neighborhood" items="${neighborhoods}">
                                                <option value="${neighborhood.neighborhoodId}" 
                                                        ${currentNeighborhood != null && currentNeighborhood.neighborhoodId == neighborhood.neighborhoodId ? 'selected' : ''}>
                                                    ${neighborhood.neighborhoodName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="fullAddress" class="form-label">Açık Adres</label>
                                        <textarea class="form-control" id="fullAddress" name="fullAddress" rows="3" 
                                                  placeholder="Sokak, cadde, bina no, daire no vb." required>${currentAddress.fullAddress}</textarea>
                                    </div>
                                    
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fas fa-map-marker-alt me-2"></i>
                                        Adresi Güncelle
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Hesap Bilgileri -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">
                                    <i class="fas fa-shield-alt me-2"></i>
                                    Hesap Bilgileri
                                </h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <p><strong>Kullanıcı Adı:</strong> ${user.username}</p>
                                        <p><strong>Üyelik Tarihi:</strong> ${user.createdAt}</p>
                                    </div>
                                    <div class="col-md-6">
                                        <p><strong>Rol:</strong> <span class="badge bg-primary">Müşteri</span></p>
                                        <p><strong>Durum:</strong> <span class="badge bg-success">Aktif</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <script>
        $(document).ready(function() {
            // Şehir değiştiğinde ilçeleri yükle
            $('#cityId').change(function() {
                var cityId = $(this).val();
                if (cityId) {
                    loadDistricts(cityId);
                } else {
                    $('#districtId').html('<option value="">Önce şehir seçiniz</option>');
                    $('#neighborhoodId').html('<option value="">Önce ilçe seçiniz</option>');
                }
            });
            
            // İlçe değiştiğinde mahalleleri yükle
            $('#districtId').change(function() {
                var districtId = $(this).val();
                if (districtId) {
                    loadNeighborhoods(districtId);
                } else {
                    $('#neighborhoodId').html('<option value="">Önce ilçe seçiniz</option>');
                }
            });
            
            function loadDistricts(cityId) {
                $.ajax({
                    url: '../location/districts/' + cityId,
                    type: 'GET',
                    dataType: 'json',
                    success: function(data) {
                        var options = '<option value="">İlçe seçiniz</option>';
                        $.each(data, function(index, district) {
                            options += '<option value="' + district.districtId + '">' + district.districtName + '</option>';
                        });
                        $('#districtId').html(options);
                        $('#neighborhoodId').html('<option value="">Önce ilçe seçiniz</option>');
                    },
                    error: function() {
                        alert('İlçeler yüklenirken hata oluştu.');
                    }
                });
            }
            
            function loadNeighborhoods(districtId) {
                $.ajax({
                    url: '../location/neighborhoods/' + districtId,
                    type: 'GET',
                    dataType: 'json',
                    success: function(data) {
                        var options = '<option value="">Mahalle seçiniz</option>';
                        $.each(data, function(index, neighborhood) {
                            options += '<option value="' + neighborhood.neighborhoodId + '">' + neighborhood.neighborhoodName + '</option>';
                        });
                        $('#neighborhoodId').html(options);
                    },
                    error: function() {
                        alert('Mahalleler yüklenirken hata oluştu.');
                    }
                });
            }
        });
    </script>
</body>
</html>
