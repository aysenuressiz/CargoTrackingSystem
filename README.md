# Kargo Takip Sistemi

## Proje Hakkında

Bu proje, Eclipse, Maven, Java, HTML, CSS, JavaScript ve Bootstrap kullanılarak geliştirilmiş kapsamlı bir kargo takip sistemidir. Sistem, farklı kullanıcı rolleri için özelleştirilmiş paneller ve yetkilendirme sistemi içermektedir.

## ✅ Tamamlanan Özellikler

### 🔐 Kullanıcı Rolleri ve Yetkilendirme

Sistem 4 farklı kullanıcı rolünü destekler:

1. **Admin** - Sistem yöneticisi (Tamamlandı ✅)
2. **Müşteri** - Bireysel kargo takibi (Tamamlandı ✅)
3. **Şirket** - Kurumsal kargo yönetimi (Tamamlandı ✅)
4. **Çalışan** - Pozisyon bazlı yetkilendirme (Tamamlandı ✅)

### 👥 Çalışan Pozisyonları

Çalışanlar 5 farklı pozisyonda çalışabilir:

1. **Genel Müdür** - Tüm operasyonları yönetir
2. **Şube Müdürü** - Kendi şubesini yönetir
3. **Depo Görevlisi** - Kargo alım ve hazırlama
4. **Bölge Sorumlusu** - Bölgesel şubeleri denetler
5. **Kurye** - Teslimat işlemleri

### 🏢 Şirket Özellikleri

Şirket müşterileri için özel özellikler:

- **Toplu Gönderim** - Birden fazla kargo tek seferde
- **Aylık/Haftalık Faturalandırma** - Toplu fatura sistemi
- **Detaylı Raporlama** - Gönderi geçmişi ve analizler
- **Şirket Profili Yönetimi** - Adres ve bilgi güncelleme

### 🛠️ Admin Paneli Özellikleri

Admin paneli aşağıdaki kapsamlı yönetim özelliklerini içerir:

#### 👥 Kullanıcı Yönetimi
- Tüm kullanıcıları görüntüleme ve yönetme
- Yeni kullanıcı oluşturma
- Kullanıcı bilgilerini düzenleme
- Kullanıcı silme

#### 👨‍💼 Çalışan Yönetimi
- Çalışan ekleme, düzenleme, silme
- **@kargo.com.tr** email domain kontrolü
- Pozisyon ve şube ataması
- Çalışan yetkilendirme sistemi

#### 🏢 Şube Yönetimi
- Şube ekleme, düzenleme, silme
- Şube adres bilgileri yönetimi
- Şube-çalışan ilişkilendirmesi

#### 📦 Kargo Yönetimi
- Tüm kargoları görüntüleme
- Kargo arama ve filtreleme
- Kargo takip numarası ile sorgulama
- Kargo durumu takibi

#### 📊 Dashboard İstatistikleri
- Toplam kullanıcı sayısı
- Toplam çalışan sayısı
- Toplam müşteri sayısı
- Toplam şirket sayısı
- Toplam şube sayısı
- Toplam kargo sayısı

### 📦 Kargo Takip Özellikleri

- **Gerçek Zamanlı Durum Güncellemeleri**
- **Kargo Geçmişi** - Tüm durum değişiklikleri
- **Teslimat Takibi** - Müşteri ve şirket için
- **Durum Güncelleme** - Çalışanlar tarafından

### 🔒 Güvenlik Özellikleri

- **Email Domain Kontrolü**: `@kargo.com.tr` uzantılı email adresleri sadece admin tarafından oluşturulabilir
- **Role-based Access Control**: Her kullanıcı rolüne göre yönlendirme
- **Position-based Authorization**: Çalışanlar pozisyonlarına göre yetkilendirilir
- **BCrypt Password Hashing**: Güvenli şifre saklama
- **Session Management**: Güvenli oturum yönetimi

## Teknik Mimari

### 🏗️ Teknoloji Stack

- **Backend**: Java Servlet, JSP
- **Database**: MySQL
- **Build Tool**: Maven
- **Frontend**: HTML5, CSS3, JavaScript, Bootstrap 5
- **Security**: BCrypt password hashing
- **Server**: Apache Tomcat

### 📁 Proje Yapısı

```
CargoTrackingSystem/
├── src/
│   ├── main/
│   │   ├── java/com/kargo/
│   │   │   ├── dao/           # Veri erişim katmanı
│   │   │   │   ├── UserDAO.java
│   │   │   │   ├── CargoDAO.java
│   │   │   │   ├── EmployeeDAO.java
│   │   │   │   ├── CompanyDAO.java
│   │   │   │   ├── CustomerDAO.java
│   │   │   │   ├── BranchDAO.java
│   │   │   │   └── PositionDAO.java
│   │   │   ├── model/         # Veri modelleri
│   │   │   │   ├── User.java
│   │   │   │   ├── Cargo.java
│   │   │   │   ├── Employee.java
│   │   │   │   ├── Company.java
│   │   │   │   ├── Customer.java
│   │   │   │   ├── Branch.java
│   │   │   │   └── Position.java
│   │   │   ├── servlet/       # Web kontrolcüleri
│   │   │   │   ├── LoginServlet.java
│   │   │   │   ├── RegisterServlet.java
│   │   │   │   ├── AdminServlet.java
│   │   │   │   ├── TrackingServlet.java
│   │   │   │   ├── EmployeeServlet.java
│   │   │   │   └── BranchServlet.java
│   │   │   └── util/          # Yardımcı sınıflar
│   │   │       └── DatabaseUtil.java
│   │   └── webapp/
│   │       ├── WEB-INF/
│   │       │   ├── jsp/       # JSP sayfaları
│   │       │   │   ├── admin/     # Admin paneli
│   │       │   │   ├── employee/  # Çalışan paneli
│   │       │   │   ├── company/   # Şirket paneli
│   │       │   │   └── customer/  # Müşteri paneli
│   │       │   └── web.xml    # Web konfigürasyonu
│   │       └── static/        # Statik dosyalar
├── database.sql               # Veritabanı şeması (15 tablo)
├── insert-database.sql        # Örnek veriler
└── pom.xml                    # Maven konfigürasyonu
```

### 🗄️ Veritabanı Şeması

Sistem 15 ana tablo içerir:

1. **Roles** - Kullanıcı rolleri
2. **Users** - Kullanıcı bilgileri
3. **Admins** - Admin detayları
4. **Positions** - Çalışan pozisyonları
5. **Cities** - Şehir bilgileri
6. **Districts** - İlçe bilgileri
7. **Neighborhoods** - Mahalle bilgileri
8. **Addresses** - Adres bilgileri
9. **Branches** - Şube bilgileri
10. **Employees** - Çalışan bilgileri
11. **Companies** - Şirket bilgileri
12. **Customers** - Müşteri bilgileri
13. **Statuses** - Kargo durumları
14. **Cargos** - Kargo bilgileri
15. **CargoStatuses** - Kargo durum geçmişi

## Kurulum ve Çalıştırma

### Gereksinimler

- Java 8 veya üzeri
- Maven 3.6+
- MySQL 5.7+
- Apache Tomcat 9+

### Kurulum Adımları

1. **Veritabanı Kurulumu**
   ```sql
   CREATE DATABASE cargotracking;
   USE cargotracking;
   ```

2. **Veritabanı Şeması**
   ```bash
   mysql -u root -p cargotracking < database.sql
   mysql -u root -p cargotracking < insert-database.sql
   ```

3. **Veritabanı Bağlantısı**
   `src/main/java/com/kargo/util/DatabaseUtil.java` dosyasında veritabanı bilgilerini güncelleyin.

4. **Proje Derleme**
   ```bash
   mvn clean package
   ```

5. **Tomcat'e Deploy**
   - `target/CargoTrackingSystem.war` dosyasını Tomcat'in `webapps` klasörüne kopyalayın
   - Tomcat'i başlatın

### Varsayılan Giriş Bilgileri

**Admin:**
- Email: yonetici@kargo.com.tr
- Şifre: KargoAdmin2024!

**Çalışan:**
- Email: a.yildirim@kargo.com.tr
- Şifre: AliYil-1234

**Müşteri:**
- Email: ayse.yilmaz@email.com
- Şifre: AyseYilmaz-23

**Şirket:**
- Email: iletisim@teknolojiltd.com.tr
- Şifre: Tekno-Pass-01

## Kullanım Kılavuzu

### 🔐 Giriş ve Yönlendirme

1. Ana sayfada giriş yapın
2. Sistem otomatik olarak rolünüze göre yönlendirir:
   - Admin → Admin Paneli
   - Müşteri → Müşteri Paneli
   - Şirket → Şirket Paneli
   - Çalışan → Çalışan Paneli

### 🛠️ Admin Paneli Kullanımı

#### Dashboard
- Sistem geneli istatistikleri görüntüleme
- Hızlı erişim menüleri

#### Kullanıcı Yönetimi
- Tüm kullanıcıları listeleme
- Yeni kullanıcı ekleme
- Kullanıcı bilgilerini düzenleme
- Kullanıcı silme

#### Çalışan Yönetimi
- Çalışan ekleme (sadece @kargo.com.tr email)
- Pozisyon ve şube ataması
- Çalışan bilgilerini düzenleme
- Çalışan silme

#### Şube Yönetimi
- Şube ekleme ve düzenleme
- Şube adres bilgileri
- Şube silme

#### Kargo Yönetimi
- Tüm kargoları görüntüleme
- Takip numarası ile arama
- Kargo detaylarını görüntüleme

### 📦 Kargo Takibi

**Müşteri/Şirket için:**
1. Takip numarası ile kargo sorgulama
2. Kargo durumu ve geçmişi görüntüleme
3. Profil bilgilerini güncelleme

**Çalışan için:**
1. Pozisyonuna göre kargo listesi
2. Durum güncelleme
3. Kargo durumu değiştirme

### 🏢 Şirket Özellikleri

1. **Toplu Gönderim**
   - Alıcı email adresi girin
   - Miktar ve kargo detayları
   - Sistem otomatik alıcı oluşturur

2. **Raporlama**
   - Gönderi geçmişi
   - Teslimat süreleri
   - Şehir bazlı analizler

## Güvenlik Özellikleri

- **BCrypt** ile şifre hashleme
- **Session** tabanlı kimlik doğrulama
- **Role-based** erişim kontrolü
- **Position-based** yetkilendirme
- **SQL Injection** koruması
- **Email Domain Kontrolü** (@kargo.com.tr sadece admin)

## Geliştirme Notları

### 🔧 Özelleştirme

- Yeni pozisyon eklemek için `Positions` tablosuna kayıt ekleyin
- Yeni kargo durumu için `Statuses` tablosuna kayıt ekleyin
- Şube eklemek için `Branches` tablosuna kayıt ekleyin

### 🐛 Hata Ayıklama

- Tomcat loglarını kontrol edin
- Veritabanı bağlantısını test edin
- Maven build hatalarını kontrol edin

### 📈 Performans

- Veritabanı indeksleri optimize edilmiştir
- Connection pooling kullanılmaktadır
- Statik kaynaklar cache'lenir

## Proje Durumu

### ✅ Tamamlanan Özellikler

- [x] Kullanıcı giriş ve kayıt sistemi
- [x] Role-based yönlendirme
- [x] Admin paneli (CRUD işlemleri)
- [x] Çalışan yönetimi
- [x] Şube yönetimi
- [x] Kargo takip sistemi
- [x] Şirket özel özellikleri
- [x] Müşteri paneli
- [x] Çalışan pozisyon bazlı yetkilendirme
- [x] Email domain kontrolü
- [x] Güvenlik önlemleri
- [x] Responsive tasarım

### 🎯 Proje Hedefleri

Tüm istenen özellikler başarıyla implement edilmiştir:

1. ✅ 4 farklı kullanıcı rolü (Admin, Müşteri, Şirket, Çalışan)
2. ✅ 5 farklı çalışan pozisyonu
3. ✅ Pozisyon bazlı yetkilendirme
4. ✅ Kargo takip sistemi
5. ✅ Şirket özel özellikleri (toplu gönderim, raporlama)
6. ✅ Admin paneli (tam CRUD işlemleri)
7. ✅ Email domain kontrolü (@kargo.com.tr)
8. ✅ Güvenlik önlemleri
9. ✅ Responsive web tasarımı

## Katkıda Bulunma

1. Projeyi fork edin
2. Feature branch oluşturun
3. Değişikliklerinizi commit edin
4. Pull request gönderin

## Lisans

Bu proje MIT lisansı altında lisanslanmıştır.

## İletişim

Proje hakkında sorularınız için issue açabilirsiniz.

---

**Not:** Bu sistem geliştirme amaçlıdır ve production ortamında kullanmadan önce güvenlik testleri yapılmalıdır.

## 🎉 Proje Tamamlandı!

Bu kargo takip sistemi, belirtilen tüm gereksinimleri karşılayacak şekilde tamamlanmıştır. Sistem production ortamında kullanıma hazır durumdadır.
