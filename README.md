# Kargo Takip Sistemi

Bu proje, Java Servlet teknolojisi kullanılarak geliştirilmiş kapsamlı bir kargo takip sistemidir.

## 🚀 Özellikler

### Kullanıcı Rolleri
- **Admin**: Sistem yönetimi, kullanıcı yönetimi, şube yönetimi
- **Çalışan**: Kargo işlemleri, durum güncellemeleri (Genel Müdür, Şube Müdürü, Depo Görevlisi, Bölge Sorumlusu, Kurye)
- **Müşteri**: Kargo takibi, adres yönetimi
- **Şirket**: Toplu kargo işlemleri, raporlama

### Ana Özellikler
- ✅ Rol tabanlı erişim kontrolü
- ✅ Güvenli kullanıcı kimlik doğrulama (BCrypt)
- ✅ Kargo takip sistemi
- ✅ Adres yönetimi
- ✅ Şube yönetimi
- ✅ Çalışan yönetimi
- ✅ Modern Bootstrap UI
- ✅ Responsive tasarım

## 🛠️ Teknolojiler

- **Backend**: Java Servlet, JSP
- **Database**: MySQL
- **Frontend**: HTML, CSS, JavaScript, Bootstrap
- **Build Tool**: Maven
- **Server**: Apache Tomcat

## 📋 Gereksinimler

- Java 17+
- Apache Tomcat 10+
- MySQL 8.0+
- Maven 3.6+

## 🚀 Kurulum

### 1. Veritabanı Kurulumu

```bash
# MySQL'de veritabanı oluştur
CREATE DATABASE cargotracking;

# Tablo yapılarını oluştur
mysql -u root -p cargotracking < database.sql

# Örnek verileri ekle
mysql -u root -p cargotracking < insert-database.sql
```

### 2. Proje Kurulumu

```bash
# Projeyi klonla
git clone [repository-url]
cd CargoTrackingSystem

# Maven ile derle
mvn clean package

# WAR dosyasını Tomcat'e deploy et
cp target/CargoTrackingSystem.war $TOMCAT_HOME/webapps/
```

### 3. Veritabanı Bağlantısı

`src/main/java/com/kargo/util/DatabaseUtil.java` dosyasında veritabanı bağlantı bilgilerini güncelleyin:

```java
private static final String URL = "jdbc:mysql://localhost:3306/cargotracking";
private static final String USERNAME = "your_username";
private static final String PASSWORD = "your_password";
```

## 👥 Test Kullanıcıları

### Admin Kullanıcıları
- **Kullanıcı Adı**: `admin_kargo_merkez`
- **Şifre**: `KargoAdmin2024!`
- **Email**: `yonetici@kargo.com.tr`

### Çalışan Kullanıcıları
- **Kullanıcı Adı**: `ali.yildirim_e`
- **Şifre**: `AliYil-1234`
- **Email**: `a.yildirim@kargo.com.tr`

### Müşteri Kullanıcıları
- **Kullanıcı Adı**: `ayse.yilmaz_m`
- **Şifre**: `AyseYilmaz-23`
- **Email**: `ayse.yilmaz@email.com`

### Şirket Kullanıcıları
- **Kullanıcı Adı**: `teknoloji_ltd_c`
- **Şifre**: `Tekno-Pass-01`
- **Email**: `iletisim@teknolojiltd.com.tr`

## 📁 Proje Yapısı

```
CargoTrackingSystem/
├── src/
│   ├── main/
│   │   ├── java/com/kargo/
│   │   │   ├── dao/          # Data Access Objects
│   │   │   ├── model/        # Entity classes
│   │   │   ├── servlet/      # Servlet controllers
│   │   │   └── util/         # Utility classes
│   │   └── webapp/
│   │       ├── WEB-INF/
│   │       │   ├── jsp/      # JSP pages
│   │       │   └── web.xml   # Web configuration
│   │       └── index.jsp     # Main page
├── database.sql              # Database schema
├── insert-database.sql       # Sample data
├── pom.xml                   # Maven configuration
└── README.md                 # This file
```

## 🔐 Güvenlik

- Şifreler BCrypt ile hashlenir
- Session tabanlı kimlik doğrulama
- Rol tabanlı erişim kontrolü
- SQL injection koruması

## 🌐 Erişim

Uygulama kurulumundan sonra:
- **Ana Sayfa**: `http://localhost:8080/CargoTrackingSystem/`
- **Giriş**: `http://localhost:8080/CargoTrackingSystem/login`

## 📝 Veritabanı Dosyaları

### database.sql
Veritabanı tablo yapılarını içerir (CREATE TABLE statements).

### insert-database.sql
Örnek verileri içerir (INSERT statements).

**Kullanım Sırası:**
1. Önce `database.sql` çalıştırın
2. Sonra `insert-database.sql` çalıştırın

## 🔧 Geliştirme

### Yeni Özellik Ekleme
1. Model sınıfı oluştur
2. DAO sınıfı oluştur
3. Servlet controller oluştur
4. JSP view oluştur
5. web.xml'de mapping ekle

### Veritabanı Değişiklikleri
1. `database.sql` dosyasını güncelle
2. İlgili model sınıflarını güncelle
3. DAO sınıflarını güncelle

## 📞 Destek

Herhangi bir sorun yaşarsanız:
1. README dosyasını kontrol edin
2. Veritabanı bağlantısını kontrol edin
3. Tomcat loglarını kontrol edin

## 📄 Lisans

Bu proje eğitim amaçlı geliştirilmiştir.
