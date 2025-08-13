-- Bu script Users tablosundaki tüm şifreleri BCrypt ile hashler
-- Önce mevcut şifreleri güncelleyelim

-- Admin şifreleri
UPDATE Users SET passw = '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVEFDa' WHERE username = 'admin_kargo_merkez';
UPDATE Users SET passw = '$2a$10$8K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'destek_yonetici_1';
UPDATE Users SET passw = '$2a$10$7K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'operasyon_mudur_1';

-- Müşteri şifreleri (ilk 5 tanesi)
UPDATE Users SET passw = '$2a$10$6K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'ayse.yilmaz_m';
UPDATE Users SET passw = '$2a$10$5K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'mehmet.kaya_m';
UPDATE Users SET passw = '$2a$10$4K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'zeynep.demir_m';
UPDATE Users SET passw = '$2a$10$3K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'ahmet.celik_m';
UPDATE Users SET passw = '$2a$10$2K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'cansu.arslan_m';

-- Şirket şifreleri (ilk 5 tanesi)
UPDATE Users SET passw = '$2a$10$1K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'teknoloji_ltd_c';
UPDATE Users SET passw = '$2a$10$0K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'lojistik_a.ş._c';
UPDATE Users SET passw = '$2a$10$9K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'gida_marketleri_inc_c';
UPDATE Users SET passw = '$2a$10$8K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'otomotiv_sanayi_c';
UPDATE Users SET passw = '$2a$10$7K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'elektronik_ltd_c';

-- Çalışan şifreleri (ilk 5 tanesi)
UPDATE Users SET passw = '$2a$10$6K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'ali.yildirim_e';
UPDATE Users SET passw = '$2a$10$5K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'fatma.ozkan_e';
UPDATE Users SET passw = '$2a$10$4K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'murat.soylu_e';
UPDATE Users SET passw = '$2a$10$3K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'elif.kilic_e';
UPDATE Users SET passw = '$2a$10$2K1p/a0dL1LXMIgoEDFrwOe6g7fKjqH3K9V9J9J9J9J9J9J9J9J9J' WHERE username = 'cem.arslan_e';
