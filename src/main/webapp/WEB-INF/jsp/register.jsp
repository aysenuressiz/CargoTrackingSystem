<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kayıt Ol - Kargo Takip Sistemi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .register-container {
            min-height: 100vh;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            padding: 50px 0;
        }
        .register-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
        }
        .user-type-card {
            transition: all 0.3s;
            cursor: pointer;
            border: 2px solid transparent;
        }
        .user-type-card.selected {
            border-color: #0d6efd;
            background-color: #e7f3ff;
        }
        .user-type-card:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
    <div class="register-container">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-10">
                    <div class="card register-card shadow-lg border-0">
                        <div class="card-body p-5">
                            <div class="text-center mb-4">
                                <i class="fas fa-shipping-fast fa-3x text-primary mb-3"></i>
                                <h2 class="h3 fw-bold">Kargo Takip Sistemi</h2>
                                <p class="text-muted">Hesap oluşturun</p>
                            </div>

                            <c:if test="${not empty error}">
                                <div class="alert alert-danger" role="alert">
                                    <i class="fas fa-exclamation-triangle me-2"></i>${error}
                                </div>
                            </c:if>

                            <form action="register" method="post" id="registerForm">
                                <!-- User Type Selection -->
                                <div class="mb-4">
                                    <label class="form-label fw-bold">Hesap Türü Seçin</label>
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <div class="card user-type-card h-100" onclick="selectUserType('customer')">
                                                <div class="card-body text-center">
                                                    <i class="fas fa-user fa-2x text-primary mb-2"></i>
                                                    <h5 class="card-title">Bireysel Müşteri</h5>
                                                    <p class="card-text small">Kişisel kargo gönderim ve takibi</p>
                                                    <input type="radio" name="userType" value="customer" class="form-check-input">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="card user-type-card h-100" onclick="selectUserType('company')">
                                                <div class="card-body text-center">
                                                    <i class="fas fa-building fa-2x text-success mb-2"></i>
                                                    <h5 class="card-title">Kurumsal Şirket</h5>
                                                    <p class="card-text small">Toplu kargo gönderim ve yönetimi</p>
                                                    <input type="radio" name="userType" value="company" class="form-check-input">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Common Fields -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="email" class="form-label">Email Adresi</label>
                                            <div class="input-group">
                                                <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                                <input type="email" class="form-control" id="email" name="email" 
                                                       placeholder="ornek@email.com" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="phone" class="form-label">Telefon</label>
                                            <div class="input-group">
                                                <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                                <input type="tel" class="form-control" id="phone" name="phone" 
                                                       placeholder="0555 123 45 67" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="password" class="form-label">Şifre</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                        <input type="password" class="form-control" id="password" name="password" 
                                               placeholder="En az 8 karakter" required minlength="8">
                                        <button class="btn btn-outline-secondary" type="button" onclick="togglePassword('password')">
                                            <i class="fas fa-eye"></i>
                                        </button>
                                    </div>
                                </div>

                                <!-- Customer Specific Fields -->
                                <div id="customerFields" class="d-none">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="firstName" class="form-label">Ad</label>
                                                <input type="text" class="form-control" id="firstName" name="firstName" 
                                                       placeholder="Adınız">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="lastName" class="form-label">Soyad</label>
                                                <input type="text" class="form-control" id="lastName" name="lastName" 
                                                       placeholder="Soyadınız">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="identityNo" class="form-label">TC Kimlik No</label>
                                        <input type="text" class="form-control" id="identityNo" name="identityNo" 
                                               placeholder="12345678901" maxlength="11">
                                    </div>
                                </div>

                                <!-- Company Specific Fields -->
                                <div id="companyFields" class="d-none">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="companyName" class="form-label">Şirket Adı</label>
                                                <input type="text" class="form-control" id="companyName" name="companyName" 
                                                       placeholder="ABC Şirketi">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="taxNo" class="form-label">Vergi No</label>
                                                <input type="text" class="form-control" id="taxNo" name="taxNo" 
                                                       placeholder="1234567890">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="terms" required>
                                    <label class="form-check-label" for="terms">
                                        <a href="#" class="text-decoration-none">Kullanım şartları</a> ve 
                                        <a href="#" class="text-decoration-none">gizlilik politikası</a>nı kabul ediyorum
                                    </label>
                                </div>

                                <div class="d-grid">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        <i class="fas fa-user-plus me-2"></i>Hesap Oluştur
                                    </button>
                                </div>
                            </form>

                            <hr class="my-4">

                            <div class="text-center">
                                <p class="mb-2">Zaten hesabınız var mı?</p>
                                <a href="login" class="btn btn-outline-primary">
                                    <i class="fas fa-sign-in-alt me-2"></i>Giriş Yap
                                </a>
                            </div>

                            <div class="text-center mt-3">
                                <a href="index.jsp" class="text-decoration-none">
                                    <i class="fas fa-arrow-left me-2"></i>Ana Sayfaya Dön
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function selectUserType(type) {
            // Remove previous selections
            document.querySelectorAll('.user-type-card').forEach(card => {
                card.classList.remove('selected');
            });
            
            // Hide all specific fields
            document.getElementById('customerFields').classList.add('d-none');
            document.getElementById('companyFields').classList.add('d-none');
            
            // Select current type
            event.currentTarget.classList.add('selected');
            event.currentTarget.querySelector('input[type="radio"]').checked = true;
            
            // Show specific fields
            if (type === 'customer') {
                document.getElementById('customerFields').classList.remove('d-none');
                document.getElementById('firstName').required = true;
                document.getElementById('lastName').required = true;
                document.getElementById('identityNo').required = true;
                document.getElementById('companyName').required = false;
                document.getElementById('taxNo').required = false;
            } else if (type === 'company') {
                document.getElementById('companyFields').classList.remove('d-none');
                document.getElementById('companyName').required = true;
                document.getElementById('taxNo').required = true;
                document.getElementById('firstName').required = false;
                document.getElementById('lastName').required = false;
                document.getElementById('identityNo').required = false;
            }
        }
        
        function togglePassword(fieldId) {
            const passwordField = document.getElementById(fieldId);
            const toggleIcon = event.currentTarget.querySelector('i');
            
            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                toggleIcon.classList.remove('fa-eye');
                toggleIcon.classList.add('fa-eye-slash');
            } else {
                passwordField.type = 'password';
                toggleIcon.classList.remove('fa-eye-slash');
                toggleIcon.classList.add('fa-eye');
            }
        }
    </script>
</body>
</html>