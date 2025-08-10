# Kargo Takip Sistemi

## Proje Hakkında

Bu proje, Eclipse, Maven, Java, HTML, CSS, JavaScript ve Bootstrap kullanılarak geliştirilmiş kapsamlı bir kargo takip sistemidir. Sistem, farklı kullanıcı rolleri için özelleştirilmiş paneller ve yetkilendirme sistemi içermektedir.

## Özellikler

### 🔐 Kullanıcı Rolleri ve Yetkilendirme

Sistem 4 farklı kullanıcı rolünü destekler:

1. **Admin** - Sistem yöneticisi
2. **Müşteri** - Bireysel kargo takibi
3. **Şirket** - Kurumsal kargo yönetimi
4. **Çalışan** - Pozisyon bazlı yetkilendirme

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



### 📦 Kargo Takip Özellikleri

- **Gerçek Zamanlı Durum Güncellemeleri**
- **Kargo Geçmişi** - Tüm durum değişiklikleri
- **Teslimat Takibi** - Müşteri ve şirket için
- **Durum Güncelleme** - Çalışanlar tarafından

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
│   │   │   ├── model/         # Veri modelleri
│   │   │   ├── servlet/       # Web kontrolcüleri
│   │   │   └── util/          # Yardımcı sınıflar
│   │   └── webapp/
│   │       ├── WEB-INF/
│   │       │   ├── jsp/       # JSP sayfaları
│   │       │   └── web.xml    # Web konfigürasyonu
│   │       └── static/        # Statik dosyalar
├── database.sql               # Veritabanı şeması
├── insert-database.sql        # Örnek veriler
└── pom.xml                    # Maven konfigürasyonu
```

### 🗄️ Veritabanı Şeması

Sistem 15 ana tablo içerir:

1. **Roles** - Kullanıcı rolleri
2. **Users** - Kullanıcı bilgileri
3. **Admins** - Admin detayları
4. **Positions** - Çalışan pozisyonları
5. **Cities/Districts/Neighborhoods** - Adres hiyerarşisi
6. **Addresses** - Adres bilgileri
7. **Branches** - Şube bilgileri
8. **Employees** - Çalışan bilgileri
9. **Companies** - Şirket bilgileri
10. **Customers** - Müşteri bilgileri
11. **Statuses** - Kargo durumları
12. **Cargos** - Kargo bilgileri
13. **CargoStatuses** - Kargo durum geçmişi


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

### 📦 Kargo Takibi

**Müşteri/Şirket için:**
1. Takip numarası ile kargo sorgulama
2. Kargo durumu ve geçmişi görüntüleme
3. Profil bilgilerini güncelleme

**Çalışan için:**
1. Pozisyonuna göre kargo listesi
2. Durum güncelleme
3. Kurye atama (Şube Müdürü)

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
