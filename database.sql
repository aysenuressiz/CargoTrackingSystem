-- Kargo Takip Sistemi Veritabanı Scripti
-- Bu script sistemin tüm tablolarını oluşturur

CREATE DATABASE IF NOT EXISTS cargotracking CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE cargotracking;

-- Roller tablosu
CREATE TABLE Roles (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50) UNIQUE NOT NULL
);

-- Şehirler tablosu
CREATE TABLE Cities (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(100) NOT NULL
);

-- İlçeler tablosu
CREATE TABLE Districts (
    district_id INT AUTO_INCREMENT PRIMARY KEY,
    city_id INT NOT NULL,
    district_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (city_id) REFERENCES Cities(city_id)
);

-- Mahalleler tablosu
CREATE TABLE Neighborhoods (
    neighborhood_id INT AUTO_INCREMENT PRIMARY KEY,
    district_id INT NOT NULL,
    neighborhood_name VARCHAR(100) NOT NULL,
    postal_code VARCHAR(10),
    FOREIGN KEY (district_id) REFERENCES Districts(district_id)
);

-- Adresler tablosu
CREATE TABLE Addresses (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    city_id INT NOT NULL,
    district_id INT NOT NULL,
    neighborhood_id INT NOT NULL,
    full_address TEXT NOT NULL,
    FOREIGN KEY (city_id) REFERENCES Cities(city_id),
    FOREIGN KEY (district_id) REFERENCES Districts(district_id),
    FOREIGN KEY (neighborhood_id) REFERENCES Neighborhoods(neighborhood_id)
);

-- Kullanıcılar tablosu
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    role_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES Roles(role_id)
);

-- Şirketler tablosu
CREATE TABLE Companies (
    company_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    company_name VARCHAR(200) NOT NULL,
    tax_no VARCHAR(20) UNIQUE NOT NULL,
    address_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (address_id) REFERENCES Addresses(address_id)
);

-- Müşteriler tablosu
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    identity_no VARCHAR(11) UNIQUE,
    address_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (address_id) REFERENCES Addresses(address_id)
);

-- Şubeler tablosu
CREATE TABLE Branches (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_name VARCHAR(200) NOT NULL,
    address_id INT NOT NULL,
    FOREIGN KEY (address_id) REFERENCES Addresses(address_id)
);

-- Pozisyonlar tablosu
CREATE TABLE Positions (
    position_id INT AUTO_INCREMENT PRIMARY KEY,
    position_name VARCHAR(100) NOT NULL
);

-- Çalışanlar tablosu
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    branch_id INT NOT NULL,
    position_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id),
    FOREIGN KEY (position_id) REFERENCES Positions(position_id)
);

-- Kargolar tablosu
CREATE TABLE Cargos (
    cargo_id INT AUTO_INCREMENT PRIMARY KEY,
    tracking_no VARCHAR(50) UNIQUE NOT NULL,
    sender_user_id INT NOT NULL,
    receiver_user_id INT NOT NULL,
    weight DECIMAL(10,2) NOT NULL,
    desi VARCHAR(50),
    content_description TEXT,
    shipping_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    delivery_date TIMESTAMP NULL,
    FOREIGN KEY (sender_user_id) REFERENCES Users(user_id),
    FOREIGN KEY (receiver_user_id) REFERENCES Users(user_id)
);

-- Durum türleri tablosu
CREATE TABLE Statuses (
    status_type_id INT AUTO_INCREMENT PRIMARY KEY,
    status_name VARCHAR(100) NOT NULL
);

-- Kargo durumları tablosu
CREATE TABLE CargoStatuses (
    status_id INT AUTO_INCREMENT PRIMARY KEY,
    cargo_id INT NOT NULL,
    status_type_id INT NOT NULL,
    updated_by_id INT NOT NULL,
    updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cargo_id) REFERENCES Cargos(cargo_id) ON DELETE CASCADE,
    FOREIGN KEY (status_type_id) REFERENCES Statuses(status_type_id),
    FOREIGN KEY (updated_by_id) REFERENCES Users(user_id)
);

-- Temel verileri ekle
INSERT INTO Roles (role_name) VALUES 
('Admin'),
('Çalışan'),
('Müşteri'),
('Şirket');

INSERT INTO Positions (position_name) VALUES 
('Genel Müdür'),
('Şube Müdürü'),
('Depo Görevlisi'),
('Bölge Sorumlusu'),
('Kurye');

INSERT INTO Statuses (status_name) VALUES 
('Kargo Alındı'),
('Şubeye Ulaştı'),
('Dağıtıma Çıktı'),
('Teslim Edildi'),
('Teslim Edilemedi'),
('İade Ediliyor'),
('İade Edildi');

-- Örnek şehir verileri
INSERT INTO Cities (city_name) VALUES 
('İstanbul'),
('Ankara'),
('İzmir'),
('Bursa'),
('Antalya'),
('Adana'),
('Konya'),
('Şanlıurfa'),
('Gaziantep'),
('Kocaeli');

-- Örnek ilçe verileri (İstanbul için)
INSERT INTO Districts (city_id, district_name) VALUES 
(1, 'Kadıköy'),
(1, 'Beşiktaş'),
(1, 'Şişli'),
(1, 'Ataşehir'),
(1, 'Üsküdar'),
(1, 'Bakırköy'),
(1, 'Maltepe'),
(1, 'Pendik');

-- Örnek mahalle verileri
INSERT INTO Neighborhoods (district_id, neighborhood_name, postal_code) VALUES 
(1, 'Moda', '34710'),
(1, 'Fenerbahçe', '34726'),
(2, 'Levent', '34330'),
(2, 'Etiler', '34337'),
(3, 'Nişantaşı', '34365'),
(3, 'Mecidiyeköy', '34387');

-- Örnek adres verileri
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES 
(1, 1, 1, 'Moda Caddesi No:123 Kadıköy/İstanbul'),
(1, 2, 3, 'Levent Mahallesi Büyükdere Caddesi No:456 Beşiktaş/İstanbul'),
(1, 3, 5, 'Nişantaşı Mahallesi Valikonağı Caddesi No:789 Şişli/İstanbul');

-- Örnek şube verileri
INSERT INTO Branches (branch_name, address_id) VALUES 
('İstanbul Kadıköy Şubesi', 1),
('İstanbul Levent Şubesi', 2),
('İstanbul Nişantaşı Şubesi', 3);

-- Admin kullanıcısı (şifre: admin123)
INSERT INTO Users (username, password, email, phone, role_id) VALUES 
('admin', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin@kargo.com.tr', '0555 123 45 67', 1);

-- Örnek çalışan kullanıcıları
INSERT INTO Users (username, password, email, phone, role_id) VALUES 
('ahmet.manager', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ahmet.yilmaz@kargo.com.tr', '0555 111 11 11', 2),
('mehmet.branch', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mehmet.demir@kargo.com.tr', '0555 222 22 22', 3);

-- Örnek çalışan verileri
INSERT INTO Employees (user_id, first_name, last_name, branch_id, position_id) VALUES 
(2, 'Ahmet', 'Yılmaz', 1, 1),
(3, 'Mehmet', 'Demir', 1, 2);

-- İndeksler
CREATE INDEX idx_users_email ON Users(email);
CREATE INDEX idx_users_role ON Users(role_id);
CREATE INDEX idx_cargos_tracking ON Cargos(tracking_no);
CREATE INDEX idx_cargos_sender ON Cargos(sender_user_id);
CREATE INDEX idx_cargos_receiver ON Cargos(receiver_user_id);
CREATE INDEX idx_cargo_statuses_cargo ON CargoStatuses(cargo_id);
CREATE INDEX idx_cargo_statuses_date ON CargoStatuses(updated_date);

COMMIT;
