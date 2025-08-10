-- =====================================================
-- CARGO TRACKING SYSTEM - VERİTABANI ŞEMASI
-- =====================================================
-- Bu dosya cargotracking veritabanının tablo yapılarını oluşturur
-- Kullanım: Önce bu dosya çalıştırılmalı, sonra insert-database.sql
-- =====================================================

USE cargotracking;

-- 1. Roles
CREATE TABLE Roles (
    role_id INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(50) NOT NULL UNIQUE
);

-- 2. Users
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    passw VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20),
    role_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES Roles(role_id)
);

-- 3. Admins
CREATE TABLE Admins (
    admin_id INT PRIMARY KEY,
    user_id INT NOT NULL UNIQUE,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- 4. Positions
CREATE TABLE Positions (
    position_id INT PRIMARY KEY AUTO_INCREMENT,
    position_name VARCHAR(50) NOT NULL UNIQUE
);

-- 5. Cities
CREATE TABLE Cities (
    city_id INT PRIMARY KEY AUTO_INCREMENT,
    city_name VARCHAR(100) NOT NULL UNIQUE
);

-- 6. Districts
CREATE TABLE Districts (
    district_id INT PRIMARY KEY AUTO_INCREMENT,
    district_name VARCHAR(100) NOT NULL,
    city_id INT,
    FOREIGN KEY (city_id) REFERENCES Cities(city_id)
);

-- 7. Neighborhoods
CREATE TABLE Neighborhoods (
    neighborhood_id INT PRIMARY KEY AUTO_INCREMENT,
    neighborhood_name VARCHAR(100) NOT NULL,
    district_id INT,
    postal_code INT,
    FOREIGN KEY (district_id) REFERENCES Districts(district_id)
);

-- 8. Addresses
CREATE TABLE Addresses (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    city_id INT,
    district_id INT,
    neighborhood_id INT,
    full_address VARCHAR(500),
    FOREIGN KEY (city_id) REFERENCES Cities(city_id),
    FOREIGN KEY (district_id) REFERENCES Districts(district_id),
    FOREIGN KEY (neighborhood_id) REFERENCES Neighborhoods(neighborhood_id)
);

-- 9. Branches
CREATE TABLE Branches (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    branch_name VARCHAR(100),
    address_id INT,
    FOREIGN KEY (address_id) REFERENCES Addresses(address_id)
);

-- 10. Employees
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    user_id INT NOT NULL UNIQUE,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    branch_id INT,
    position_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id),
    FOREIGN KEY (position_id) REFERENCES Positions(position_id)
);

-- 11. Companies
CREATE TABLE Companies (
    company_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL UNIQUE,
    company_name VARCHAR(100),
    tax_no VARCHAR(20),
    address_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (address_id) REFERENCES Addresses(address_id)
);

-- 12. Customers
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    identity_no VARCHAR(50) UNIQUE,
    address_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (address_id) REFERENCES Addresses(address_id)
);

-- 13. Statuses (Status type lookup)
CREATE TABLE Statuses (
    status_type_id INT PRIMARY KEY AUTO_INCREMENT,
    status_name VARCHAR(50) NOT NULL UNIQUE
);

-- 14. Cargos
CREATE TABLE Cargos (
    cargo_id INT PRIMARY KEY AUTO_INCREMENT,
    tracking_no VARCHAR(50) UNIQUE,
    sender_user_id INT,
    receiver_user_id INT,
    weight DECIMAL(6,2),
    desi INT,
    content_description VARCHAR(100),
    shipping_date DATETIME,
    delivery_date DATETIME,
    FOREIGN KEY (sender_user_id) REFERENCES Users(user_id),
    FOREIGN KEY (receiver_user_id) REFERENCES Users(user_id)
);

-- 15. CargoStatuses (Status history)
CREATE TABLE CargoStatuses (
    status_id INT PRIMARY KEY AUTO_INCREMENT,
    cargo_id INT,
    status_type_id INT,
    updated_by_id INT,
    update_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cargo_id) REFERENCES Cargos(cargo_id),
    FOREIGN KEY (status_type_id) REFERENCES Statuses(status_type_id),
    FOREIGN KEY (updated_by_id) REFERENCES Users(user_id)
);


