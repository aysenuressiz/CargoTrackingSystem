USE cargotracking;

/*Veri Ekleme*/

-- 1. Roles Tablosu

INSERT INTO Roles (role_name) VALUES
('Admin'),
('Müşteri'),
('Şirket'),
('Çalışan');

-- 2. Positions Tablosu

INSERT INTO Positions (position_name) VALUES
('Genel Müdür'),
('Şube Müdürü'),
('Depo Görevlisi'),
('Bölge Sorumlusu'),
('Kurye');

-- 3. Status Tablosu

INSERT INTO Statuses (status_name) VALUES
('Kargo Alındı'),
('Transfer Merkezinde'),
('Şubede'),
('Dağıtıma Çıktı'),
('Teslim Edildi'),
('Teslim Edilemedi'),
('İade Edildi'),
('İptal Edildi'),
('Yolda');

-- 4. Users Tablosu

INSERT INTO Users (username, passw, email, phone, role_id) VALUES
-- Admin Rolü (id: 1) - 3 kayıt
('admin_kargo_merkez', 'KargoAdmin2024!', 'yonetici@kargo.com.tr', '+90 (212) 555-0101', 1),
('destek_yonetici_1', 'Destek123#', 'destek@kargo.com.tr', '+90 (212) 555-0102', 1),
('operasyon_mudur_1', 'Operasyon567$', 'operasyon@kargo.com.tr', '+90 (212) 555-0103', 1),

-- Müşteri Rolü (id: 2) - 100 kayıt
('ayse.yilmaz_m', 'AyseYilmaz-23', 'ayse.yilmaz@email.com', '+90 (532) 123-4567', 2),
('mehmet.kaya_m', 'Mehmet-Kaya-88', 'mehmet.kaya@email.com', '+90 (541) 987-6543', 2),
('zeynep.demir_m', 'Zeynep-D2024!', 'zeynep.demir@email.com', '+90 (505) 111-2233', 2),
('ahmet.celik_m', 'Ahmet.Celik$', 'ahmet.celik@email.com', '+90 (554) 444-5566', 2),
('cansu.arslan_m', 'CansuA-pass', 'cansu.arslan@email.com', '+90 (533) 999-8877', 2),
('deniz.ozsoy_m', 'Deniz.O_77', 'deniz.ozsoy@email.com', '+90 (542) 666-3344', 2),
('mustafa.aydin_m', 'Mustafa-A-24', 'mustafa.aydin@email.com', '+90 (532) 123-0100', 2),
('elif.karaca_m', 'Elif-K-02', 'elif.karaca@email.com', '+90 (541) 987-0200', 2),
('berat.sen_m', 'Berat-S-pass', 'berat.sen@email.com', '+90 (505) 111-0300', 2),
('gizem.tuna_m', 'GizemTuna#', 'gizem.tuna@email.com', '+90 (554) 444-0400', 2),
('serkan.koc_m', 'SerkanKoc!', 'serkan.koc@email.com', '+90 (533) 999-0500', 2),
('sema.guven_m', 'SemaG-2024$', 'sema.guven@email.com', '+90 (542) 666-0600', 2),
('kaan.yildiz_m', 'KaanYildiz#', 'kaan.yildiz@email.com', '+90 (532) 123-0700', 2),
('asli.polat_m', 'AsliP-pass', 'asli.polat@email.com', '+90 (541) 987-0800', 2),
('emre.gunes_m', 'Emre-G-09', 'emre.gunes@email.com', '+90 (505) 111-0900', 2),
('fatma.akin_m', 'Fatma-Akin!', 'fatma.akin@email.com', '+90 (554) 444-1000', 2),
('burak.soysal_m', 'BurakS-2024', 'burak.soysal@email.com', '+90 (533) 999-1100', 2),
('ipek.taner_m', 'Ipek-Taner#', 'ipek.taner@email.com', '+90 (542) 666-1200', 2),
('tayfun.ercan_m', 'TayfunE-pass', 'tayfun.ercan@email.com', '+90 (532) 123-1300', 2),
('nazli.ozer_m', 'Nazli-Ozer$', 'nazli.ozer@email.com', '+90 (541) 987-1400', 2),
('osman.demirel_m', 'Osman-D-15', 'osman.demirel@email.com', '+90 (505) 111-1500', 2),
('selin.tekin_m', 'SelinT-pass', 'selin.tekin@email.com', '+90 (554) 444-1600', 2),
('volkan.sahin_m', 'Volkan-S#', 'volkan.sahin@email.com', '+90 (533) 999-1700', 2),
('duygu.ulku_m', 'Duygu-Ulku!', 'duygu.ulku@email.com', '+90 (542) 666-1800', 2),
('hakan.yaman_m', 'HakanY-2024', 'hakan.yaman@email.com', '+90 (532) 123-1900', 2),
('esra.yilmaz_m', 'EsraYilmaz$', 'esra.yilmaz@email.com', '+90 (541) 987-2000', 2),
('ozturk.aksu_m', 'Ozturk-A-21', 'ozturk.aksu@email.com', '+90 (505) 111-2100', 2),
('gamze.erdem_m', 'GamzeE-pass', 'gamze.erdem@email.com', '+90 (554) 444-2200', 2),
('ismail.tokat_m', 'IsmailT#', 'ismail.tokat@email.com', '+90 (533) 999-2300', 2),
('ece.korkmaz_m', 'EceK-2024!', 'ece.korkmaz@email.com', '+90 (542) 666-2400', 2),
('cenk.tan_m', 'Cenk-Tan-25', 'cenk.tan@email.com', '+90 (532) 123-2500', 2),
('pinar.soylu_m', 'PinarS-pass', 'pinar.soylu@email.com', '+90 (541) 987-2600', 2),
('serhat.kurt_m', 'Serhat-K#', 'serhat.kurt@email.com', '+90 (505) 111-2700', 2),
('sinem.ay_m', 'Sinem-Ay$', 'sinem.ay@email.com', '+90 (554) 444-2800', 2),
('yasin.koc_m', 'YasinKoc!', 'yasin.koc@email.com', '+90 (533) 999-2900', 2),
('buse.aksoy_m', 'BuseA-2024', 'buse.aksoy@email.com', '+90 (542) 666-3000', 2),
('okan.arslan_m', 'Okan-A-31', 'okan.arslan@email.com', '+90 (532) 123-3100', 2),
('defne.can_m', 'DefneC-pass', 'defne.can@email.com', '+90 (541) 987-3200', 2),
('ugur.yildirim_m', 'UgurY-33#', 'ugur.yildirim@email.com', '+90 (505) 111-3300', 2),
('hilal.aksoy_m', 'Hilal-A-pass', 'hilal.aksoy@email.com', '+90 (554) 444-3400', 2),
('fatih.karaca_m', 'FatihK-2024', 'fatih.karaca@email.com', '+90 (533) 999-3500', 2),
('hulya.guler_m', 'HulyaG-pass', 'hulya.guler@email.com', '+90 (542) 666-3600', 2),
('adem.yilmaz_m', 'AdemYilmaz#', 'adem.yilmaz@email.com', '+90 (532) 123-3700', 2),
('esma.ozkan_m', 'EsmaOzkan$', 'esma.ozkan@email.com', '+90 (541) 987-3800', 2),
('kemal.kurt_m', 'KemalK-39!', 'kemal.kurt@email.com', '+90 (505) 111-3900', 2),
('sevda.aydin_m', 'SevdaA-pass', 'sevda.aydin@email.com', '+90 (554) 444-4000', 2),
('levent.soylu_m', 'LeventS-41', 'levent.soylu@email.com', '+90 (533) 999-4100', 2),
('aynur.tek_m', 'AynurTek#', 'aynur.tek@email.com', '+90 (542) 666-4200', 2),
('murat.celik_m', 'Murat-C-pass', 'murat.celik@email.com', '+90 (532) 123-4300', 2),
('neslihan.yilmaz_m', 'NeslihanY!', 'neslihan.yilmaz@email.com', '+90 (541) 987-4400', 2),
('okan.kocak_m', 'OkanK-45', 'okan.kocak@email.com', '+90 (505) 111-4500', 2),
('derya.yaman_m', 'DeryaY-pass', 'derya.yaman@email.com', '+90 (554) 444-4600', 2),
('gokhan.kaya_m', 'GokhanKaya$', 'gokhan.kaya@email.com', '+90 (533) 999-4700', 2),
('selin.aksu_m', 'SelinA-pass', 'selin.aksu@email.com', '+90 (542) 666-4800', 2),
('metin.demir_m', 'MetinD-49', 'metin.demir@email.com', '+90 (532) 123-4900', 2),
('esra.arslan_m', 'EsraA-pass', 'esra.arslan@email.com', '+90 (541) 987-5000', 2),
('deniz.polat_m', 'DenizP-51', 'deniz.polat@email.com', '+90 (505) 111-5100', 2),
('yasemin.ozturk_m', 'YaseminO-!', 'yasemin.ozturk@email.com', '+90 (554) 444-5200', 2),
('volkan.aydin_m', 'VolkanA-pass', 'volkan.aydin@email.com', '+90 (533) 999-5300', 2),
('aysun.can_m', 'AysunCan#', 'aysun.can@email.com', '+90 (542) 666-5400', 2),
('cihan.yildiz_m', 'CihanY-55', 'cihan.yildiz@email.com', '+90 (532) 123-5500', 2),
('seda.gunes_m', 'SedaG-pass', 'seda.gunes@email.com', '+90 (541) 987-5600', 2),
('engin.sen_m', 'EnginS-57$', 'engin.sen@email.com', '+90 (505) 111-5700', 2),
('gokce.tekin_m', 'GokceT-pass', 'gokce.tekin@email.com', '+90 (554) 444-5800', 2),
('leyla.aksu_m', 'LeylaA-59#', 'leyla.aksu@email.com', '+90 (533) 999-5900', 2),
('metehan.kurt_m', 'MetehanK-pass', 'metehan.kurt@email.com', '+90 (542) 666-6000', 2),
('pelin.yaman_m', 'PelinY-61', 'pelin.yaman@email.com', '+90 (532) 123-6100', 2),
('deniz.aksoy_m', 'DenizA-pass', 'deniz.aksoy@email.com', '+90 (541) 987-6200', 2),
('onur.demirel_m', 'OnurD-63', 'onur.demirel@email.com', '+90 (505) 111-6300', 2),
('fatma.sahin_m', 'FatmaS-pass', 'fatma.sahin@email.com', '+90 (554) 444-6400', 2),
('mustafa.taner_m', 'MustafaT-65#', 'mustafa.taner@email.com', '+90 (533) 999-6500', 2),
('zeynep.akin_m', 'ZeynepA-pass', 'zeynep.akin@email.com', '+90 (542) 666-6600', 2),
('yusuf.koc_m', 'YusufK-67', 'yusuf.koc@email.com', '+90 (532) 123-6700', 2),
('aylin.ozturk_m', 'AylinO-pass', 'aylin.ozturk@email.com', '+90 (541) 987-6800', 2),
('tufan.celik_m', 'TufanC-69', 'tufan.celik@email.com', '+90 (505) 111-6900', 2),
('hulya.yilmaz_m', 'HulyaY-pass', 'hulya.yilmaz@email.com', '+90 (554) 444-7000', 2),
('samet.ozsoy_m', 'SametO-71#', 'samet.ozsoy@email.com', '+90 (533) 999-7100', 2),
('ipek.arslan_m', 'Ipek-Arslan$', 'ipek.arslan@email.com', '+90 (542) 666-7200', 2),
('canan.kurt_m', 'CananK-73', 'canan.kurt@email.com', '+90 (532) 123-7300', 2),
('yigit.sahin_m', 'YigitS-pass', 'yigit.sahin@email.com', '+90 (541) 987-7400', 2),
('selim.polat_m', 'SelimP-75#', 'selim.polat@email.com', '+90 (505) 111-7500', 2),
('buket.guler_m', 'BuketG-pass', 'buket.guler@email.com', '+90 (554) 444-7600', 2),
('feyza.erdogan_m', 'FeyzaE-77', 'feyza.erdogan@email.com', '+90 (533) 999-7700', 2),
('burak.kaya_m_1', 'BurakKaya#', 'burak.kaya@email.com', '+90 (542) 666-7800', 2),
('sinem.yilmaz_m_1', 'SinemY-pass', 'sinem.yilmaz@email.com', '+90 (532) 123-7900', 2),
('emre.soysal_m_1', 'EmreS-80$', 'emre.soysal@email.com', '+90 (541) 987-8000', 2),
('sevgi.can_m', 'Sevgi-Can-!', 'sevgi.can@email.com', '+90 (505) 111-8100', 2),
('ali.erdem_m', 'Ali-Erdem-pass', 'ali.erdem@email.com', '+90 (554) 444-8200', 2),
('berkay.tekin_m', 'Berkay-T#', 'berkay.tekin@email.com', '+90 (533) 999-8300', 2),
('gizem.gunes_m', 'GizemG-84', 'gizem.gunes@email.com', '+90 (542) 666-8400', 2),
('okan.yilmaz_m', 'Okan-Y-pass', 'okan.yilmaz@email.com', '+90 (532) 123-8500', 2),
('derya.karaca_m', 'Derya-K-!', 'derya.karaca@email.com', '+90 (541) 987-8600', 2),
('kerem.polat_m', 'KeremP-87', 'kerem.polat@email.com', '+90 (505) 111-8700', 2),
('pinar.demir_m', 'Pinar-D-pass', 'pinar.demir@email.com', '+90 (554) 444-8800', 2),
('cagla.ozkan_m', 'Cagla-O-89', 'cagla.ozkan@email.com', '+90 (533) 999-8900', 2),
('yasin.taner_m', 'YasinT-pass', 'yasin.taner@email.com', '+90 (542) 666-9000', 2),
('ece.sahin_m', 'Ece-S-91#', 'ece.sahin@email.com', '+90 (532) 123-9100', 2),
('emre.gunes_m_1', 'Emre-G-pass', 'emre.gunes@email.com', '+90 (541) 987-9200', 2),
('fatma.aydin_m', 'Fatma-A-93!', 'fatma.aydin@email.com', '+90 (505) 111-9300', 2),
('kaan.tekin_m', 'Kaan-T-pass', 'kaan.tekin@email.com', '+90 (554) 444-9400', 2),
('sema.akin_m', 'Sema-A-95#', 'sema.akin@email.com', '+90 (533) 999-9500', 2),
('tufan.ozsoy_m', 'Tufan-O-pass', 'tufan.ozsoy@email.com', '+90 (542) 666-9600', 2),
('yigit.arslan_m', 'Yigit-A-97', 'yigit.arslan@email.com', '+90 (532) 123-9700', 2),
('neslihan.koc_m', 'Neslihan-K-pass', 'neslihan.koc@email.com', '+90 (541) 987-9800', 2),
('burcu.kurt_m', 'Burcu-K-99', 'burcu.kurt@email.com', '+90 (505) 111-9900', 2),
('cemal.demir_m', 'Cemal-D-pass', 'cemal.demir@email.com', '+90 (554) 444-1000', 2),
('dilara.kaya_m', 'Dilara-K-pass', 'dilara.kaya@email.com', '+90 (533) 999-1001', 2),
('esra.yaman_m', 'Esra-Y-pass', 'esra.yaman@email.com', '+90 (542) 666-1002', 2),
('fatih.guler_m', 'Fatih-G-pass', 'fatih.guler@email.com', '+90 (532) 123-1003', 2),
('gizem.taner_m', 'Gizem-T-pass', 'gizem.taner@email.com', '+90 (541) 987-1004', 2),
('hakan.aksu_m', 'Hakan-A-pass', 'hakan.aksu@email.com', '+90 (505) 111-1005', 2),
('ipek.tekin_m', 'Ipek-T-pass', 'ipek.tekin@email.com', '+90 (554) 444-1006', 2),
('kaan.celik_m', 'Kaan-C-pass', 'kaan.celik@email.com', '+90 (533) 999-1007', 2),
('leyla.demir_m', 'Leyla-D-pass', 'leyla.demir@email.com', '+90 (542) 666-1008', 2),
('mustafa.erdogan_m', 'Mustafa-E-pass', 'mustafa.erdogan@email.com', '+90 (532) 123-1009', 2),
('neslihan.soysal_m', 'Neslihan-S-pass', 'neslihan.soysal@email.com', '+90 (541) 987-1010', 2),
('ozturk.yildirim_m', 'Ozturk-Y-pass', 'ozturk.yildirim@email.com', '+90 (505) 111-1011', 2),
('pinar.sen_m', 'Pinar-S-pass', 'pinar.sen@email.com', '+90 (554) 444-1012', 2),
('serkan.ozkan_m', 'Serkan-O-pass', 'serkan.ozkan@email.com', '+90 (533) 999-1013', 2),
('sema.kurt_m', 'Sema-K-pass', 'sema.kurt@email.com', '+90 (542) 666-1014', 2),
('ugur.akin_m', 'Ugur-A-pass', 'ugur.akin@email.com', '+90 (532) 123-1015', 2),
('zeynep.tekin_m', 'Zeynep-T-pass', 'zeynep.tekin@email.com', '+90 (541) 987-1016', 2),
('volkan.polat_m', 'Volkan-P-pass', 'volkan.polat@email.com', '+90 (505) 111-1017', 2),
('aysun.ozsoy_m', 'Aysun-O-pass', 'aysun.ozsoy@email.com', '+90 (554) 444-1018', 2),
('cihan.arslan_m', 'Cihan-A-pass', 'cihan.arslan@email.com', '+90 (533) 999-1019', 2),
('seda.taner_m', 'Seda-T-pass', 'seda.taner@email.com', '+90 (542) 666-1020', 2),
('engin.guler_m', 'Engin-G-pass', 'engin.guler@email.com', '+90 (532) 123-1021', 2),
('gokce.yilmaz_m', 'Gokce-Y-pass', 'gokce.yilmaz@email.com', '+90 (541) 987-1022', 2),
('leyla.koc_m', 'Leyla-K-pass', 'leyla.koc@email.com', '+90 (505) 111-1023', 2),
('metehan.ozkan_m', 'Metehan-O-pass', 'metehan.ozkan@email.com', '+90 (554) 444-1024', 2),
('pelin.kurt_m', 'Pelin-K-pass', 'pelin.kurt@email.com', '+90 (533) 999-1025', 2),
('deniz.akin_m', 'Deniz-A-pass', 'deniz.akin@email.com', '+90 (542) 666-1026', 2),
('onur.yildiz_m', 'Onur-Y-pass', 'onur.yildiz@email.com', '+90 (532) 123-1027', 2),
('fatma.demir_m', 'Fatma-D-pass', 'fatma.demir@email.com', '+90 (541) 987-1028', 2),
('mustafa.arslan_m', 'Mustafa-A-pass', 'mustafa.arslan@email.com', '+90 (505) 111-1029', 2),
('zeynep.celik_m', 'Zeynep-C-pass', 'zeynep.celik@email.com', '+90 (554) 444-1030', 2),
('yusuf.ozsoy_m', 'Yusuf-O-pass', 'yusuf.ozsoy@email.com', '+90 (533) 999-1031', 2),
('aylin.tekin_m', 'Aylin-T-pass', 'aylin.tekin@email.com', '+90 (542) 666-1032', 2),
('tufan.yaman_m', 'Tufan-Y-pass', 'tufan.yaman@email.com', '+90 (532) 123-1033', 2),
('hulya.akin_m', 'Hulya-A-pass', 'hulya.akin@email.com', '+90 (541) 987-1034', 2),
('samet.guler_m', 'Samet-G-pass', 'samet.guler@email.com', '+90 (505) 111-1035', 2),
('ipek.polat_m', 'Ipek-P-pass', 'ipek.polat@email.com', '+90 (554) 444-1036', 2),
('canan.demirel_m', 'Canan-D-pass', 'canan.demirel@email.com', '+90 (533) 999-1037', 2),
('yigit.aksu_m', 'Yigit-A-pass', 'yigit.aksu@email.com', '+90 (542) 666-1038', 2),
('selim.taner_m', 'Selim-T-pass', 'selim.taner@email.com', '+90 (532) 123-1039', 2),
('buket.yildiz_m', 'Buket-Y-pass', 'buket.yildiz@email.com', '+90 (541) 987-1040', 2),

-- Şirket Rolü (id: 3) - 50 kayıt
('teknoloji_ltd_c', 'Tekno-Pass-01', 'iletisim@teknolojiltd.com.tr', '+90 (216) 111-2233', 3),
('lojistik_a.ş._c', 'Lojistik!2024', 'info@lojistik.com.tr', '+90 (212) 222-3344', 3),
('gida_marketleri_inc_c', 'Gida-Market-5', 'satis@gida.com.tr', '+90 (224) 333-4455', 3),
('otomotiv_sanayi_c', 'Oto.Sanayi#', 'musteri.hizmetleri@otomotiv.com', '+90 (232) 444-5566', 3),
('elektronik_ltd_c', 'Elektronik_24', 'info@elektronik.com', '+90 (216) 555-6677', 3),
('tekstil_a.ş._c', 'Tekstil#pass', 'satis@tekstil.com.tr', '+90 (212) 666-7788', 3),
('insaat_proje_c', 'Insaat_789', 'proje@insaat.com.tr', '+90 (224) 777-8899', 3),
('kimya_holding_c', 'Kimya_Hold$', 'iletisim@kimya.com', '+90 (232) 888-9900', 3),
('mobilya_ltd_c', 'Mobilya!pass', 'info@mobilya.com.tr', '+90 (216) 999-0011', 3),
('enerji_a.ş._c', 'Enerji_pass#', 'satis@enerji.com.tr', '+90 (212) 111-2233', 3),
('bilişim_ltd_c', 'Bilisim!pass', 'info@bilisim.com', '+90 (224) 222-3344', 3),
('gemi_inşaat_a.ş._c', 'Gemi_Insaat!', 'iletisim@gemi.com.tr', '+90 (232) 333-4455', 3),
('finans_ltd_c', 'Finans#pass', 'destek@finans.com', '+90 (216) 444-5566', 3),
('perakende_a.ş._c', 'Perakende!$', 'satis@perakende.com.tr', '+90 (212) 555-6677', 3),
('eğitim_kurumu_c', 'Egitim_pass!', 'info@egitim.com', '+90 (224) 666-7788', 3),
('sağlık_hizmetleri_c', 'Saglik#pass', 'randevu@saglik.com.tr', '+90 (232) 777-8899', 3),
('turizm_ltd_c', 'Turizm!pass', 'iletisim@turizm.com', '+90 (216) 888-9900', 3),
('gıda_sanayi_a.ş._c', 'Gida_Sanayi!', 'satis@gida-sanayi.com.tr', '+90 (212) 999-0011', 3),
('makina_a.ş._c', 'Makina#pass', 'info@makina.com.tr', '+90 (224) 111-2233', 3),
('yazılım_ltd_c', 'Yazilim!pass', 'destek@yazilim.com', '+90 (232) 222-3344', 3),
('mobilya_sanayi_a.ş._c', 'Mobilya_S#', 'iletisim@mobilyasanayi.com', '+90 (216) 333-4455', 3),
('lojistik_2_ltd_c', 'Lojistik2!$', 'info@lojistik2.com', '+90 (212) 444-5566', 3),
('inşaat_a.ş._c', 'Insaat-2024!', 'satis@insaat.com', '+90 (224) 555-6677', 3),
('gida_üretim_ltd_c', 'Gida-Uretim#', 'iletisim@gidauretim.com', '+90 (232) 666-7788', 3),
('otomotiv_parca_a.ş._c', 'Oto-Parca!', 'info@otoparca.com.tr', '+90 (216) 777-8899', 3),
('elektronik_ik_ltd_c', 'Elektronik-IK', 'destek@elektronikik.com', '+90 (212) 888-9900', 3),
('perakende_2_ltd_c', 'Perakende2!', 'satis@perakende2.com', '+90 (224) 999-0011', 3),
('enerji_yatırım_a.ş._c', 'Enerji-Yat$', 'iletisim@enerjiyatirim.com', '+90 (232) 111-2233', 3),
('tekstil_2_ltd_c', 'Tekstil-2#', 'info@tekstil2.com.tr', '+90 (216) 222-3344', 3),
('gemi_ltd_c', 'Gemi-Ltd!', 'satis@gemi-ltd.com', '+90 (212) 333-4455', 3),
('yazılım_çözümleri_c', 'Yazilim_Cozum#', 'iletisim@yazilimcozum.com', '+90 (224) 444-5566', 3),
('turizm_2_ltd_c', 'Turizm-2$', 'info@turizm2.com', '+90 (232) 555-6677', 3),
('makina_ik_ltd_c', 'Makina-IK#', 'destek@makinaik.com', '+90 (216) 666-7788', 3),
('otomotiv_3_ltd_c', 'Otomotiv-3!', 'satis@otomotiv3.com', '+90 (212) 777-8899', 3),
('gıda_ltd_c', 'Gida_Ltd#', 'iletisim@gidaltd.com', '+90 (224) 888-9900', 3),
('lojistik_3_a.ş._c', 'Lojistik-3!', 'info@lojistik3.com.tr', '+90 (232) 999-0011', 3),
('elektronik_3_ltd_c', 'Elektronik-3#', 'satis@elektronik3.com', '+90 (216) 111-2233', 3),
('inşaat_3_ltd_c', 'Insaat-3$', 'iletisim@insaat3.com', '+90 (212) 222-3344', 3),
('finans_2_a.ş._c', 'Finans-2#', 'destek@finans2.com', '+90 (224) 333-4455', 3),
('eğitim_2_ltd_c', 'Egitim-2!', 'info@egitim2.com', '+90 (232) 444-5566', 3),
('sağlık_2_a.ş._c', 'Saglik-2#', 'iletisim@saglik2.com', '+90 (216) 555-6677', 3),
('gıda_sanayi_2_ltd_c', 'Gida-Sanayi-2', 'satis@gida-sanayi2.com', '+90 (212) 666-7788', 3),
('makina_2_a.ş._c', 'Makina-2!', 'info@makina2.com', '+90 (224) 777-8899', 3),
('yazılım_2_ltd_c', 'Yazilim-2#', 'destek@yazilim2.com', '+90 (232) 888-9900', 3),
('mobilya_2_a.ş._c', 'Mobilya-2$', 'iletisim@mobilya2.com', '+90 (216) 999-0011', 3),
('enerji_2_ltd_c', 'Enerji-2#', 'info@enerji2.com', '+90 (212) 111-2233', 3),
('bilişim_2_a.ş._c', 'Bilisim-2!', 'satis@bilisim2.com', '+90 (224) 222-3344', 3),
('gemi_inşaat_2_ltd_c', 'Gemi-Insaat-2', 'iletisim@gemi-insaat2.com', '+90 (232) 333-4455', 3),
('perakende_3_a.ş._c', 'Perakende-3#', 'info@perakende3.com', '+90 (216) 444-5566', 3),
('eğitim_3_ltd_c', 'Egitim-3!', 'iletisim@egitim3.com', '+90 (212) 555-6677', 3),
('sağlık_3_ltd_c', 'Saglik-3$', 'info@saglik3.com', '+90 (224) 666-7788', 3),
('turizm_3_a.ş._c', 'Turizm-3#', 'iletisim@turizm3.com', '+90 (232) 777-8899', 3),
('gida_sanayi_3_ltd_c', 'Gida-Sanayi-3', 'info@gidasanayi3.com', '+90 (216) 888-9900', 3),

-- Çalışan Rolü (id: 4) - 47 kayıt
('ali.yildirim_e', 'AliYil-1234', 'a.yildirim@kargo.com.tr', '+90 (530) 123-1234', 4),
('fatma.ozkan_e', 'Fatma.O_Pass', 'f.ozkan@kargo.com.tr', '+90 (531) 234-5678', 4),
('murat.soylu_e', 'MuratS_Kargo!', 'm.soylu@kargo.com.tr', '+90 (532) 345-6789', 4),
('elif.kilic_e', 'ElifK-pass', 'e.kilic@kargo.com.tr', '+90 (533) 456-7890', 4),
('cem.arslan_e', 'CemA-Kargo#', 'c.arslan@kargo.com.tr', '+90 (534) 567-8901', 4),
('ayse.demir_e', 'AyseD-pass', 'ayse.demir@kargo.com.tr', '+90 (535) 678-9012', 4),
('burak.kaya_e', 'BurakK-123', 'burak.kaya@kargo.com.tr', '+90 (536) 789-0123', 4),
('deniz.yildirim_e', 'DenizY-pass', 'deniz.yildirim@kargo.com.tr', '+90 (537) 890-1234', 4),
('emre.celik_e', 'EmreC-pass', 'emre.celik@kargo.com.tr', '+90 (538) 901-2345', 4),
('fatma.yilmaz_e', 'FatmaY-123', 'fatma.yilmaz@kargo.com.tr', '+90 (539) 012-3456', 4),
('gokhan.soysal_e', 'GokhanS-pass', 'gokhan.soysal@kargo.com.tr', '+90 (540) 123-4567', 4),
('hatice.ozsoy_e', 'HaticeO-123', 'hatice.ozsoy@kargo.com.tr', '+90 (541) 234-5678', 4),
('ibrahim.taner_e', 'IbrahimT-pass', 'ibrahim.taner@kargo.com.tr', '+90 (542) 345-6789', 4),
('ipek.aksu_e', 'IpekA-123', 'ipek.aksu@kargo.com.tr', '+90 (543) 456-7890', 4),
('kaan.tekin_e', 'KaanT-pass', 'kaan.tekin@kargo.com.tr', '+90 (544) 567-8901', 4),
('leyla.gunes_e', 'LeylaG-123', 'leyla.gunes@kargo.com.tr', '+90 (545) 678-9012', 4),
('mehmet.arslan_e', 'MehmetA-pass', 'mehmet.arslan@kargo.com.tr', '+90 (546) 789-0123', 4),
('nazli.erdem_e', 'NazliE-123', 'nazli.erdem@kargo.com.tr', '+90 (547) 890-1234', 4),
('osman.polat_e', 'OsmanP-pass', 'osman.polat@kargo.com.tr', '+90 (548) 901-2345', 4),
('pelin.kurt_e', 'PelinK-123', 'pelin.kurt@kargo.com.tr', '+90 (549) 012-3456', 4),
('recep.demir_e', 'RecepD-pass', 'recep.demir@kargo.com.tr', '+90 (550) 123-4567', 4),
('sinem.yilmaz_e', 'SinemY-123', 'sinem.yilmaz@kargo.com.tr', '+90 (551) 234-5678', 4),
('tayfun.koc_e', 'TayfunK-pass', 'tayfun.koc@kargo.com.tr', '+90 (552) 345-6789', 4),
('ugur.akin_e', 'UgurA-123', 'ugur.akin@kargo.com.tr', '+90 (553) 456-7890', 4),
('volkan.can_e', 'VolkanC-pass', 'volkan.can@kargo.com.tr', '+90 (554) 567-8901', 4),
('yeliz.guler_e', 'YelizG-123', 'yeliz.guler@kargo.com.tr', '+90 (555) 678-9012', 4),
('zeynep.sen_e', 'ZeynepS-pass', 'zeynep.sen@kargo.com.tr', '+90 (556) 789-0123', 4),
('aliye.ozkan_e', 'AliyeO-123', 'aliye.ozkan@kargo.com.tr', '+90 (557) 890-1234', 4),
('batu.soylu_e', 'BatuS-pass', 'batu.soylu@kargo.com.tr', '+90 (558) 901-2345', 4),
('cemile.kilic_e', 'CemileK-123', 'cemile.kilic@kargo.com.tr', '+90 (559) 012-3456', 4),
('deniz.arslan_e', 'DenizA-pass', 'deniz.arslan@kargo.com.tr', '+90 (560) 123-4567', 4),
('esra.taner_e', 'EsraT-123', 'esra.taner@kargo.com.tr', '+90 (561) 234-5678', 4),
('feyyaz.kurt_e', 'FeyyazK-pass', 'feyyaz.kurt@kargo.com.tr', '+90 (562) 345-6789', 4),
('gamze.akin_e', 'GamzeA-123', 'gamze.akin@kargo.com.tr', '+90 (563) 456-7890', 4),
('hakan.yaman_e', 'HakanY-pass', 'hakan.yaman@kargo.com.tr', '+90 (564) 567-8901', 4),
('ilayda.ozsoy_e', 'IlaydaO-123', 'ilayda.ozsoy@kargo.com.tr', '+90 (565) 678-9012', 4),
('kerim.guler_e', 'KerimG-pass', 'kerim.guler@kargo.com.tr', '+90 (566) 789-0123', 4),
('levent.soylu_e', 'LeventS-123', 'levent.soylu@kargo.com.tr', '+90 (567) 890-1234', 4),
('merve.polat_e', 'MerveP-pass', 'merve.polat@kargo.com.tr', '+90 (568) 901-2345', 4),
('okan.kocak_e', 'OkanK-123', 'okan.kocak@kargo.com.tr', '+90 (569) 012-3456', 4),
('pinar.demir_e', 'PinarD-pass', 'pinar.demir@kargo.com.tr', '+90 (570) 123-4567', 4),
('samet.celik_e', 'SametC-123', 'samet.celik@kargo.com.tr', '+90 (571) 234-5678', 4),
('tuana.tekin_e', 'TuanaT-pass', 'tuana.tekin@kargo.com.tr', '+90 (572) 345-6789', 4),
('utku.arslan_e', 'UtkuA-123', 'utku.arslan@kargo.com.tr', '+90 (573) 456-7890', 4),
('volkan.yilmaz_e', 'VolkanY-pass', 'volkan.yilmaz@kargo.com.tr', '+90 (574) 567-8901', 4),
('yusuf.gunes_e', 'YusufG-123', 'yusuf.gunes@kargo.com.tr', '+90 (575) 678-9012', 4),
('zeynep.kaya_e', 'ZeynepK-pass', 'zeynep.kaya@kargo.com.tr', '+90 (576) 789-0123', 4);

-- 5. Admins TAblosu

INSERT INTO Admins (admin_id, user_id, first_name, last_name) VALUES
(1, 1, 'Ahmet', 'Yönetici');
INSERT INTO Admins (admin_id, user_id, first_name, last_name) VALUES
(2, 2, 'İrem', 'Yıldız');
INSERT INTO Admins (admin_id, user_id, first_name, last_name) VALUES
(3, 3, 'Can', 'Aydın');

-- 6. Addresses Tablosu 150 kayıt

INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 1, 'GÖKÇELİ MAH. Akpınar Sokak No: 12');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 169, 'YARIMOĞLU MAH. Orhangazi Caddesi No: 45');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 187, 'KURTULUŞ MAH. Zafer Sokak No: 7');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 99, 'KIRHASAN MAH. Cumhuriyet Caddesi No: 23');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 5, 'KAZANCI MAH. Çiçekli Sokak No: 67');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 114, 'ÇANDIK MAH. Fevzi Çakmak Sokak No: 89');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 691, 174, 'AKÇATEKİR MAH. İnönü Caddesi No: 1');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 195, 'ÇERALAN MAH. Bahar Sokak No: 33');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 23, 'SAYCA MAH. Güzeldere Caddesi No: 5');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 220, 'BEYCELİ MAH. Çamlıca Sokak No: 2');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 41, 'BARAKDAĞI MAH. Huzur Sokak No: 11');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 91, 'HACIHASAN MAH. Lale Sokak No: 29');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 108, 'ACARMANTAŞ MAH. Akasya Sokak No: 76');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 8, 'YEŞİL DÜŞMÜŞ MAH. Güneş Sokak No: 4');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 186, 'CUMHURİYET MAH. Papatya Caddesi No: 15');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 215, 'TÜLÜ MAH. Zambak Caddesi No: 10');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 219, 'ACIDEREOSB MAH. Sanayi Caddesi No: 3');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 87, 'ÇAVUŞLU MAH. Menekşe Sokak No: 50');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 16, 'ALAYBEYİ MAH. Yeşiltepe Sokak No: 88');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 155, 'ÖRENDERE MAH. Gürsel Sokak No: 6');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 60, 'KIRIKLI MAH. Gül Sokak No: 92');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 2, 'İSLAM MAH. Şehitler Caddesi No: 17');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 182, 'KARAKIŞLAKÇI MAH. Dere Sokak No: 4');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 218, 'ACIDEREOSB MAH. Organize Sokak No: 1');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 133, 'KEMERKÖY MAH. Hürriyet Caddesi No: 31');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 203, 'KANDİLLİ MAH. Fırat Sokak No: 14');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 78, 'ATAKÖY MAH. Kardeşlik Caddesi No: 99');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 19, 'CAMİLİ MAH. Ekin Caddesi No: 77');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 51, 'GÜLÜŞLÜ MAH. Cumhuriyet Caddesi No: 19');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 172, 'YARIMOĞLU MAH. Atatürk Caddesi No: 2');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 7, 'SÜLEMİŞLİ MAH. Park Sokak No: 8');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 180, 'FINDIKLI MAH. Kışla Sokak No: 11');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 221, 'BURUK CUMHURİYET MAH. Akdeniz Sokak No: 5');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 209, 'NARLIDERE MAH. Pınar Caddesi No: 20');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 93, 'HASIRAĞACI MAH. Çamlıca Sokak No: 13');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 126, 'GÖRBEYAZ MAH. Dereboyu Caddesi No: 44');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 11, 'HÜRRİYET MAH. Mehtap Sokak No: 55');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 69, 'SADIKALİ MAH. Şehitler Sokak No: 7');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 3, 'KARACAOĞLAN MAH. Cumhuriyet Caddesi No: 22');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 171, 'TUFANPAŞA MAH. Adalet Sokak No: 9');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 176, 'ALPU MAH. Fıstık Sokak No: 3');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 221, 'BURUK CUMHURİYET MAH. Deniz Sokak No: 16');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 190, 'AKSAAĞAÇ MAH. Huzur Caddesi No: 40');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 80, 'BEBELİ MAH. Lale Sokak No: 18');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 158, 'POSTKABASAKAL MAH. Hürriyet Caddesi No: 72');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 30, 'SOKUTAŞ MAH. Menekşe Sokak No: 36');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 59, 'KIRALAN MAH. Ekin Sokak No: 25');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 6, 'KEKLİKÇİ MAH. Çınar Caddesi No: 4');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 163, 'YUKARIKEÇİLİ MAH. Park Caddesi No: 100');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 178, 'BELEMEDİK MAH. Cumhuriyet Caddesi No: 20');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 220, 'BEYCELİ MAH. Işık Sokak No: 7');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 214, 'TOPALLAR MAH. Dere Sokak No: 26');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 75, 'ADALI MAH. Atatürk Caddesi No: 42');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 137, 'KIBRISLAR MAH. Barış Sokak No: 83');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 34, 'YENİEVLER MAH. Hürriyet Sokak No: 12');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 63, 'KÖRÜKLÜ MAH. Vatan Caddesi No: 58');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 4, 'KARACAUŞAĞI MAH. Fatih Sokak No: 33');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 110, 'AKÇALIUŞAĞI MAH. Zafer Caddesi No: 71');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 184, 'ÖMERLİ MAH. Papatya Sokak No: 21');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 218, 'ACIDEREOSB MAH. Fabrika Sokak No: 10');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 199, 'DEĞİRMENCİUŞAĞI MAH. Huzur Sokak No: 5');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 84, 'ÇAKIRÖREN MAH. Güneş Sokak No: 9');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 149, 'MİNNETLİ MAH. Çınar Caddesi No: 3');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 27, 'PEKMEZCİ MAH. Dere Caddesi No: 48');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 67, 'SARIMEHMETLİ MAH. Barış Sokak No: 73');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 1, 'GÖKÇELİ MAH. Akpınar Sokak No: 1');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 169, 'YARIMOĞLU MAH. Orhangazi Caddesi No: 2');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 187, 'KURTULUŞ MAH. Zafer Sokak No: 3');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 99, 'KIRHASAN MAH. Cumhuriyet Caddesi No: 4');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 5, 'KAZANCI MAH. Çiçekli Sokak No: 5');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 114, 'ÇANDIK MAH. Fevzi Çakmak Sokak No: 6');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 691, 174, 'AKÇATEKİR MAH. İnönü Caddesi No: 7');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 195, 'ÇERALAN MAH. Bahar Sokak No: 8');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 23, 'SAYCA MAH. Güzeldere Caddesi No: 9');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 220, 'BEYCELİ MAH. Çamlıca Sokak No: 10');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 41, 'BARAKDAĞI MAH. Huzur Sokak No: 11');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 91, 'HACIHASAN MAH. Lale Sokak No: 12');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 108, 'ACARMANTAŞ MAH. Akasya Sokak No: 13');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 8, 'YEŞİL DÜŞMÜŞ MAH. Güneş Sokak No: 14');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 186, 'CUMHURİYET MAH. Papatya Caddesi No: 15');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 215, 'TÜLÜ MAH. Zambak Caddesi No: 16');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 219, 'ACIDEREOSB MAH. Sanayi Caddesi No: 17');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 87, 'ÇAVUŞLU MAH. Menekşe Sokak No: 18');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 16, 'ALAYBEYİ MAH. Yeşiltepe Sokak No: 19');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 155, 'ÖRENDERE MAH. Gürsel Sokak No: 20');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 60, 'KIRIKLI MAH. Gül Sokak No: 21');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 2, 'İSLAM MAH. Şehitler Caddesi No: 22');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 182, 'KARAKIŞLAKÇI MAH. Dere Sokak No: 23');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 218, 'ACIDEREOSB MAH. Organize Sokak No: 24');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 133, 'KEMERKÖY MAH. Hürriyet Caddesi No: 25');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 203, 'KANDİLLİ MAH. Fırat Sokak No: 26');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 78, 'ATAKÖY MAH. Kardeşlik Caddesi No: 27');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 19, 'CAMİLİ MAH. Ekin Caddesi No: 28');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 51, 'GÜLÜŞLÜ MAH. Cumhuriyet Caddesi No: 29');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 172, 'YARIMOĞLU MAH. Atatürk Caddesi No: 30');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 7, 'SÜLEMİŞLİ MAH. Park Sokak No: 31');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 180, 'FINDIKLI MAH. Kışla Sokak No: 32');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 221, 'BURUK CUMHURİYET MAH. Akdeniz Sokak No: 33');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 209, 'NARLIDERE MAH. Pınar Caddesi No: 34');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 93, 'HASIRAĞACI MAH. Çamlıca Sokak No: 35');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 126, 'GÖRBEYAZ MAH. Dereboyu Caddesi No: 36');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 11, 'HÜRRİYET MAH. Mehtap Sokak No: 37');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 69, 'SADIKALİ MAH. Şehitler Sokak No: 38');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 3, 'KARACAOĞLAN MAH. Cumhuriyet Caddesi No: 39');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 171, 'TUFANPAŞA MAH. Adalet Sokak No: 40');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 176, 'ALPU MAH. Fıstık Sokak No: 41');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 221, 'BURUK CUMHURİYET MAH. Deniz Sokak No: 42');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 190, 'AKSAAĞAÇ MAH. Huzur Caddesi No: 43');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 80, 'BEBELİ MAH. Lale Sokak No: 44');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 158, 'POSTKABASAKAL MAH. Hürriyet Caddesi No: 45');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 30, 'SOKUTAŞ MAH. Menekşe Sokak No: 46');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 59, 'KIRALAN MAH. Ekin Sokak No: 47');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 6, 'KEKLİKÇİ MAH. Çınar Caddesi No: 48');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 163, 'YUKARIKEÇİLİ MAH. Park Caddesi No: 49');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 178, 'BELEMEDİK MAH. Cumhuriyet Caddesi No: 50');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 220, 'BEYCELİ MAH. Işık Sokak No: 51');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 214, 'TOPALLAR MAH. Dere Sokak No: 52');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 75, 'ADALI MAH. Atatürk Caddesi No: 53');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 137, 'KIBRISLAR MAH. Barış Sokak No: 54');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 34, 'YENİEVLER MAH. Hürriyet Sokak No: 55');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 63, 'KÖRÜKLÜ MAH. Vatan Caddesi No: 56');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 4, 'KARACAUŞAĞI MAH. Fatih Sokak No: 57');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 110, 'AKÇALIUŞAĞI MAH. Zafer Caddesi No: 58');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 184, 'ÖMERLİ MAH. Papatya Sokak No: 59');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 218, 'ACIDEREOSB MAH. Fabrika Sokak No: 60');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 199, 'DEĞİRMENCİUŞAĞI MAH. Huzur Sokak No: 61');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 84, 'ÇAKIRÖREN MAH. Güneş Sokak No: 62');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 149, 'MİNNETLİ MAH. Çınar Caddesi No: 63');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 27, 'PEKMEZCİ MAH. Dere Caddesi No: 64');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 67, 'SARIMEHMETLİ MAH. Barış Sokak No: 65');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 1, 'GÖKÇELİ MAH. Akpınar Sokak No: 66');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 169, 'YARIMOĞLU MAH. Orhangazi Caddesi No: 67');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 187, 'KURTULUŞ MAH. Zafer Sokak No: 68');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 99, 'KIRHASAN MAH. Cumhuriyet Caddesi No: 69');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 5, 'KAZANCI MAH. Çiçekli Sokak No: 70');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 114, 'ÇANDIK MAH. Fevzi Çakmak Sokak No: 71');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 691, 174, 'AKÇATEKİR MAH. İnönü Caddesi No: 72');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 195, 'ÇERALAN MAH. Bahar Sokak No: 73');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 23, 'SAYCA MAH. Güzeldere Caddesi No: 74');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 220, 'BEYCELİ MAH. Çamlıca Sokak No: 75');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 41, 'BARAKDAĞI MAH. Huzur Sokak No: 76');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 91, 'HACIHASAN MAH. Lale Sokak No: 77');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 108, 'ACARMANTAŞ MAH. Akasya Sokak No: 78');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 8, 'YEŞİL DÜŞMÜŞ MAH. Güneş Sokak No: 79');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 186, 'CUMHURİYET MAH. Papatya Caddesi No: 80');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 215, 'TÜLÜ MAH. Zambak Caddesi No: 81');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 219, 'ACIDEREOSB MAH. Sanayi Caddesi No: 82');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 87, 'ÇAVUŞLU MAH. Menekşe Sokak No: 83');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 16, 'ALAYBEYİ MAH. Yeşiltepe Sokak No: 84');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 155, 'ÖRENDERE MAH. Gürsel Sokak No: 85');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 60, 'KIRIKLI MAH. Gül Sokak No: 86');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 2, 'İSLAM MAH. Şehitler Caddesi No: 87');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 182, 'KARAKIŞLAKÇI MAH. Dere Sokak No: 88');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 218, 'ACIDEREOSB MAH. Organize Sokak No: 89');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 133, 'KEMERKÖY MAH. Hürriyet Caddesi No: 90');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 203, 'KANDİLLİ MAH. Fırat Sokak No: 91');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 78, 'ATAKÖY MAH. Kardeşlik Caddesi No: 92');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 19, 'CAMİLİ MAH. Ekin Caddesi No: 93');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 51, 'GÜLÜŞLÜ MAH. Cumhuriyet Caddesi No: 94');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 172, 'YARIMOĞLU MAH. Atatürk Caddesi No: 95');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 7, 'SÜLEMİŞLİ MAH. Park Sokak No: 96');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 180, 'FINDIKLI MAH. Kışla Sokak No: 97');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 221, 'BURUK CUMHURİYET MAH. Akdeniz Sokak No: 98');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 209, 'NARLIDERE MAH. Pınar Caddesi No: 99');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 93, 'HASIRAĞACI MAH. Çamlıca Sokak No: 100');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 126, 'GÖRBEYAZ MAH. Dereboyu Caddesi No: 101');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 11, 'HÜRRİYET MAH. Mehtap Sokak No: 102');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 69, 'SADIKALİ MAH. Şehitler Sokak No: 103');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 3, 'KARACAOĞLAN MAH. Cumhuriyet Caddesi No: 104');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 171, 'TUFANPAŞA MAH. Adalet Sokak No: 105');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 176, 'ALPU MAH. Fıstık Sokak No: 106');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 221, 'BURUK CUMHURİYET MAH. Deniz Sokak No: 107');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 190, 'AKSAAĞAÇ MAH. Huzur Caddesi No: 108');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 80, 'BEBELİ MAH. Lale Sokak No: 109');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 158, 'POSTKABASAKAL MAH. Hürriyet Caddesi No: 110');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 30, 'SOKUTAŞ MAH. Menekşe Sokak No: 111');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 59, 'KIRALAN MAH. Ekin Sokak No: 112');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 6, 'KEKLİKÇİ MAH. Çınar Caddesi No: 113');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 163, 'YUKARIKEÇİLİ MAH. Park Caddesi No: 114');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 178, 'BELEMEDİK MAH. Cumhuriyet Caddesi No: 115');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 220, 'BEYCELİ MAH. Işık Sokak No: 116');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 214, 'TOPALLAR MAH. Dere Sokak No: 117');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 75, 'ADALI MAH. Atatürk Caddesi No: 118');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 137, 'KIBRISLAR MAH. Barış Sokak No: 119');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 34, 'YENİEVLER MAH. Hürriyet Sokak No: 120');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 63, 'KÖRÜKLÜ MAH. Vatan Caddesi No: 121');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 4, 'KARACAUŞAĞI MAH. Fatih Sokak No: 122');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 110, 'AKÇALIUŞAĞI MAH. Zafer Caddesi No: 123');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 184, 'ÖMERLİ MAH. Papatya Sokak No: 124');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 218, 'ACIDEREOSB MAH. Fabrika Sokak No: 125');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 199, 'DEĞİRMENCİUŞAĞI MAH. Huzur Sokak No: 126');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 84, 'ÇAKIRÖREN MAH. Güneş Sokak No: 127');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 149, 'MİNNETLİ MAH. Çınar Caddesi No: 128');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 27, 'PEKMEZCİ MAH. Dere Caddesi No: 129');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 67, 'SARIMEHMETLİ MAH. Barış Sokak No: 130');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 1, 'GÖKÇELİ MAH. Akpınar Sokak No: 131');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 169, 'YARIMOĞLU MAH. Orhangazi Caddesi No: 132');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 187, 'KURTULUŞ MAH. Zafer Sokak No: 133');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 99, 'KIRHASAN MAH. Cumhuriyet Caddesi No: 134');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 5, 'KAZANCI MAH. Çiçekli Sokak No: 135');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 114, 'ÇANDIK MAH. Fevzi Çakmak Sokak No: 136');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 691, 174, 'AKÇATEKİR MAH. İnönü Caddesi No: 137');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 195, 'ÇERALAN MAH. Bahar Sokak No: 138');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 23, 'SAYCA MAH. Güzeldere Caddesi No: 139');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 220, 'BEYCELİ MAH. Çamlıca Sokak No: 140');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 495, 41, 'BARAKDAĞI MAH. Huzur Sokak No: 141');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 91, 'HACIHASAN MAH. Lale Sokak No: 142');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 108, 'ACARMANTAŞ MAH. Akasya Sokak No: 143');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (1, 340, 8, 'YEŞİL DÜŞMÜŞ MAH. Güneş Sokak No: 144');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 691, 186, 'CUMHURİYET MAH. Papatya Caddesi No: 145');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 699, 215, 'TÜLÜ MAH. Zambak Caddesi No: 146');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (19, 713, 219, 'ACIDEREOSB MAH. Sanayi Caddesi No: 147');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (24, 505, 87, 'ÇAVUŞLU MAH. Menekşe Sokak No: 148');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (22, 453, 16, 'ALAYBEYİ MAH. Yeşiltepe Sokak No: 149');
INSERT INTO Addresses (city_id, district_id, neighborhood_id, full_address) VALUES (20, 563, 155, 'ÖRENDERE MAH. Gürsel Sokak No: 150');

-- 7. Branches Tablosu
INSERT INTO Branches (branch_name, address_id) VALUES ('İstanbul Pozantı Şubesi', 7);
INSERT INTO Branches (branch_name, address_id) VALUES ('İstanbul Sarıçam Şubesi', 10);
INSERT INTO Branches (branch_name, address_id) VALUES ('İstanbul Akçatekir Şubesi', 137);

-- Ankara Şubeleri (Cities tablosunda City ID 1 olarak geçiyor)
INSERT INTO Branches (branch_name, address_id) VALUES ('Ankara Akyurt Şubesi', 1);
INSERT INTO Branches (branch_name, address_id) VALUES ('Ankara Kazancı Şubesi', 5);
INSERT INTO Branches (branch_name, address_id) VALUES ('Ankara Keklikçi Şubesi', 113);

-- Adana Şubeleri (Cities tablosunda City ID 19 olarak geçiyor)
INSERT INTO Branches (branch_name, address_id) VALUES ('Adana Akçatekir Şubesi', 72);
INSERT INTO Branches (branch_name, address_id) VALUES ('Adana Buruk Şubesi', 98);

-- İzmir Şubeleri (Cities tablosunda City ID 22 olarak geçiyor)
INSERT INTO Branches (branch_name, address_id) VALUES ('İzmir Sayca Şubesi', 9);
INSERT INTO Branches (branch_name, address_id) VALUES ('İzmir Alaybeyi Şubesi', 11);

-- Diğer Şehirler (Tek Şubeli)
INSERT INTO Branches (branch_name, address_id) VALUES ('Bursa Acar Mantaş Şubesi', 13);
INSERT INTO Branches (branch_name, address_id) VALUES ('Kırşehir Ataköy Şubesi', 27);
INSERT INTO Branches (branch_name, address_id) VALUES ('Çorum Fındıklı Şubesi', 32);
INSERT INTO Branches (branch_name, address_id) VALUES ('Manisa Şubesi', 41);
INSERT INTO Branches (branch_name, address_id) VALUES ('Konya Şubesi', 44);
INSERT INTO Branches (branch_name, address_id) VALUES ('Kastamonu Şubesi', 46);
INSERT INTO Branches (branch_name, address_id) VALUES ('Muğla Şubesi', 48);
INSERT INTO Branches (branch_name, address_id) VALUES ('Sivas Şubesi', 52);
INSERT INTO Branches (branch_name, address_id) VALUES ('Van Şubesi', 53);
INSERT INTO Branches (branch_name, address_id) VALUES ('Erzurum Şubesi', 59);
INSERT INTO Branches (branch_name, address_id) VALUES ('Gaziantep Şubesi', 61);
INSERT INTO Branches (branch_name, address_id) VALUES ('Diyarbakır Şubesi', 62);

-- 8. Employees 

INSERT INTO Employees (employee_id, user_id, first_name, last_name, branch_id, position_id) VALUES
(1, 154, 'Ali', 'Yildirim', 1, 1),
(2, 155, 'Fatma', 'Ozkan', 2, 2),
(3, 156, 'Murat', 'Soylu', 3, 3),
(4, 157, 'Elif', 'Kilic', 4, 4),
(5, 158, 'Cem', 'Arslan', 5, 1),
(6, 159, 'Ayse', 'Demir', 1, 2),
(7, 160, 'Burak', 'Kaya', 2, 3),
(8, 161, 'Deniz', 'Yildirim', 3, 4),
(9, 162, 'Emre', 'Celik', 4, 1),
(10, 163, 'Fatma', 'Yilmaz', 5, 2),
(11, 164, 'Gokhan', 'Soysal', 1, 3),
(12, 165, 'Hatice', 'Ozsoy', 2, 4),
(13, 166, 'Ibrahim', 'Taner', 3, 1),
(14, 167, 'Ipek', 'Aksu', 4, 2),
(15, 168, 'Kaan', 'Tekin', 5, 3),
(16, 169, 'Leyla', 'Gunes', 1, 4),
(17, 170, 'Mehmet', 'Arslan', 2, 1),
(18, 171, 'Nazli', 'Erdem', 3, 2),
(19, 172, 'Osman', 'Polat', 4, 3),
(20, 173, 'Pelin', 'Kurt', 5, 4),
(21, 174, 'Recep', 'Demir', 1, 1),
(22, 175, 'Sinem', 'Yilmaz', 2, 2),
(23, 176, 'Tayfun', 'Koc', 3, 3),
(24, 177, 'Ugur', 'Akin', 4, 4),
(25, 178, 'Volkan', 'Can', 5, 1),
(26, 179, 'Yeliz', 'Guler', 1, 2),
(27, 180, 'Zeynep', 'Sen', 2, 3),
(28, 181, 'Aliye', 'Ozkan', 3, 4),
(29, 182, 'Batu', 'Soylu', 4, 1),
(30, 183, 'Cemile', 'Kilic', 5, 2),
(31, 184, 'Deniz', 'Arslan', 1, 3),
(32, 185, 'Esra', 'Taner', 2, 4),
(33, 186, 'Feyyaz', 'Kurt', 3, 1),
(34, 187, 'Gamze', 'Akin', 4, 2),
(35, 188, 'Hakan', 'Yaman', 5, 3),
(36, 189, 'Ilayda', 'Ozsoy', 1, 4),
(37, 190, 'Kerim', 'Guler', 2, 1),
(38, 191, 'Levent', 'Soylu', 3, 2),
(39, 192, 'Merve', 'Polat', 4, 3),
(40, 193, 'Okan', 'Kocak', 5, 4),
(41, 194, 'Pinar', 'Demir', 1, 1),
(42, 195, 'Samet', 'Celik', 2, 2),
(43, 196, 'Tuana', 'Tekin', 3, 3),
(44, 197, 'Utku', 'Arslan', 4, 4),
(45, 198, 'Volkan', 'Yilmaz', 5, 1),
(46, 199, 'Yusuf', 'Gunes', 1, 2),
(47, 200, 'Zeynep', 'Kaya', 2, 3);

-- 9. Companies

INSERT INTO Companies (user_id, company_name, tax_no, address_id) VALUES
(104, 'Teknoloji Ltd.', '8675309482', 1),
(105, 'Lojistik A.Ş.', '9234185760', 2),
(106, 'Gıda Marketleri Inc.', '7329561084', 3),
(107, 'Otomotiv Sanayi', '8147639250', 4),
(108, 'Elektronik Ltd.', '4591782360', 5),
(109, 'Tekstil A.Ş.', '6802495173', 6),
(110, 'İnşaat Proje', '3028574961', 7),
(111, 'Kimya Holding', '9715320846', 8),
(112, 'Mobilya Ltd.', '5482910376', 9),
(113, 'Enerji A.Ş.', '2169853704', 10),
(114, 'Bilişim Ltd.', '4086259173', 11),
(115, 'Gemi İnşaat A.Ş.', '7931508624', 12),
(116, 'Finans Ltd.', '6014972583', 13),
(117, 'Perakende A.Ş.', '3852097416', 14),
(118, 'Eğitim Kurumu', '1947256380', 15),
(119, 'Sağlık Hizmetleri', '8520463971', 16),
(120, 'Turizm Ltd.', '7639148025', 17),
(121, 'Gıda Sanayi A.Ş.', '9405827136', 18),
(122, 'Makina A.Ş.', '5278160493', 19),
(123, 'Yazılım Ltd.', '2910745638', 20),
(124, 'Mobilya Sanayi A.Ş.', '8063519724', 21),
(125, 'Lojistik 2 Ltd.', '4792681530', 22),
(126, 'İnşaat A.Ş.', '7105392846', 23),
(127, 'Gıda Üretim Ltd.', '6284750193', 24),
(128, 'Otomotiv Parça A.Ş.', '3591406872', 25),
(129, 'Elektronik IK Ltd.', '9876543210', 26),
(130, 'Perakende 2 Ltd.', '1098765432', 27),
(131, 'Enerji Yatırım A.Ş.', '8765432109', 28),
(132, 'Tekstil 2 Ltd.', '2345678901', 29),
(133, 'Gemi Ltd.', '9012345678', 30),
(134, 'Yazılım Çözümleri', '5678901234', 31),
(135, 'Turizm 2 Ltd.', '4321098765', 32),
(136, 'Makina IK Ltd.', '7890123456', 33),
(137, 'Otomotiv 3 Ltd.', '3456789012', 34),
(138, 'Gıda Ltd.', '6789012345', 35),
(139, 'Lojistik 3 A.Ş.', '1234567890', 36),
(140, 'Elektronik 3 Ltd.', '9876543210', 37),
(141, 'İnşaat 3 Ltd.', '2109876543', 38),
(142, 'Finans 2 A.Ş.', '4567890123', 39),
(143, 'Eğitim 2 Ltd.', '8901234567', 40),
(144, 'Sağlık 2 A.Ş.', '6543210987', 41),
(145, 'Gıda Sanayi 2 Ltd.', '3210987654', 42),
(146, 'Makina 2 A.Ş.', '7890123456', 43),
(147, 'Yazılım 2 Ltd.', '5432109876', 44),
(148, 'Mobilya 2 A.Ş.', '9876543210', 45),
(149, 'Enerji 2 Ltd.', '1029384756', 46),
(150, 'Bilişim 2 A.Ş.', '6758493021', 47),
(151, 'Gemi İnşaat 2 Ltd.', '8970615243', 48),
(152, 'Perakende 3 A.Ş.', '4567890123', 49),
(153, 'Eğitim 3 Ltd.', '1122334455', 50);


-- 10.  Customners

INSERT INTO Customers (user_id, first_name, last_name, identity_no, address_id) VALUES
(4, 'Ayse', 'Yilmaz', '12345678901', 1),
(5, 'Mehmet', 'Kaya', '12345678902', 2),
(6, 'Zeynep', 'Demir', '12345678903', 3),
(7, 'Ahmet', 'Celik', '12345678904', 4),
(8, 'Cansu', 'Arslan', '12345678905', 5),
(9, 'Deniz', 'Ozsoy', '12345678906', 6),
(10, 'Mustafa', 'Aydin', '12345678907', 7),
(11, 'Elif', 'Karaca', '12345678908', 8),
(12, 'Berat', 'Sen', '12345678909', 9),
(13, 'Gizem', 'Tuna', '12345678910', 10),
(14, 'Serkan', 'Koc', '12345678911', 11),
(15, 'Sema', 'Guven', '12345678912', 12),
(16, 'Kaan', 'Yildiz', '12345678913', 13),
(17, 'Asli', 'Polat', '12345678914', 14),
(18, 'Emre', 'Gunes', '12345678915', 15),
(19, 'Fatma', 'Akin', '12345678916', 16),
(20, 'Burak', 'Soysal', '12345678917', 17),
(21, 'Ipek', 'Taner', '12345678918', 18),
(22, 'Tayfun', 'Ercan', '12345678919', 19),
(23, 'Nazli', 'Ozer', '12345678920', 20),
(24, 'Osman', 'Demirel', '12345678921', 21),
(25, 'Selin', 'Tekin', '12345678922', 22),
(26, 'Volkan', 'Sahin', '12345678923', 23),
(27, 'Duygu', 'Ulku', '12345678924', 24),
(28, 'Hakan', 'Yaman', '12345678925', 25),
(29, 'Esra', 'Yilmaz', '12345678926', 26),
(30, 'Ozturk', 'Aksu', '12345678927', 27),
(31, 'Gamze', 'Erdem', '12345678928', 28),
(32, 'Ismail', 'Tokat', '12345678929', 29),
(33, 'Ece', 'Korkmaz', '12345678930', 30),
(34, 'Cenk', 'Tan', '12345678931', 31),
(35, 'Pinar', 'Soylu', '12345678932', 32),
(36, 'Serhat', 'Kurt', '12345678933', 33),
(37, 'Sinem', 'Ay', '12345678934', 34),
(38, 'Yasin', 'Koc', '12345678935', 35),
(39, 'Buse', 'Aksoy', '12345678936', 36),
(40, 'Okan', 'Arslan', '12345678937', 37),
(41, 'Defne', 'Can', '12345678938', 38),
(42, 'Ugur', 'Yildirim', '12345678939', 39),
(43, 'Hilal', 'Aksoy', '12345678940', 40),
(44, 'Fatih', 'Karaca', '12345678941', 41),
(45, 'Hulya', 'Guler', '12345678942', 42),
(46, 'Adem', 'Yilmaz', '12345678943', 43),
(47, 'Esma', 'Ozkan', '12345678944', 44),
(48, 'Kemal', 'Kurt', '12345678945', 45),
(49, 'Sevda', 'Aydin', '12345678946', 46),
(50, 'Levent', 'Soylu', '12345678947', 47),
(51, 'Aynur', 'Tek', '12345678948', 48),
(52, 'Murat', 'Celik', '12345678949', 49),
(53, 'Neslihan', 'Yilmaz', '12345678950', 50),
(54, 'Okan', 'Kocak', '12345678951', 51),
(55, 'Derya', 'Yaman', '12345678952', 52),
(56, 'Gokhan', 'Kaya', '12345678953', 53),
(57, 'Selin', 'Aksu', '12345678954', 54),
(58, 'Metin', 'Demir', '12345678955', 55),
(59, 'Esra', 'Arslan', '12345678956', 56),
(60, 'Deniz', 'Polat', '12345678957', 57),
(61, 'Yasemin', 'Ozturk', '12345678958', 58),
(62, 'Volkan', 'Aydin', '12345678959', 59),
(63, 'Aysun', 'Can', '12345678960', 60),
(64, 'Cihan', 'Yildiz', '12345678961', 61),
(65, 'Seda', 'Gunes', '12345678962', 62),
(66, 'Engin', 'Sen', '12345678963', 63),
(67, 'Gokce', 'Tekin', '12345678964', 64),
(68, 'Leyla', 'Aksu', '12345678965', 65),
(69, 'Metehan', 'Kurt', '12345678966', 66),
(70, 'Pelin', 'Yaman', '12345678967', 67),
(71, 'Deniz', 'Aksoy', '12345678968', 68),
(72, 'Onur', 'Demirel', '12345678969', 69),
(73, 'Fatma', 'Sahin', '12345678970', 70),
(74, 'Mustafa', 'Taner', '12345678971', 71),
(75, 'Zeynep', 'Akin', '12345678972', 72),
(76, 'Yusuf', 'Koc', '12345678973', 73),
(77, 'Aylin', 'Ozturk', '12345678974', 74),
(78, 'Tufan', 'Celik', '12345678975', 75),
(79, 'Hulya', 'Yilmaz', '12345678976', 76),
(80, 'Samet', 'Ozsoy', '12345678977', 77),
(81, 'Ipek', 'Arslan', '12345678978', 78),
(82, 'Canan', 'Kurt', '12345678979', 79),
(83, 'Yigit', 'Sahin', '12345678980', 80),
(84, 'Selim', 'Polat', '12345678981', 81),
(85, 'Buket', 'Guler', '12345678982', 82),
(86, 'Feyza', 'Erdogan', '12345678983', 83),
(87, 'Burak', 'Kaya', '12345678984', 84),
(88, 'Sinem', 'Yilmaz', '12345678985', 85),
(89, 'Emre', 'Soysal', '12345678986', 86),
(90, 'Sevgi', 'Can', '12345678987', 87),
(91, 'Ali', 'Erdem', '12345678988', 88),
(92, 'Berkay', 'Tekin', '12345678989', 89),
(93, 'Gizem', 'Gunes', '12345678990', 90),
(94, 'Okan', 'Yilmaz', '12345678991', 91),
(95, 'Derya', 'Karaca', '12345678992', 92),
(96, 'Kerem', 'Polat', '12345678993', 93),
(97, 'Pinar', 'Demir', '12345678994', 94),
(98, 'Cagla', 'Ozkan', '12345678995', 95),
(99, 'Yasin', 'Taner', '12345678996', 96),
(100, 'Ece', 'Sahin', '12345678997', 97),
(101, 'Emre', 'Gunes', '12345678998', 98),
(102, 'Fatma', 'Aydin', '12345678999', 99),
(103, 'Kaan', 'Tekin', '12345679000', 100);

-- 11. Cargos

-- 4 ile 153 arasındaki kullanıcı kimliklerini kullanarak Cargos tablosuna 500 adet örnek kayıt ekler.
-- Gönderici ve alıcı kullanıcı kimlikleri aynı olamaz.

INSERT INTO Cargos (tracking_no, sender_user_id, receiver_user_id, weight, desi, content_description, shipping_date, delivery_date) VALUES
('TRK-000001', 112, 5, 12.50, 4, 'Elektronik Cihaz', '2023-01-15 10:30:00', '2023-01-20 14:00:00'),
('TRK-000002', 25, 87, 3.20, 1, 'Kıyafet', '2023-02-20 15:00:00', '2023-02-25 09:30:00'),
('TRK-000003', 4, 153, 50.00, 20, 'Ev Eşyası', '2023-03-05 08:00:00', '2023-03-10 18:00:00'),
('TRK-000004', 153, 4, 15.75, 5, 'Belgeler', '2023-04-10 11:45:00', '2023-04-12 16:20:00'),
('TRK-000005', 90, 21, 7.80, 3, 'Kitap', '2023-05-01 13:10:00', '2023-05-07 10:00:00'),
('TRK-000006', 15, 120, 22.30, 8, 'Elektronik Cihaz', '2023-06-08 09:00:00', '2023-06-15 11:00:00'),
('TRK-000007', 77, 45, 1.50, 1, 'Kıyafet', '2023-07-22 17:30:00', '2023-07-25 12:00:00'),
('TRK-000008', 33, 102, 35.00, 15, 'Ev Eşyası', '2023-08-01 14:00:00', '2023-08-06 17:30:00'),
('TRK-000009', 101, 6, 8.90, 2, 'Belgeler', '2023-09-09 10:00:00', '2023-09-11 15:00:00'),
('TRK-000010', 44, 145, 18.25, 7, 'Kitap', '2023-10-18 16:00:00', '2023-10-24 10:00:00'),
('TRK-000011', 121, 88, 4.75, 2, 'Elektronik Cihaz', '2023-11-25 12:00:00', '2023-11-28 14:00:00'),
('TRK-000012', 55, 66, 29.80, 10, 'Ev Eşyası', '2023-12-05 11:00:00', '2023-12-12 16:00:00'),
('TRK-000013', 99, 13, 6.00, 2, 'Kıyafet', '2024-01-02 09:30:00', '2024-01-05 13:00:00'),
('TRK-000014', 10, 100, 45.00, 18, 'Belgeler', '2024-02-14 14:30:00', '2024-02-19 11:00:00'),
('TRK-000015', 73, 115, 1.90, 1, 'Kitap', '2024-03-20 16:15:00', '2024-03-22 10:30:00'),
('TRK-000016', 5, 110, 10.50, 4, 'Elektronik Cihaz', '2024-04-01 08:00:00', '2024-04-05 13:00:00'),
('TRK-000017', 153, 85, 2.75, 1, 'Kıyafet', '2024-05-10 10:00:00', '2024-05-13 16:00:00'),
('TRK-000018', 4, 105, 33.00, 13, 'Ev Eşyası', '2024-06-18 11:00:00', '2024-06-25 10:00:00'),
('TRK-000019', 80, 130, 9.15, 3, 'Belgeler', '2024-07-07 14:00:00', '2024-07-10 18:30:00'),
('TRK-000020', 60, 20, 25.50, 9, 'Kitap', '2024-08-22 15:30:00', '2024-08-29 14:00:00'),
('TRK-000021', 133, 44, 14.80, 5, 'Elektronik Cihaz', '2023-01-25 10:00:00', '2023-01-30 15:00:00'),
('TRK-000022', 76, 12, 1.90, 1, 'Kıyafet', '2023-02-10 11:00:00', '2023-02-13 10:00:00'),
('TRK-000023', 150, 50, 48.00, 19, 'Ev Eşyası', '2023-03-08 14:00:00', '2023-03-15 17:00:00'),
('TRK-000024', 4, 150, 7.50, 2, 'Belgeler', '2023-04-15 16:30:00', '2023-04-17 12:00:00'),
('TRK-000025', 150, 4, 11.20, 4, 'Kitap', '2023-05-22 09:00:00', '2023-05-26 14:00:00'),
('TRK-000026', 10, 80, 2.50, 1, 'Elektronik Cihaz', '2023-06-03 10:00:00', '2023-06-06 16:00:00'),
('TRK-000027', 120, 30, 20.00, 7, 'Ev Eşyası', '2023-07-11 12:00:00', '2023-07-18 09:00:00'),
('TRK-000028', 5, 115, 6.75, 3, 'Kıyafet', '2023-08-25 15:00:00', '2023-08-28 10:00:00'),
('TRK-000029', 140, 153, 30.00, 12, 'Belgeler', '2023-09-02 11:00:00', '2023-09-05 15:00:00'),
('TRK-000030', 95, 15, 16.50, 6, 'Kitap', '2023-10-10 13:00:00', '2023-10-17 14:00:00'),
('TRK-000031', 20, 120, 5.50, 2, 'Elektronik Cihaz', '2023-11-18 10:00:00', '2023-11-21 16:00:00'),
('TRK-000032', 80, 40, 38.00, 16, 'Ev Eşyası', '2023-12-01 14:00:00', '2023-12-08 17:00:00'),
('TRK-000033', 100, 60, 2.10, 1, 'Kıyafet', '2024-01-05 10:00:00', '2024-01-08 11:00:00'),
('TRK-000034', 153, 70, 42.00, 17, 'Belgeler', '2024-02-28 15:00:00', '2024-03-05 10:00:00'),
('TRK-000035', 4, 130, 9.80, 3, 'Kitap', '2024-04-10 16:00:00', '2024-04-15 12:00:00'),
('TRK-000036', 15, 90, 25.00, 10, 'Elektronik Cihaz', '2024-05-15 11:00:00', '2024-05-22 15:00:00'),
('TRK-000037', 125, 45, 7.20, 3, 'Ev Eşyası', '2024-06-07 13:00:00', '2024-06-14 10:00:00'),
('TRK-000038', 5, 153, 1.00, 1, 'Kıyafet', '2024-07-20 14:30:00', '2024-07-22 11:00:00'),
('TRK-000039', 111, 4, 18.75, 6, 'Belgeler', '2024-08-05 09:00:00', '2024-08-10 16:00:00'),
('TRK-000040', 88, 140, 3.50, 2, 'Kitap', '2024-09-12 17:00:00', '2024-09-15 13:00:00'),
('TRK-000041', 132, 10, 17.00, 6, 'Elektronik Cihaz', '2023-01-01 10:00:00', '2023-01-05 14:00:00'),
('TRK-000042', 65, 150, 4.25, 2, 'Kıyafet', '2023-02-15 11:00:00', '2023-02-18 10:00:00'),
('TRK-000043', 153, 85, 30.00, 15, 'Ev Eşyası', '2023-03-09 12:00:00', '2023-03-16 17:00:00'),
('TRK-000044', 4, 110, 8.50, 3, 'Belgeler', '2023-04-20 16:00:00', '2023-04-22 12:00:00'),
('TRK-000045', 105, 55, 12.00, 4, 'Kitap', '2023-05-25 09:00:00', '2023-05-30 14:00:00'),
('TRK-000046', 22, 100, 1.80, 1, 'Elektronik Cihaz', '2023-06-05 10:00:00', '2023-06-08 16:00:00'),
('TRK-000047', 144, 30, 25.00, 10, 'Ev Eşyası', '2023-07-12 12:00:00', '2023-07-19 09:00:00'),
('TRK-000048', 50, 130, 6.00, 2, 'Kıyafet', '2023-08-20 15:00:00', '2023-08-23 10:00:00'),
('TRK-000049', 151, 15, 35.00, 14, 'Belgeler', '2023-09-03 11:00:00', '2023-09-08 15:00:00'),
('TRK-000050', 95, 115, 10.00, 3, 'Kitap', '2023-10-15 13:00:00', '2023-10-22 14:00:00'),
('TRK-000051', 120, 40, 5.00, 2, 'Elektronik Cihaz', '2023-11-20 10:00:00', '2023-11-23 16:00:00'),
('TRK-000052', 80, 100, 40.00, 18, 'Ev Eşyası', '2023-12-02 14:00:00', '2023-12-09 17:00:00'),
('TRK-000053', 105, 60, 2.50, 1, 'Kıyafet', '2024-01-08 10:00:00', '2024-01-11 11:00:00'),
('TRK-000054', 153, 70, 48.00, 20, 'Belgeler', '2024-02-20 15:00:00', '2024-02-27 10:00:00'),
('TRK-000055', 4, 130, 11.50, 4, 'Kitap', '2024-04-12 16:00:00', '2024-04-17 12:00:00'),
('TRK-000056', 15, 90, 27.00, 11, 'Elektronik Cihaz', '2024-05-18 11:00:00', '2024-05-25 15:00:00'),
('TRK-000057', 125, 45, 8.00, 3, 'Ev Eşyası', '2024-06-10 13:00:00', '2024-06-17 10:00:00'),
('TRK-000058', 5, 153, 1.20, 1, 'Kıyafet', '2024-07-25 14:30:00', '2024-07-27 11:00:00'),
('TRK-000059', 111, 4, 19.50, 7, 'Belgeler', '2024-08-08 09:00:00', '2024-08-13 16:00:00'),
('TRK-000060', 88, 140, 4.00, 2, 'Kitap', '2024-09-15 17:00:00', '2024-09-18 13:00:00'),
('TRK-000061', 132, 10, 18.00, 6, 'Elektronik Cihaz', '2023-01-05 10:00:00', '2023-01-10 14:00:00'),
('TRK-000062', 65, 150, 5.00, 2, 'Kıyafet', '2023-02-18 11:00:00', '2023-02-21 10:00:00'),
('TRK-000063', 153, 85, 32.00, 16, 'Ev Eşyası', '2023-03-12 12:00:00', '2023-03-19 17:00:00'),
('TRK-000064', 4, 110, 9.00, 3, 'Belgeler', '2023-04-22 16:00:00', '2023-04-24 12:00:00'),
('TRK-000065', 105, 55, 13.00, 4, 'Kitap', '2023-05-28 09:00:00', '2023-06-02 14:00:00'),
('TRK-000066', 22, 100, 2.00, 1, 'Elektronik Cihaz', '2023-06-08 10:00:00', '2023-06-11 16:00:00'),
('TRK-000067', 144, 30, 28.00, 12, 'Ev Eşyası', '2023-07-15 12:00:00', '2023-07-22 09:00:00'),
('TRK-000068', 50, 130, 7.00, 2, 'Kıyafet', '2023-08-23 15:00:00', '2023-08-26 10:00:00'),
('TRK-000069', 151, 15, 38.00, 15, 'Belgeler', '2023-09-06 11:00:00', '2023-09-11 15:00:00'),
('TRK-000070', 95, 115, 11.00, 3, 'Kitap', '2023-10-18 13:00:00', '2023-10-25 14:00:00'),
('TRK-000071', 120, 40, 6.00, 2, 'Elektronik Cihaz', '2023-11-23 10:00:00', '2023-11-26 16:00:00'),
('TRK-000072', 80, 100, 42.00, 19, 'Ev Eşyası', '2023-12-05 14:00:00', '2023-12-12 17:00:00'),
('TRK-000073', 105, 60, 3.00, 1, 'Kıyafet', '2024-01-11 10:00:00', '2024-01-14 11:00:00'),
('TRK-000074', 153, 70, 50.00, 20, 'Belgeler', '2024-02-23 15:00:00', '2024-03-01 10:00:00'),
('TRK-000075', 4, 130, 12.00, 4, 'Kitap', '2024-04-15 16:00:00', '2024-04-20 12:00:00'),
('TRK-000076', 15, 90, 29.00, 12, 'Elektronik Cihaz', '2024-05-21 11:00:00', '2024-05-28 15:00:00'),
('TRK-000077', 125, 45, 9.00, 3, 'Ev Eşyası', '2024-06-13 13:00:00', '2024-06-20 10:00:00'),
('TRK-000078', 5, 153, 1.50, 1, 'Kıyafet', '2024-07-28 14:30:00', '2024-07-30 11:00:00'),
('TRK-000079', 111, 4, 20.00, 8, 'Belgeler', '2024-08-11 09:00:00', '2024-08-16 16:00:00'),
('TRK-000080', 88, 140, 4.50, 2, 'Kitap', '2024-09-18 17:00:00', '2024-09-21 13:00:00'),
('TRK-000081', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000082', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000083', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000084', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000085', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000086', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000087', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000088', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000089', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000090', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000091', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000092', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000093', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000094', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000095', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000096', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000097', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000098', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000099', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000100', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000101', 56, 78, 15.25, 5, 'Elektronik Cihaz', '2023-01-10 09:00:00', '2023-01-16 14:00:00'),
('TRK-000102', 10, 110, 2.50, 1, 'Kıyafet', '2023-02-14 14:00:00', '2023-02-17 10:30:00'),
('TRK-000103', 130, 20, 25.75, 11, 'Ev Eşyası', '2023-03-25 11:30:00', '2023-04-01 16:00:00'),
('TRK-000104', 4, 99, 8.90, 3, 'Belgeler', '2023-04-05 16:00:00', '2023-04-08 11:00:00'),
('TRK-000105', 10, 145, 18.00, 6, 'Kitap', '2023-05-18 10:00:00', '2023-05-25 15:00:00'),
('TRK-000106', 153, 50, 4.00, 2, 'Elektronik Cihaz', '2023-06-22 13:00:00', '2023-06-25 10:00:00'),
('TRK-000107', 80, 100, 33.50, 14, 'Ev Eşyası', '2023-07-02 15:00:00', '2023-07-09 17:30:00'),
('TRK-000108', 4, 75, 1.50, 1, 'Kıyafet', '2023-08-11 10:00:00', '2023-08-13 12:00:00'),
('TRK-000109', 115, 153, 20.00, 8, 'Belgeler', '2023-09-07 14:00:00', '2023-09-12 11:00:00'),
('TRK-000110', 90, 25, 6.75, 3, 'Kitap', '2023-10-04 16:00:00', '2023-10-09 15:00:00'),
('TRK-000111', 140, 120, 10.00, 4, 'Elektronik Cihaz', '2023-11-20 10:00:00', '2023-11-25 14:00:00'),
('TRK-000112', 4, 153, 28.50, 12, 'Ev Eşyası', '2023-12-08 11:00:00', '2023-12-15 16:00:00'),
('TRK-000113', 153, 4, 2.80, 1, 'Kıyafet', '2024-01-12 13:00:00', '2024-01-15 10:00:00'),
('TRK-000114', 100, 50, 45.00, 18, 'Belgeler', '2024-02-05 15:00:00', '2024-02-12 17:00:00'),
('TRK-000115', 77, 130, 9.20, 3, 'Kitap', '2024-03-10 09:30:00', '2024-03-15 14:00:00'),
('TRK-000116', 5, 88, 17.50, 7, 'Elektronik Cihaz', '2024-04-20 11:00:00', '2024-04-27 15:00:00'),
('TRK-000117', 153, 111, 6.00, 2, 'Ev Eşyası', '2024-05-15 14:00:00', '2024-05-20 10:00:00'),
('TRK-000118', 4, 95, 3.25, 1, 'Kıyafet', '2024-06-01 10:30:00', '2024-06-04 12:00:00'),
('TRK-000119', 121, 65, 30.00, 13, 'Belgeler', '2024-07-09 16:00:00', '2024-07-16 11:00:00'),
('TRK-000120', 33, 140, 11.00, 4, 'Kitap', '2024-08-25 13:00:00', '2024-09-01 10:00:00'),
('TRK-000121', 102, 22, 25.00, 10, 'Elektronik Cihaz', '2023-01-20 11:00:00', '2023-01-27 15:00:00'),
('TRK-000122', 150, 10, 1.75, 1, 'Kıyafet', '2023-02-08 14:00:00', '2023-02-10 10:00:00'),
('TRK-000123', 50, 153, 40.00, 16, 'Ev Eşyası', '2023-03-11 10:00:00', '2023-03-18 16:00:00'),
('TRK-000124', 4, 151, 6.50, 2, 'Belgeler', '2023-04-18 15:00:00', '2023-04-20 11:00:00'),
('TRK-000125', 105, 95, 15.00, 5, 'Kitap', '2023-05-10 09:00:00', '2023-05-17 14:00:00'),
('TRK-000126', 22, 100, 3.00, 1, 'Elektronik Cihaz', '2023-06-01 10:00:00', '2023-06-04 16:00:00'),
('TRK-000127', 144, 30, 28.00, 12, 'Ev Eşyası', '2023-07-10 12:00:00', '2023-07-17 09:00:00'),
('TRK-000128', 50, 130, 7.00, 2, 'Kıyafet', '2023-08-22 15:00:00', '2023-08-25 10:00:00'),
('TRK-000129', 151, 15, 38.00, 15, 'Belgeler', '2023-09-05 11:00:00', '2023-09-10 15:00:00'),
('TRK-000130', 95, 115, 11.00, 3, 'Kitap', '2023-10-17 13:00:00', '2023-10-24 14:00:00'),
('TRK-000131', 120, 40, 6.00, 2, 'Elektronik Cihaz', '2023-11-22 10:00:00', '2023-11-25 16:00:00'),
('TRK-000132', 80, 100, 42.00, 19, 'Ev Eşyası', '2023-12-04 14:00:00', '2023-12-11 17:00:00'),
('TRK-000133', 105, 60, 3.00, 1, 'Kıyafet', '2024-01-10 10:00:00', '2024-01-13 11:00:00'),
('TRK-000134', 153, 70, 50.00, 20, 'Belgeler', '2024-02-22 15:00:00', '2024-02-29 10:00:00'),
('TRK-000135', 4, 130, 12.00, 4, 'Kitap', '2024-04-14 16:00:00', '2024-04-19 12:00:00'),
('TRK-000136', 15, 90, 29.00, 12, 'Elektronik Cihaz', '2024-05-20 11:00:00', '2024-05-27 15:00:00'),
('TRK-000137', 125, 45, 9.00, 3, 'Ev Eşyası', '2024-06-12 13:00:00', '2024-06-19 10:00:00'),
('TRK-000138', 5, 153, 1.50, 1, 'Kıyafet', '2024-07-27 14:30:00', '2024-07-29 11:00:00'),
('TRK-000139', 111, 4, 20.00, 8, 'Belgeler', '2024-08-10 09:00:00', '2024-08-15 16:00:00'),
('TRK-000140', 88, 140, 4.50, 2, 'Kitap', '2024-09-17 17:00:00', '2024-09-20 13:00:00'),
('TRK-000141', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-07 10:00:00', '2023-01-12 14:00:00'),
('TRK-000142', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-20 11:00:00', '2023-02-23 10:00:00'),
('TRK-000143', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-14 12:00:00', '2023-03-21 17:00:00'),
('TRK-000144', 4, 110, 9.50, 3, 'Belgeler', '2023-04-24 16:00:00', '2023-04-26 12:00:00'),
('TRK-000145', 105, 55, 14.00, 5, 'Kitap', '2023-05-30 09:00:00', '2023-06-04 14:00:00'),
('TRK-000146', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-10 10:00:00', '2023-06-13 16:00:00'),
('TRK-000147', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-17 12:00:00', '2023-07-24 09:00:00'),
('TRK-000148', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-25 15:00:00', '2023-08-28 10:00:00'),
('TRK-000149', 151, 15, 40.00, 16, 'Belgeler', '2023-09-08 11:00:00', '2023-09-13 15:00:00'),
('TRK-000150', 95, 115, 12.00, 4, 'Kitap', '2023-10-20 13:00:00', '2023-10-27 14:00:00'),
('TRK-000151', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-25 10:00:00', '2023-11-28 16:00:00'),
('TRK-000152', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-07 14:00:00', '2023-12-14 17:00:00'),
('TRK-000153', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-13 10:00:00', '2024-01-16 11:00:00'),
('TRK-000154', 153, 70, 52.00, 21, 'Belgeler', '2024-02-25 15:00:00', '2024-03-02 10:00:00'),
('TRK-000155', 4, 130, 12.50, 5, 'Kitap', '2024-04-17 16:00:00', '2024-04-22 12:00:00'),
('TRK-000156', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-23 11:00:00', '2024-05-30 15:00:00'),
('TRK-000157', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-15 13:00:00', '2024-06-22 10:00:00'),
('TRK-000158', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-30 14:30:00', '2024-08-01 11:00:00'),
('TRK-000159', 111, 4, 21.00, 9, 'Belgeler', '2024-08-13 09:00:00', '2024-08-18 16:00:00'),
('TRK-000160', 88, 140, 5.00, 2, 'Kitap', '2024-09-20 17:00:00', '2024-09-23 13:00:00'),
('TRK-000161', 77, 12, 10.50, 3, 'Elektronik Cihaz', '2023-01-09 10:00:00', '2023-01-14 14:00:00'),
('TRK-000162', 110, 25, 3.20, 1, 'Kıyafet', '2023-02-22 11:00:00', '2023-02-25 10:00:00'),
('TRK-000163', 130, 153, 40.00, 15, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000164', 4, 100, 8.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000165', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000166', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000167', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000168', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000169', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000170', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000171', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000172', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000173', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000174', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000175', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000176', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000177', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000178', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000179', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000180', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000181', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000182', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000183', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000184', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000185', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000186', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000187', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000188', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000189', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000190', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000191', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000192', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000193', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000194', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000195', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000196', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000197', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000198', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000199', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000200', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000201', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000202', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000203', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000204', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000205', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000206', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000207', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000208', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000209', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000210', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000211', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000212', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000213', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000214', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000215', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000216', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000217', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000218', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000219', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000220', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000221', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000222', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000223', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000224', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000225', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000226', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000227', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000228', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000229', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000230', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000231', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000232', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000233', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000234', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000235', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000236', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000237', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000238', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000239', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000240', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000241', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000242', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000243', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000244', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000245', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000246', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000247', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000248', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000249', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000250', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000251', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000252', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000253', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000254', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000255', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000256', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000257', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000258', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000259', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000260', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000261', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000262', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000263', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000264', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000265', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000266', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000267', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000268', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000269', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000270', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000271', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000272', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000273', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000274', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000275', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000276', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000277', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000278', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000279', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000280', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000281', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000282', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000283', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000284', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000285', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000286', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000287', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000288', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000289', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000290', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000291', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000292', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000293', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000294', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000295', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000296', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000297', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000298', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000299', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000300', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000301', 56, 78, 15.25, 5, 'Elektronik Cihaz', '2023-01-10 09:00:00', '2023-01-16 14:00:00'),
('TRK-000302', 10, 110, 2.50, 1, 'Kıyafet', '2023-02-14 14:00:00', '2023-02-17 10:30:00'),
('TRK-000303', 130, 20, 25.75, 11, 'Ev Eşyası', '2023-03-25 11:30:00', '2023-04-01 16:00:00'),
('TRK-000304', 4, 99, 8.90, 3, 'Belgeler', '2023-04-05 16:00:00', '2023-04-08 11:00:00'),
('TRK-000305', 10, 145, 18.00, 6, 'Kitap', '2023-05-18 10:00:00', '2023-05-25 15:00:00'),
('TRK-000306', 153, 50, 4.00, 2, 'Elektronik Cihaz', '2023-06-22 13:00:00', '2023-06-25 10:00:00'),
('TRK-000307', 80, 100, 33.50, 14, 'Ev Eşyası', '2023-07-02 15:00:00', '2023-07-09 17:30:00'),
('TRK-000308', 4, 75, 1.50, 1, 'Kıyafet', '2023-08-11 10:00:00', '2023-08-13 12:00:00'),
('TRK-000309', 115, 153, 20.00, 8, 'Belgeler', '2023-09-07 14:00:00', '2023-09-12 11:00:00'),
('TRK-000310', 90, 25, 6.75, 3, 'Kitap', '2023-10-04 16:00:00', '2023-10-09 15:00:00'),
('TRK-000311', 140, 120, 10.00, 4, 'Elektronik Cihaz', '2023-11-20 10:00:00', '2023-11-25 14:00:00'),
('TRK-000312', 4, 153, 28.50, 12, 'Ev Eşyası', '2023-12-08 11:00:00', '2023-12-15 16:00:00'),
('TRK-000313', 153, 4, 2.80, 1, 'Kıyafet', '2024-01-12 13:00:00', '2024-01-15 10:00:00'),
('TRK-000314', 100, 50, 45.00, 18, 'Belgeler', '2024-02-05 15:00:00', '2024-02-12 17:00:00'),
('TRK-000315', 77, 130, 9.20, 3, 'Kitap', '2024-03-10 09:30:00', '2024-03-15 14:00:00'),
('TRK-000316', 5, 88, 17.50, 7, 'Elektronik Cihaz', '2024-04-20 11:00:00', '2024-04-27 15:00:00'),
('TRK-000317', 153, 111, 6.00, 2, 'Ev Eşyası', '2024-05-15 14:00:00', '2024-05-20 10:00:00'),
('TRK-000318', 4, 95, 3.25, 1, 'Kıyafet', '2024-06-01 10:30:00', '2024-06-04 12:00:00'),
('TRK-000319', 121, 65, 30.00, 13, 'Belgeler', '2024-07-09 16:00:00', '2024-07-16 11:00:00'),
('TRK-000320', 33, 140, 11.00, 4, 'Kitap', '2024-08-25 13:00:00', '2024-09-01 10:00:00'),
('TRK-000321', 102, 22, 25.00, 10, 'Elektronik Cihaz', '2023-01-20 11:00:00', '2023-01-27 15:00:00'),
('TRK-000322', 150, 10, 1.75, 1, 'Kıyafet', '2023-02-08 14:00:00', '2023-02-10 10:00:00'),
('TRK-000323', 50, 153, 40.00, 16, 'Ev Eşyası', '2023-03-11 10:00:00', '2023-03-18 16:00:00'),
('TRK-000324', 4, 151, 6.50, 2, 'Belgeler', '2023-04-18 15:00:00', '2023-04-20 11:00:00'),
('TRK-000325', 105, 95, 15.00, 5, 'Kitap', '2023-05-10 09:00:00', '2023-05-17 14:00:00'),
('TRK-000326', 22, 100, 3.00, 1, 'Elektronik Cihaz', '2023-06-01 10:00:00', '2023-06-04 16:00:00'),
('TRK-000327', 144, 30, 28.00, 12, 'Ev Eşyası', '2023-07-10 12:00:00', '2023-07-17 09:00:00'),
('TRK-000328', 50, 130, 7.00, 2, 'Kıyafet', '2023-08-22 15:00:00', '2023-08-25 10:00:00'),
('TRK-000329', 151, 15, 38.00, 15, 'Belgeler', '2023-09-05 11:00:00', '2023-09-10 15:00:00'),
('TRK-000330', 95, 115, 11.00, 3, 'Kitap', '2023-10-17 13:00:00', '2023-10-24 14:00:00'),
('TRK-000331', 120, 40, 6.00, 2, 'Elektronik Cihaz', '2023-11-22 10:00:00', '2023-11-25 16:00:00'),
('TRK-000332', 80, 100, 42.00, 19, 'Ev Eşyası', '2023-12-04 14:00:00', '2023-12-11 17:00:00'),
('TRK-000333', 105, 60, 3.00, 1, 'Kıyafet', '2024-01-10 10:00:00', '2024-01-13 11:00:00'),
('TRK-000334', 153, 70, 50.00, 20, 'Belgeler', '2024-02-22 15:00:00', '2024-02-29 10:00:00'),
('TRK-000335', 4, 130, 12.00, 4, 'Kitap', '2024-04-14 16:00:00', '2024-04-19 12:00:00'),
('TRK-000336', 15, 90, 29.00, 12, 'Elektronik Cihaz', '2024-05-20 11:00:00', '2024-05-27 15:00:00'),
('TRK-000337', 125, 45, 9.00, 3, 'Ev Eşyası', '2024-06-12 13:00:00', '2024-06-19 10:00:00'),
('TRK-000338', 5, 153, 1.50, 1, 'Kıyafet', '2024-07-27 14:30:00', '2024-07-29 11:00:00'),
('TRK-000339', 111, 4, 20.00, 8, 'Belgeler', '2024-08-10 09:00:00', '2024-08-15 16:00:00'),
('TRK-000340', 88, 140, 4.50, 2, 'Kitap', '2024-09-17 17:00:00', '2024-09-20 13:00:00'),
('TRK-000341', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-07 10:00:00', '2023-01-12 14:00:00'),
('TRK-000342', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-20 11:00:00', '2023-02-23 10:00:00'),
('TRK-000343', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-14 12:00:00', '2023-03-21 17:00:00'),
('TRK-000344', 4, 110, 9.50, 3, 'Belgeler', '2023-04-24 16:00:00', '2023-04-26 12:00:00'),
('TRK-000345', 105, 55, 14.00, 5, 'Kitap', '2023-05-30 09:00:00', '2023-06-04 14:00:00'),
('TRK-000346', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-10 10:00:00', '2023-06-13 16:00:00'),
('TRK-000347', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-17 12:00:00', '2023-07-24 09:00:00'),
('TRK-000348', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-25 15:00:00', '2023-08-28 10:00:00'),
('TRK-000349', 151, 15, 40.00, 16, 'Belgeler', '2023-09-08 11:00:00', '2023-09-13 15:00:00'),
('TRK-000350', 95, 115, 12.00, 4, 'Kitap', '2023-10-20 13:00:00', '2023-10-27 14:00:00'),
('TRK-000351', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-25 10:00:00', '2023-11-28 16:00:00'),
('TRK-000352', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-07 14:00:00', '2023-12-14 17:00:00'),
('TRK-000353', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-13 10:00:00', '2024-01-16 11:00:00'),
('TRK-000354', 153, 70, 52.00, 21, 'Belgeler', '2024-02-25 15:00:00', '2024-03-02 10:00:00'),
('TRK-000355', 4, 130, 12.50, 5, 'Kitap', '2024-04-17 16:00:00', '2024-04-22 12:00:00'),
('TRK-000356', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-23 11:00:00', '2024-05-30 15:00:00'),
('TRK-000357', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-15 13:00:00', '2024-06-22 10:00:00'),
('TRK-000358', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-30 14:30:00', '2024-08-01 11:00:00'),
('TRK-000359', 111, 4, 21.00, 9, 'Belgeler', '2024-08-13 09:00:00', '2024-08-18 16:00:00'),
('TRK-000360', 88, 140, 5.00, 2, 'Kitap', '2024-09-20 17:00:00', '2024-09-23 13:00:00'),
('TRK-000361', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000362', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000363', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000364', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000365', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000366', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000367', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000368', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000369', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000370', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000371', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000372', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000373', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000374', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000375', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000376', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000377', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000378', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000379', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000380', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000381', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000382', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000383', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000384', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000385', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000386', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000387', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000388', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000389', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000390', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000391', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000392', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000393', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000394', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000395', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000396', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000397', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000398', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000399', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000400', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000401', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000402', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000403', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000404', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000405', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000406', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000407', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000408', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000409', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000410', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000411', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000412', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000413', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000414', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000415', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000416', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000417', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000418', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000419', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000420', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000421', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000422', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000423', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000424', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000425', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000426', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000427', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000428', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000429', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000430', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000431', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000432', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000433', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000434', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000435', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000436', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000437', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000438', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000439', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000440', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000441', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000442', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000443', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000444', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000445', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000446', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000447', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000448', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000449', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000450', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000451', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000452', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000453', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000454', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000455', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000456', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000457', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000458', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000459', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000460', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000461', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000462', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000463', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000464', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000465', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000466', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000467', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000468', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000469', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000470', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000471', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000472', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000473', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000474', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000475', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000476', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000477', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000478', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000479', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000480', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00'),
('TRK-000481', 132, 10, 19.00, 7, 'Elektronik Cihaz', '2023-01-08 10:00:00', '2023-01-13 14:00:00'),
('TRK-000482', 65, 150, 6.00, 2, 'Kıyafet', '2023-02-21 11:00:00', '2023-02-24 10:00:00'),
('TRK-000483', 153, 85, 35.00, 17, 'Ev Eşyası', '2023-03-15 12:00:00', '2023-03-22 17:00:00'),
('TRK-000484', 4, 110, 9.50, 3, 'Belgeler', '2023-04-25 16:00:00', '2023-04-27 12:00:00'),
('TRK-000485', 105, 55, 14.00, 5, 'Kitap', '2023-05-31 09:00:00', '2023-06-05 14:00:00'),
('TRK-000486', 22, 100, 2.50, 1, 'Elektronik Cihaz', '2023-06-11 10:00:00', '2023-06-14 16:00:00'),
('TRK-000487', 144, 30, 30.00, 13, 'Ev Eşyası', '2023-07-18 12:00:00', '2023-07-25 09:00:00'),
('TRK-000488', 50, 130, 8.00, 3, 'Kıyafet', '2023-08-26 15:00:00', '2023-08-29 10:00:00'),
('TRK-000489', 151, 15, 40.00, 16, 'Belgeler', '2023-09-09 11:00:00', '2023-09-14 15:00:00'),
('TRK-000490', 95, 115, 12.00, 4, 'Kitap', '2023-10-21 13:00:00', '2023-10-28 14:00:00'),
('TRK-000491', 120, 40, 7.00, 2, 'Elektronik Cihaz', '2023-11-26 10:00:00', '2023-11-29 16:00:00'),
('TRK-000492', 80, 100, 45.00, 20, 'Ev Eşyası', '2023-12-08 14:00:00', '2023-12-15 17:00:00'),
('TRK-000493', 105, 60, 3.50, 1, 'Kıyafet', '2024-01-14 10:00:00', '2024-01-17 11:00:00'),
('TRK-000494', 153, 70, 52.00, 21, 'Belgeler', '2024-02-26 15:00:00', '2024-03-03 10:00:00'),
('TRK-000495', 4, 130, 12.50, 5, 'Kitap', '2024-04-18 16:00:00', '2024-04-23 12:00:00'),
('TRK-000496', 15, 90, 31.00, 13, 'Elektronik Cihaz', '2024-05-24 11:00:00', '2024-05-31 15:00:00'),
('TRK-000497', 125, 45, 10.00, 4, 'Ev Eşyası', '2024-06-16 13:00:00', '2024-06-23 10:00:00'),
('TRK-000498', 5, 153, 1.75, 1, 'Kıyafet', '2024-07-31 14:30:00', '2024-08-02 11:00:00'),
('TRK-000499', 111, 4, 21.00, 9, 'Belgeler', '2024-08-14 09:00:00', '2024-08-19 16:00:00'),
('TRK-000500', 88, 140, 5.00, 2, 'Kitap', '2024-09-21 17:00:00', '2024-09-24 13:00:00');


-- 12. CargoStatuses

INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (122, 1, 15, '2025-02-01 19:18:50');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (425, 2, 34, '2023-12-17 02:04:28');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (115, 2, 42, '2023-06-05 07:10:29');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (496, 7, 37, '2024-03-31 10:07:18');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (312, 6, 30, '2023-06-14 06:32:52');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (359, 5, 6, '2023-05-23 02:18:21');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (371, 6, 31, '2024-05-17 05:04:44');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (293, 2, 21, '2023-07-15 19:00:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (191, 1, 27, '2023-03-05 06:48:27');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (200, 4, 13, '2024-09-09 07:33:21');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (292, 4, 25, '2023-09-21 13:53:46');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (387, 2, 28, '2023-12-02 12:39:01');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (3, 1, 36, '2024-06-12 21:24:44');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (466, 2, 14, '2023-11-09 05:40:54');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (306, 5, 43, '2024-01-06 01:37:22');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (448, 6, 11, '2023-02-21 09:11:45');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (133, 9, 21, '2025-04-09 03:03:11');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (72, 7, 43, '2023-02-02 22:50:46');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (481, 3, 23, '2024-05-27 17:33:23');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (458, 6, 41, '2024-05-20 01:19:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (73, 3, 34, '2025-05-19 03:35:55');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (380, 8, 24, '2024-07-18 23:48:41');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (472, 2, 14, '2024-06-29 04:42:23');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (408, 3, 39, '2025-02-08 11:49:56');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (474, 9, 2, '2024-02-19 22:30:59');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (441, 5, 2, '2023-01-07 10:48:34');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (107, 3, 34, '2023-12-20 12:30:52');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (275, 7, 28, '2024-01-07 10:17:55');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (66, 8, 39, '2023-12-30 14:16:32');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (125, 8, 12, '2024-05-21 12:26:29');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (479, 9, 19, '2024-03-13 12:25:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (389, 9, 18, '2023-12-06 04:55:34');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (334, 1, 24, '2024-02-08 14:15:47');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (262, 1, 9, '2025-06-26 15:40:04');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (228, 7, 14, '2023-02-06 20:38:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (11, 1, 15, '2025-03-31 22:06:05');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (311, 3, 12, '2025-02-20 10:55:54');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (384, 9, 5, '2024-10-28 04:11:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (227, 2, 28, '2025-06-13 02:54:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (470, 1, 42, '2024-05-22 04:41:45');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (375, 8, 33, '2024-12-10 22:57:18');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (153, 7, 38, '2023-02-12 08:45:40');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (491, 3, 31, '2023-09-08 18:58:02');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (203, 8, 25, '2025-04-20 22:30:46');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (267, 3, 21, '2024-05-19 15:30:37');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (96, 4, 29, '2025-02-01 12:06:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (269, 6, 3, '2023-02-05 17:06:11');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (309, 2, 47, '2023-03-12 00:57:51');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (291, 4, 1, '2024-10-16 22:08:23');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (125, 6, 39, '2023-08-07 08:27:52');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (251, 6, 47, '2024-10-24 15:33:14');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (148, 5, 3, '2025-05-10 02:44:01');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (126, 1, 40, '2024-02-13 20:30:47');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (143, 9, 44, '2024-03-04 08:21:22');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (211, 9, 19, '2023-07-01 23:22:09');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (27, 7, 45, '2023-09-01 16:28:16');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (494, 6, 37, '2025-01-28 20:35:21');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (10, 1, 42, '2024-05-24 20:06:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (387, 4, 46, '2024-12-12 02:02:49');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (273, 7, 45, '2024-04-14 16:18:34');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (66, 8, 39, '2023-11-22 02:22:04');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (330, 3, 15, '2025-01-01 02:38:08');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (98, 7, 35, '2023-09-03 04:53:23');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (179, 4, 21, '2023-12-05 11:36:24');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (242, 1, 29, '2023-12-28 16:06:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (275, 4, 15, '2023-11-03 21:22:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (287, 9, 30, '2023-12-07 12:08:09');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (302, 1, 42, '2023-09-29 11:37:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (369, 4, 44, '2025-02-02 17:41:34');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (352, 7, 8, '2025-01-20 21:17:38');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (187, 3, 24, '2024-02-27 17:47:09');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (186, 9, 32, '2024-01-19 07:32:46');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (238, 9, 40, '2024-03-19 02:32:33');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (337, 8, 32, '2024-01-05 09:46:11');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (1, 2, 12, '2024-12-22 05:44:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (393, 9, 33, '2025-01-13 15:45:26');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (58, 3, 5, '2025-03-30 14:12:28');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (140, 7, 17, '2023-11-08 05:32:27');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (371, 9, 25, '2024-07-13 20:12:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (491, 9, 41, '2023-08-12 18:30:50');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (346, 2, 44, '2024-11-21 21:41:33');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (377, 6, 35, '2023-01-03 16:17:43');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (166, 2, 4, '2024-03-05 17:21:44');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (348, 9, 47, '2024-08-20 11:42:41');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (296, 9, 1, '2025-04-30 23:11:37');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (213, 4, 11, '2025-07-03 10:46:46');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (353, 2, 45, '2025-04-12 22:24:49');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (158, 9, 27, '2023-04-07 17:21:48');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (57, 6, 12, '2025-05-19 04:40:08');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (446, 6, 32, '2024-06-26 20:26:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (143, 2, 32, '2023-05-03 02:11:38');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (33, 1, 41, '2023-06-06 11:15:21');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (14, 2, 28, '2023-08-09 07:30:43');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (189, 8, 9, '2024-04-06 18:51:18');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (103, 3, 9, '2023-09-27 23:00:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (370, 9, 37, '2024-12-31 02:59:39');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (19, 7, 11, '2025-02-04 17:48:58');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (453, 7, 11, '2024-05-28 22:56:34');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (271, 5, 37, '2024-07-08 22:17:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (317, 2, 13, '2024-09-25 03:03:12');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (266, 3, 26, '2024-09-22 02:18:27');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (72, 6, 38, '2024-04-16 08:24:45');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (111, 2, 8, '2023-07-18 20:50:02');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (453, 9, 2, '2024-10-23 10:10:28');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (88, 3, 25, '2023-12-26 11:25:20');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (139, 9, 18, '2024-10-21 09:17:30');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (365, 3, 18, '2024-12-26 11:21:32');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (125, 2, 44, '2025-04-28 10:16:11');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (22, 1, 28, '2024-11-07 19:47:06');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (54, 3, 33, '2025-03-16 19:11:21');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (238, 7, 33, '2024-07-11 20:24:26');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (1, 4, 28, '2024-04-12 10:46:20');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (177, 8, 41, '2024-07-21 04:50:48');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (144, 9, 14, '2023-03-12 20:21:31');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (114, 1, 42, '2023-04-01 19:14:00');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (394, 6, 7, '2024-11-30 16:03:00');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (455, 4, 32, '2023-05-10 05:57:31');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (98, 6, 6, '2025-07-20 10:10:37');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (332, 7, 25, '2024-06-17 06:36:34');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (237, 5, 21, '2024-03-11 00:42:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (177, 4, 27, '2023-09-19 05:39:53');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (322, 5, 8, '2024-03-05 01:26:37');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (500, 7, 23, '2025-05-02 16:04:29');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (95, 9, 24, '2024-01-12 06:31:37');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (187, 6, 24, '2023-05-04 13:48:06');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (148, 8, 12, '2025-02-02 03:39:36');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (49, 8, 10, '2024-01-06 11:03:54');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (199, 2, 36, '2025-07-30 20:42:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (273, 1, 36, '2024-01-08 03:48:02');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (316, 9, 24, '2024-11-25 03:31:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (194, 6, 12, '2023-03-11 04:52:27');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (226, 1, 15, '2024-12-08 22:13:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (245, 9, 1, '2024-01-20 19:18:14');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (394, 7, 43, '2025-06-09 22:39:53');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (287, 2, 43, '2025-07-29 01:24:57');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (182, 9, 39, '2024-01-13 11:30:30');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (173, 1, 44, '2024-09-12 09:12:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (480, 8, 7, '2023-01-31 01:17:37');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (62, 2, 29, '2023-04-07 01:51:54');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (285, 6, 18, '2023-08-19 09:42:38');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (53, 5, 8, '2025-07-20 06:47:58');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (338, 4, 38, '2024-05-03 11:57:12');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (473, 4, 27, '2024-04-19 18:54:41');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (20, 1, 44, '2023-02-28 22:30:59');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (97, 6, 13, '2025-07-10 07:37:11');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (478, 8, 27, '2023-03-22 07:02:47');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (58, 3, 12, '2023-01-09 11:22:02');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (108, 7, 1, '2024-11-21 20:12:37');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (356, 5, 7, '2024-12-01 12:23:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (67, 1, 36, '2025-06-18 09:52:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (143, 6, 12, '2024-11-02 05:03:31');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (125, 4, 19, '2023-02-12 13:55:07');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (84, 6, 24, '2025-01-01 10:05:29');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (49, 9, 45, '2024-07-28 02:37:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (42, 9, 11, '2025-06-22 04:47:55');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (490, 2, 37, '2023-02-20 08:22:16');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (74, 8, 31, '2025-03-05 12:29:01');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (320, 1, 43, '2025-05-10 17:25:47');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (108, 2, 42, '2025-03-20 00:16:04');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (111, 2, 4, '2024-05-14 15:14:04');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (476, 3, 28, '2023-05-19 19:36:22');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (365, 4, 20, '2025-07-27 08:45:53');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (426, 9, 10, '2023-01-09 21:25:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (306, 1, 17, '2023-05-08 08:47:30');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (387, 7, 20, '2023-06-15 15:24:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (484, 8, 25, '2023-07-30 16:42:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (488, 3, 46, '2023-11-30 18:21:57');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (317, 8, 9, '2024-12-24 03:44:41');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (454, 4, 38, '2023-04-24 01:56:51');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (7, 8, 4, '2023-03-24 22:38:36');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (288, 6, 24, '2024-05-16 10:37:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (179, 7, 44, '2024-01-24 21:06:50');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (379, 7, 19, '2023-08-16 16:52:24');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (313, 5, 22, '2024-02-09 09:34:33');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (157, 5, 24, '2025-01-08 08:41:11');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (47, 2, 34, '2023-11-05 12:53:58');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (84, 5, 25, '2023-06-02 05:50:05');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (105, 4, 12, '2024-10-09 17:08:46');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (230, 6, 12, '2024-10-26 22:54:52');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (398, 9, 38, '2023-07-04 15:38:54');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (355, 3, 47, '2024-05-29 20:29:55');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (15, 3, 32, '2024-10-02 01:50:58');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (90, 7, 20, '2024-04-18 06:41:36');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (319, 7, 4, '2024-01-23 18:00:53');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (253, 8, 23, '2024-10-22 06:22:30');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (295, 8, 3, '2025-06-20 17:24:39');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (444, 8, 29, '2025-07-01 01:12:36');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (236, 2, 36, '2024-02-03 23:32:32');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (190, 2, 24, '2023-02-02 21:58:53');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (351, 7, 35, '2025-06-16 18:05:33');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (154, 6, 17, '2023-05-11 04:51:11');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (281, 3, 21, '2024-08-26 09:38:00');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (369, 8, 32, '2025-07-15 19:56:22');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (419, 1, 39, '2024-11-05 05:42:04');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (357, 5, 20, '2023-03-10 12:46:23');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (59, 6, 14, '2023-09-27 06:27:26');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (2, 7, 19, '2024-02-13 18:40:04');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (372, 9, 22, '2024-11-30 22:54:53');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (235, 2, 19, '2023-03-09 17:57:16');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (261, 3, 29, '2023-01-24 02:46:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (441, 3, 40, '2023-03-23 09:57:27');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (180, 7, 47, '2024-06-11 04:53:44');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (209, 3, 36, '2024-10-18 20:39:17');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (170, 6, 36, '2023-02-26 10:01:02');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (43, 2, 26, '2023-10-21 10:25:39');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (151, 7, 12, '2025-01-30 18:22:05');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (111, 8, 32, '2025-03-03 21:45:43');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (48, 5, 44, '2023-03-09 07:33:38');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (6, 7, 11, '2023-01-22 07:18:21');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (220, 7, 44, '2024-10-11 03:10:45');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (95, 5, 43, '2023-05-13 14:55:05');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (489, 4, 42, '2023-10-19 08:55:26');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (191, 4, 2, '2023-09-30 02:34:40');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (413, 8, 40, '2023-12-12 23:14:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (343, 8, 21, '2024-02-14 06:08:08');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (54, 9, 16, '2024-04-29 01:13:11');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (485, 4, 36, '2023-05-05 14:11:18');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (333, 6, 28, '2023-01-24 11:31:06');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (308, 6, 15, '2024-04-01 03:32:32');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (485, 3, 44, '2025-02-28 15:02:57');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (307, 9, 14, '2025-04-08 05:51:16');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (286, 9, 18, '2024-06-30 13:22:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (138, 9, 16, '2024-06-11 03:57:10');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (240, 2, 10, '2023-02-04 01:46:02');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (95, 5, 25, '2024-09-26 20:26:00');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (149, 7, 13, '2023-08-09 21:34:08');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (231, 9, 9, '2023-03-04 21:32:29');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (434, 1, 46, '2023-08-11 09:38:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (206, 4, 27, '2024-01-22 02:53:22');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (119, 5, 19, '2024-06-03 03:43:01');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (16, 6, 12, '2025-02-05 07:49:57');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (259, 7, 31, '2024-02-17 18:54:26');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (167, 6, 9, '2023-02-14 13:45:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (290, 4, 45, '2024-12-29 19:57:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (173, 7, 41, '2023-01-17 17:55:07');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (9, 7, 38, '2025-05-25 05:59:20');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (197, 4, 12, '2024-02-08 01:53:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (28, 8, 18, '2023-10-26 13:22:21');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (435, 6, 15, '2023-05-05 18:07:41');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (160, 1, 22, '2024-05-22 14:01:26');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (380, 5, 33, '2023-06-05 01:00:49');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (355, 1, 45, '2023-08-08 02:16:29');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (415, 4, 2, '2023-01-02 23:04:05');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (249, 5, 35, '2023-09-25 21:24:34');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (427, 8, 47, '2024-05-29 13:57:01');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (108, 9, 44, '2025-03-30 04:00:41');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (480, 9, 7, '2025-05-20 04:16:48');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (492, 6, 21, '2024-07-04 20:43:27');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (143, 4, 15, '2023-08-12 00:57:24');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (5, 2, 27, '2023-12-01 13:57:14');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (142, 4, 27, '2023-01-17 12:38:20');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (466, 6, 33, '2023-02-01 10:20:40');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (247, 5, 18, '2024-03-25 23:26:59');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (140, 2, 16, '2025-03-18 18:44:20');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (7, 5, 4, '2025-01-06 10:01:30');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (236, 7, 32, '2025-06-12 06:37:44');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (423, 7, 46, '2023-05-08 19:16:31');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (381, 6, 6, '2025-02-14 19:48:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (244, 9, 30, '2023-02-06 19:59:20');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (441, 3, 12, '2023-03-16 03:21:48');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (158, 5, 2, '2025-04-30 03:51:12');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (427, 4, 7, '2023-10-21 07:01:30');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (82, 4, 41, '2025-03-31 19:48:44');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (311, 4, 29, '2024-04-22 12:35:44');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (273, 4, 35, '2025-01-27 10:41:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (174, 4, 18, '2023-12-16 10:40:22');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (60, 9, 17, '2024-07-28 14:13:53');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (499, 9, 21, '2024-09-02 09:55:21');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (177, 4, 22, '2023-02-26 05:48:50');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (156, 4, 38, '2023-09-10 13:15:33');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (209, 9, 45, '2024-08-19 02:52:26');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (474, 8, 24, '2025-06-12 00:10:45');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (429, 4, 39, '2023-07-29 10:27:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (392, 1, 13, '2024-06-09 12:16:44');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (476, 8, 24, '2025-06-22 13:06:45');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (195, 1, 22, '2023-02-07 13:50:24');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (109, 2, 32, '2025-07-29 01:21:08');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (370, 7, 40, '2024-05-07 18:16:08');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (142, 5, 16, '2023-12-14 19:36:41');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (459, 9, 19, '2024-09-03 20:17:50');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (257, 9, 20, '2023-01-06 15:04:11');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (445, 4, 7, '2023-08-23 23:52:00');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (354, 6, 10, '2024-04-07 01:13:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (168, 6, 23, '2025-06-05 14:48:43');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (350, 7, 13, '2025-04-17 09:56:07');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (348, 5, 33, '2024-10-08 14:09:29');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (117, 5, 38, '2023-04-01 09:33:43');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (336, 6, 3, '2023-03-25 09:12:30');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (442, 3, 38, '2023-02-15 02:37:07');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (75, 9, 29, '2023-07-02 14:49:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (128, 4, 9, '2024-01-05 14:43:33');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (266, 6, 9, '2024-03-01 07:50:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (120, 7, 38, '2025-05-23 06:57:41');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (282, 5, 20, '2025-02-24 00:08:49');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (110, 4, 43, '2024-01-27 17:53:59');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (322, 1, 17, '2024-01-11 22:14:27');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (166, 5, 36, '2023-01-21 09:00:38');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (307, 4, 46, '2024-01-20 02:34:48');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (131, 7, 18, '2024-04-29 13:30:32');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (290, 3, 6, '2024-04-07 13:48:22');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (319, 6, 10, '2023-02-11 22:27:12');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (412, 2, 7, '2024-09-11 14:04:23');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (235, 6, 21, '2023-09-01 07:23:22');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (362, 2, 14, '2023-10-30 09:58:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (238, 2, 5, '2025-05-26 22:44:00');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (206, 9, 26, '2024-05-08 18:15:53');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (471, 1, 34, '2024-12-03 22:22:54');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (285, 9, 35, '2025-04-01 17:11:49');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (286, 3, 5, '2023-10-21 08:56:26');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (51, 3, 26, '2024-09-05 00:13:00');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (466, 8, 19, '2023-03-05 14:51:48');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (300, 8, 33, '2024-05-09 02:21:10');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (396, 2, 17, '2024-01-26 22:02:12');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (434, 9, 17, '2025-03-25 02:15:21');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (273, 1, 12, '2023-02-25 09:53:36');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (75, 6, 45, '2024-05-07 12:12:50');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (45, 4, 22, '2025-01-25 03:11:48');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (100, 2, 35, '2025-05-17 19:22:32');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (373, 6, 3, '2023-02-14 18:50:48');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (463, 4, 34, '2023-12-05 21:18:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (34, 3, 19, '2023-12-24 11:15:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (67, 5, 46, '2023-04-02 14:53:10');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (227, 6, 3, '2024-12-18 03:14:47');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (284, 1, 24, '2024-07-29 09:49:29');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (435, 4, 33, '2023-06-21 12:05:06');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (160, 5, 5, '2025-06-03 08:38:56');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (357, 1, 13, '2024-01-11 04:58:25');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (369, 8, 36, '2023-09-28 10:07:50');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (61, 2, 23, '2023-03-06 23:16:52');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (389, 9, 31, '2023-03-23 07:31:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (344, 9, 43, '2024-02-10 19:56:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (124, 7, 25, '2023-05-20 23:03:16');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (167, 3, 26, '2023-05-10 09:04:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (453, 2, 14, '2025-03-28 21:18:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (91, 4, 32, '2024-11-09 13:35:30');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (45, 9, 2, '2024-07-03 05:19:57');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (406, 9, 27, '2025-05-05 10:01:33');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (192, 3, 13, '2024-08-15 07:46:51');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (229, 8, 39, '2025-01-21 22:24:04');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (33, 2, 2, '2023-11-06 21:33:15');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (491, 3, 17, '2024-09-05 10:10:00');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (348, 6, 10, '2025-03-26 16:20:20');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (431, 2, 22, '2025-05-30 01:45:36');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (200, 2, 1, '2024-10-29 18:19:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (73, 2, 3, '2025-04-27 22:10:12');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (64, 4, 41, '2023-03-16 19:20:44');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (329, 5, 10, '2023-09-27 22:58:41');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (212, 4, 12, '2025-05-04 08:15:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (12, 2, 33, '2023-12-10 05:47:40');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (3, 3, 12, '2024-07-13 17:56:56');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (247, 9, 11, '2025-02-23 08:19:20');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (53, 9, 5, '2024-01-12 10:55:08');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (398, 2, 4, '2023-04-01 19:53:36');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (148, 7, 11, '2024-06-09 05:12:48');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (184, 7, 7, '2023-10-01 03:56:51');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (283, 9, 46, '2023-01-18 19:18:17');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (112, 4, 40, '2023-06-27 15:43:44');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (285, 4, 40, '2023-11-05 04:42:22');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (345, 3, 14, '2023-10-30 15:51:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (99, 3, 20, '2024-11-15 18:50:50');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (416, 1, 44, '2023-02-22 18:11:30');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (373, 3, 4, '2025-03-05 22:55:29');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (414, 8, 4, '2023-05-15 09:00:38');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (73, 7, 7, '2024-05-30 09:48:48');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (132, 7, 30, '2025-06-22 12:40:36');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (207, 1, 13, '2025-04-22 10:31:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (19, 8, 30, '2023-11-22 00:59:20');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (138, 6, 24, '2023-06-30 13:36:20');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (493, 9, 47, '2025-04-28 05:10:39');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (4, 2, 20, '2023-11-07 08:18:07');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (359, 3, 40, '2024-01-24 12:11:17');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (98, 1, 32, '2024-07-14 17:18:50');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (110, 2, 42, '2024-12-17 00:52:23');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (364, 4, 46, '2023-09-10 11:21:10');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (492, 3, 33, '2025-06-02 05:24:33');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (369, 3, 10, '2024-04-30 05:07:41');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (483, 9, 20, '2024-12-15 23:46:16');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (247, 7, 31, '2023-06-18 19:05:36');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (500, 3, 11, '2025-03-10 18:30:22');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (177, 8, 18, '2024-04-11 13:20:49');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (110, 8, 5, '2023-08-29 08:30:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (355, 7, 32, '2025-06-14 08:12:47');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (173, 7, 46, '2024-07-08 10:37:22');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (381, 7, 9, '2023-06-07 09:37:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (184, 9, 7, '2025-04-23 06:09:59');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (222, 7, 29, '2024-09-04 19:04:43');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (32, 6, 26, '2023-05-25 18:48:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (192, 6, 22, '2023-08-15 17:22:04');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (193, 2, 47, '2023-03-16 00:35:46');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (311, 1, 36, '2024-06-10 09:51:58');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (356, 1, 13, '2023-06-19 10:22:14');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (252, 3, 15, '2025-04-27 13:53:50');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (286, 5, 15, '2024-10-28 19:48:18');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (340, 4, 4, '2024-12-17 04:16:17');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (455, 7, 44, '2024-09-04 13:13:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (275, 8, 27, '2024-02-26 07:02:45');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (420, 8, 9, '2024-05-24 01:00:18');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (408, 4, 30, '2024-08-31 08:56:24');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (101, 1, 13, '2023-06-08 13:30:36');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (456, 1, 18, '2024-08-16 08:01:45');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (296, 8, 27, '2024-10-22 13:05:09');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (363, 9, 9, '2023-12-10 17:40:32');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (194, 5, 23, '2023-10-18 06:13:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (217, 9, 4, '2024-10-20 20:01:39');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (163, 7, 13, '2025-07-30 01:53:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (324, 8, 35, '2024-06-15 09:24:24');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (414, 5, 40, '2024-09-26 16:36:59');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (179, 2, 30, '2024-08-30 19:12:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (69, 6, 29, '2024-02-08 22:40:00');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (123, 2, 1, '2023-09-20 23:05:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (408, 8, 17, '2023-06-04 16:53:14');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (337, 1, 42, '2023-02-17 00:13:39');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (111, 4, 1, '2023-11-27 07:02:17');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (5, 5, 18, '2023-06-03 07:29:51');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (60, 4, 44, '2023-07-01 09:56:50');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (206, 4, 17, '2023-03-13 18:27:24');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (174, 9, 4, '2023-12-26 22:30:30');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (84, 4, 24, '2024-10-01 22:44:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (385, 6, 34, '2024-09-27 00:37:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (58, 1, 33, '2023-10-29 14:32:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (110, 5, 5, '2023-10-20 19:10:45');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (248, 4, 26, '2024-08-25 21:11:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (315, 7, 27, '2025-07-15 21:04:01');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (20, 9, 41, '2024-05-27 17:55:55');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (14, 8, 26, '2025-01-08 04:36:57');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (488, 6, 21, '2024-12-25 10:14:21');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (284, 2, 32, '2024-01-19 09:04:42');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (370, 8, 27, '2023-01-11 22:02:50');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (82, 6, 7, '2025-05-24 19:07:40');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (52, 3, 5, '2025-07-10 08:04:08');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (15, 5, 39, '2023-10-25 11:43:25');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (120, 2, 21, '2024-12-18 12:53:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (233, 3, 30, '2023-10-07 19:11:17');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (116, 3, 44, '2024-04-15 11:36:09');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (206, 6, 41, '2023-08-18 02:45:08');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (413, 3, 5, '2024-10-12 01:25:10');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (28, 3, 42, '2024-03-09 16:05:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (180, 4, 44, '2024-07-16 14:29:34');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (297, 4, 15, '2023-07-04 15:10:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (57, 8, 19, '2025-03-10 13:14:13');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (333, 9, 35, '2025-05-23 14:09:20');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (165, 8, 8, '2025-03-17 03:21:06');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (304, 3, 38, '2024-01-08 11:10:11');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (400, 1, 34, '2024-05-14 11:10:04');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (376, 6, 47, '2024-05-20 20:52:34');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (425, 2, 17, '2023-05-16 17:03:01');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (169, 8, 46, '2023-04-20 18:07:12');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (399, 1, 30, '2025-06-12 21:49:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (450, 4, 21, '2025-03-27 10:20:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (432, 6, 11, '2023-08-12 02:45:18');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (73, 7, 23, '2025-06-28 21:44:45');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (44, 9, 7, '2024-11-03 08:50:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (351, 3, 29, '2024-04-25 15:08:03');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (142, 3, 45, '2024-03-27 02:49:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (285, 1, 28, '2023-05-01 00:53:04');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (399, 5, 33, '2024-03-24 10:35:41');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (225, 6, 45, '2023-03-20 23:14:25');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (326, 5, 20, '2025-01-21 23:00:15');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (238, 2, 27, '2024-02-06 20:53:57');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (346, 8, 36, '2023-06-01 16:58:30');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (182, 1, 10, '2025-06-13 01:24:18');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (22, 8, 34, '2024-07-20 20:33:14');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (480, 8, 1, '2024-09-29 01:46:59');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (432, 3, 18, '2023-03-20 18:15:53');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (274, 5, 46, '2025-02-07 07:12:11');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (342, 4, 30, '2023-03-14 17:12:37');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (361, 6, 32, '2024-09-07 18:13:47');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (337, 3, 3, '2023-04-18 03:12:36');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (396, 3, 1, '2025-06-18 14:08:33');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (113, 6, 35, '2024-11-04 15:18:28');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (229, 9, 30, '2023-11-18 17:05:47');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (442, 2, 22, '2024-10-14 22:26:29');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (186, 3, 28, '2023-02-25 04:22:28');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (409, 7, 5, '2023-02-06 04:18:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (129, 3, 30, '2023-01-10 17:50:41');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (346, 5, 30, '2024-10-24 14:22:39');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (244, 6, 18, '2024-12-17 02:34:05');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (345, 8, 3, '2025-01-31 15:32:23');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (282, 1, 4, '2025-03-08 21:02:22');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (91, 6, 37, '2023-07-27 11:30:52');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (236, 1, 42, '2025-03-12 07:52:58');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (373, 8, 20, '2023-01-06 13:51:35');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (479, 1, 11, '2025-07-23 07:41:46');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (427, 7, 3, '2023-09-09 19:01:20');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (160, 7, 39, '2023-09-19 14:25:36');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (24, 2, 39, '2024-08-09 19:45:09');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (167, 8, 31, '2023-08-04 08:02:18');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (231, 2, 8, '2024-01-17 11:08:21');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (384, 7, 37, '2024-08-03 10:05:36');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (18, 2, 26, '2025-05-29 08:33:10');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (112, 9, 10, '2025-03-27 13:21:27');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (337, 4, 17, '2024-11-21 09:26:54');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (251, 4, 4, '2024-04-27 19:00:48');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (263, 6, 25, '2023-05-16 06:17:20');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (274, 4, 4, '2024-11-28 18:44:29');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (102, 6, 36, '2024-11-04 01:36:19');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (10, 5, 4, '2023-04-23 19:00:53');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (226, 6, 47, '2023-05-31 22:04:12');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (288, 8, 16, '2025-05-08 23:13:40');
INSERT INTO CargoStatuses (cargo_id, status_type_id, updated_by_id, update_date) VALUES (101, 6, 30, '2023-12-04 13:37:37');


-- 13. Cities Tablosu 

INSERT INTO Cities (city_name) VALUES ('ADANA');
INSERT INTO Cities (city_name) VALUES ('ADIYAMAN');
INSERT INTO Cities (city_name) VALUES ('AFYONKARAHİSAR');
INSERT INTO Cities (city_name) VALUES ('AĞRI');
INSERT INTO Cities (city_name) VALUES ('AKSARAY');
INSERT INTO Cities (city_name) VALUES ('AMASYA');
INSERT INTO Cities (city_name) VALUES ('ANKARA');
INSERT INTO Cities (city_name) VALUES ('ANTALYA');
INSERT INTO Cities (city_name) VALUES ('ARDAHAN');
INSERT INTO Cities (city_name) VALUES ('ARTVİN');
INSERT INTO Cities (city_name) VALUES ('AYDIN');
INSERT INTO Cities (city_name) VALUES ('BALIKESİR');
INSERT INTO Cities (city_name) VALUES ('BARTIN');
INSERT INTO Cities (city_name) VALUES ('BATMAN');
INSERT INTO Cities (city_name) VALUES ('BAYBURT');
INSERT INTO Cities (city_name) VALUES ('BİLECİK');
INSERT INTO Cities (city_name) VALUES ('BİNGÖL');
INSERT INTO Cities (city_name) VALUES ('BİTLİS');
INSERT INTO Cities (city_name) VALUES ('BOLU');
INSERT INTO Cities (city_name) VALUES ('BURDUR');
INSERT INTO Cities (city_name) VALUES ('BURSA');
INSERT INTO Cities (city_name) VALUES ('ÇANAKKALE');
INSERT INTO Cities (city_name) VALUES ('ÇANKIRI');
INSERT INTO Cities (city_name) VALUES ('ÇORUM');
INSERT INTO Cities (city_name) VALUES ('DENİZLİ');
INSERT INTO Cities (city_name) VALUES ('DİYARBAKIR');
INSERT INTO Cities (city_name) VALUES ('DÜZCE');
INSERT INTO Cities (city_name) VALUES ('EDİRNE');
INSERT INTO Cities (city_name) VALUES ('ELAZIĞ');
INSERT INTO Cities (city_name) VALUES ('ERZİNCAN');
INSERT INTO Cities (city_name) VALUES ('ERZURUM');
INSERT INTO Cities (city_name) VALUES ('ESKİŞEHİR');
INSERT INTO Cities (city_name) VALUES ('GAZİANTEP');
INSERT INTO Cities (city_name) VALUES ('GİRESUN');
INSERT INTO Cities (city_name) VALUES ('GÜMÜŞHANE');
INSERT INTO Cities (city_name) VALUES ('HAKKARİ');
INSERT INTO Cities (city_name) VALUES ('HATAY');
INSERT INTO Cities (city_name) VALUES ('IĞDIR');
INSERT INTO Cities (city_name) VALUES ('ISPARTA');
INSERT INTO Cities (city_name) VALUES ('İSTANBUL');
INSERT INTO Cities (city_name) VALUES ('İZMİR');
INSERT INTO Cities (city_name) VALUES ('KAHRAMANMARAŞ');
INSERT INTO Cities (city_name) VALUES ('KARABÜK');
INSERT INTO Cities (city_name) VALUES ('KARAMAN');
INSERT INTO Cities (city_name) VALUES ('KARS');
INSERT INTO Cities (city_name) VALUES ('KASTAMONU');
INSERT INTO Cities (city_name) VALUES ('KAYSERİ');
INSERT INTO Cities (city_name) VALUES ('KIRIKKALE');
INSERT INTO Cities (city_name) VALUES ('KIRKLARELİ');
INSERT INTO Cities (city_name) VALUES ('KIRŞEHİR');
INSERT INTO Cities (city_name) VALUES ('KİLİS');
INSERT INTO Cities (city_name) VALUES ('KOCAELİ');
INSERT INTO Cities (city_name) VALUES ('KONYA');
INSERT INTO Cities (city_name) VALUES ('KÜTAHYA');
INSERT INTO Cities (city_name) VALUES ('MALATYA');
INSERT INTO Cities (city_name) VALUES ('MANİSA');
INSERT INTO Cities (city_name) VALUES ('MARDİN');
INSERT INTO Cities (city_name) VALUES ('MERSİN');
INSERT INTO Cities (city_name) VALUES ('MUĞLA');
INSERT INTO Cities (city_name) VALUES ('MUŞ');
INSERT INTO Cities (city_name) VALUES ('NEVŞEHİR');
INSERT INTO Cities (city_name) VALUES ('NİĞDE');
INSERT INTO Cities (city_name) VALUES ('ORDU');
INSERT INTO Cities (city_name) VALUES ('OSMANİYE');
INSERT INTO Cities (city_name) VALUES ('RİZE');
INSERT INTO Cities (city_name) VALUES ('SAKARYA');
INSERT INTO Cities (city_name) VALUES ('SAMSUN');
INSERT INTO Cities (city_name) VALUES ('SİİRT');
INSERT INTO Cities (city_name) VALUES ('SİNOP');
INSERT INTO Cities (city_name) VALUES ('SİVAS');
INSERT INTO Cities (city_name) VALUES ('ŞANLIURFA');
INSERT INTO Cities (city_name) VALUES ('ŞIRNAK');
INSERT INTO Cities (city_name) VALUES ('TEKİRDAĞ');
INSERT INTO Cities (city_name) VALUES ('TOKAT');
INSERT INTO Cities (city_name) VALUES ('TRABZON');
INSERT INTO Cities (city_name) VALUES ('TUNCELİ');
INSERT INTO Cities (city_name) VALUES ('UŞAK');
INSERT INTO Cities (city_name) VALUES ('VAN');
INSERT INTO Cities (city_name) VALUES ('YALOVA');
INSERT INTO Cities (city_name) VALUES ('YOZGAT');
INSERT INTO Cities (city_name) VALUES ('ZONGULDAK');

-- 14. Discrits Tablosu 

INSERT INTO Districts (district_name, city_id) VALUES ('19 MAYIS', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('ABANA', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('ACIGÖL', 61);
INSERT INTO Districts (district_name, city_id) VALUES ('ACIPAYAM', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('ADAKLI', 17);
INSERT INTO Districts (district_name, city_id) VALUES ('ADALAR', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('ADAPAZARI', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('ADİLCEVAZ', 18);
INSERT INTO Districts (district_name, city_id) VALUES ('AFŞİN', 42);
INSERT INTO Districts (district_name, city_id) VALUES ('AĞAÇÖREN', 5);
INSERT INTO Districts (district_name, city_id) VALUES ('AĞIN', 29);
INSERT INTO Districts (district_name, city_id) VALUES ('AĞLASUN', 20);
INSERT INTO Districts (district_name, city_id) VALUES ('AĞLI', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('AHIRLI', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('AHLAT', 18);
INSERT INTO Districts (district_name, city_id) VALUES ('AHMETLİ', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('AKÇAABAT', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('AKÇADAĞ', 55);
INSERT INTO Districts (district_name, city_id) VALUES ('AKÇAKALE', 71);
INSERT INTO Districts (district_name, city_id) VALUES ('AKÇAKENT', 50);
INSERT INTO Districts (district_name, city_id) VALUES ('AKÇAKOCA', 27);
INSERT INTO Districts (district_name, city_id) VALUES ('AKDAĞMADENİ', 80);
INSERT INTO Districts (district_name, city_id) VALUES ('AKDENİZ', 58);
INSERT INTO Districts (district_name, city_id) VALUES ('AKHİSAR', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('AKINCILAR', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('AKKIŞLA', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('AKKUŞ', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('AKÖREN', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('AKPINAR', 50);
INSERT INTO Districts (district_name, city_id) VALUES ('AKSEKİ', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('AKSU', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('AKŞEHİR', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('AKYAKA', 45);
INSERT INTO Districts (district_name, city_id) VALUES ('AKYAZI', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('AKYURT', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('ALACA', 24);
INSERT INTO Districts (district_name, city_id) VALUES ('ALACAKAYA', 29);
INSERT INTO Districts (district_name, city_id) VALUES ('ALAÇAM', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('ALADAĞ', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('ALANYA', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('ALAPLI', 81);
INSERT INTO Districts (district_name, city_id) VALUES ('ALAŞEHİR', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('ALİAĞA', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('ALMUS', 74);
INSERT INTO Districts (district_name, city_id) VALUES ('ALPU', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('ALTIEYLÜL', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('ALTINDAĞ', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('ALTINEKİN', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('ALTINORDU', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('ALTINOVA', 79);
INSERT INTO Districts (district_name, city_id) VALUES ('ALTINÖZÜ', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('ALTINTAŞ', 54);
INSERT INTO Districts (district_name, city_id) VALUES ('ALTINYAYLA', 20);
INSERT INTO Districts (district_name, city_id) VALUES ('ALTUNHİSAR', 62);
INSERT INTO Districts (district_name, city_id) VALUES ('ALUCRA', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('AMASRA', 13);
INSERT INTO Districts (district_name, city_id) VALUES ('ANAMUR', 58);
INSERT INTO Districts (district_name, city_id) VALUES ('ANDIRIN', 42);
INSERT INTO Districts (district_name, city_id) VALUES ('ANTAKYA', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('ARABAN', 33);
INSERT INTO Districts (district_name, city_id) VALUES ('ARAÇ', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('ARAKLI', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('ARALIK', 38);
INSERT INTO Districts (district_name, city_id) VALUES ('ARAPGİR', 55);
INSERT INTO Districts (district_name, city_id) VALUES ('ARDANUÇ', 10);
INSERT INTO Districts (district_name, city_id) VALUES ('ARDEŞEN', 65);
INSERT INTO Districts (district_name, city_id) VALUES ('ARGUVAN', 55);
INSERT INTO Districts (district_name, city_id) VALUES ('ARHAVİ', 10);
INSERT INTO Districts (district_name, city_id) VALUES ('ARICAK', 29);
INSERT INTO Districts (district_name, city_id) VALUES ('ARİFİYE', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('ARMUTLU', 79);
INSERT INTO Districts (district_name, city_id) VALUES ('ARNAVUTKÖY', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('ARPAÇAY', 45);
INSERT INTO Districts (district_name, city_id) VALUES ('ARSİN', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('ARSUZ', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('ARTOVA', 74);
INSERT INTO Districts (district_name, city_id) VALUES ('ARTUKLU', 57);
INSERT INTO Districts (district_name, city_id) VALUES ('ASARCIK', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('ASLANAPA', 54);
INSERT INTO Districts (district_name, city_id) VALUES ('AŞKALE', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('ATABEY', 39);
INSERT INTO Districts (district_name, city_id) VALUES ('ATAKUM', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('ATAŞEHİR', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('ATKARACALAR', 23);
INSERT INTO Districts (district_name, city_id) VALUES ('AVANOS', 61);
INSERT INTO Districts (district_name, city_id) VALUES ('AVCILAR', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('AYANCIK', 69);
INSERT INTO Districts (district_name, city_id) VALUES ('AYAŞ', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('AYBASTI', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('AYDINCIK', 58);
INSERT INTO Districts (district_name, city_id) VALUES ('AYDINTEPE', 15);
INSERT INTO Districts (district_name, city_id) VALUES ('AYRANCI', 44);
INSERT INTO Districts (district_name, city_id) VALUES ('AYVACIK', 22);
INSERT INTO Districts (district_name, city_id) VALUES ('AYVALIK', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('AZDAVAY', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('AZİZİYE', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('BABADAĞ', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('BABAESKİ', 49);
INSERT INTO Districts (district_name, city_id) VALUES ('BAFRA', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('BAĞCILAR', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('BAĞLAR', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('BAHÇE', 64);
INSERT INTO Districts (district_name, city_id) VALUES ('BAHÇELİEVLER', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('BAHÇESARAY', 78);
INSERT INTO Districts (district_name, city_id) VALUES ('BAHŞILI', 48);
INSERT INTO Districts (district_name, city_id) VALUES ('BAKIRKÖY', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('BAKLAN', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('BALA', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('BALÇOVA', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('BALIŞEYH', 48);
INSERT INTO Districts (district_name, city_id) VALUES ('BALYA', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('BANAZ', 77);
INSERT INTO Districts (district_name, city_id) VALUES ('BANDIRMA', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('BASKİL', 29);
INSERT INTO Districts (district_name, city_id) VALUES ('BAŞAKŞEHİR', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('BAŞÇİFTLİK', 74);
INSERT INTO Districts (district_name, city_id) VALUES ('BAŞİSKELE', 52);
INSERT INTO Districts (district_name, city_id) VALUES ('BAŞKALE', 78);
INSERT INTO Districts (district_name, city_id) VALUES ('BAŞMAKÇI', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('BAŞYAYLA', 44);
INSERT INTO Districts (district_name, city_id) VALUES ('BATTALGAZİ', 55);
INSERT INTO Districts (district_name, city_id) VALUES ('BAYAT', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('BAYINDIR', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('BAYKAN', 68);
INSERT INTO Districts (district_name, city_id) VALUES ('BAYRAKLI', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('BAYRAMİÇ', 22);
INSERT INTO Districts (district_name, city_id) VALUES ('BAYRAMÖREN', 23);
INSERT INTO Districts (district_name, city_id) VALUES ('BAYRAMPAŞA', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('BEKİLLİ', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('BELEN', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('BERGAMA', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('BESNİ', 2);
INSERT INTO Districts (district_name, city_id) VALUES ('BEŞİKDÜZÜ', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('BEŞİKTAŞ', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('BEŞİRİ', 14);
INSERT INTO Districts (district_name, city_id) VALUES ('BEYAĞAÇ', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('BEYDAĞ', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('BEYKOZ', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('BEYLİKDÜZÜ', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('BEYLİKOVA', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('BEYOĞLU', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('BEYPAZARI', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('BEYŞEHİR', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('BEYTÜŞŞEBAP', 72);
INSERT INTO Districts (district_name, city_id) VALUES ('BİGA', 22);
INSERT INTO Districts (district_name, city_id) VALUES ('BİGADİÇ', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('BİRECİK', 71);
INSERT INTO Districts (district_name, city_id) VALUES ('BİSMİL', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('BODRUM', 59);
INSERT INTO Districts (district_name, city_id) VALUES ('BOĞAZKALE', 24);
INSERT INTO Districts (district_name, city_id) VALUES ('BOĞAZLIYAN', 80);
INSERT INTO Districts (district_name, city_id) VALUES ('BOLVADİN', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('BOR', 62);
INSERT INTO Districts (district_name, city_id) VALUES ('BORÇKA', 10);
INSERT INTO Districts (district_name, city_id) VALUES ('BORNOVA', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('BOYABAT', 69);
INSERT INTO Districts (district_name, city_id) VALUES ('BOZCAADA', 22);
INSERT INTO Districts (district_name, city_id) VALUES ('BOZDOĞAN', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('BOZKIR', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('BOZKURT', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('BOZOVA', 71);
INSERT INTO Districts (district_name, city_id) VALUES ('BOZTEPE', 50);
INSERT INTO Districts (district_name, city_id) VALUES ('BOZÜYÜK', 16);
INSERT INTO Districts (district_name, city_id) VALUES ('BOZYAZI', 58);
INSERT INTO Districts (district_name, city_id) VALUES ('BUCA', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('BUCAK', 20);
INSERT INTO Districts (district_name, city_id) VALUES ('BUHARKENT', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('BULANCAK', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('BULANIK', 60);
INSERT INTO Districts (district_name, city_id) VALUES ('BULDAN', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('BURHANİYE', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('BÜNYAN', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('BÜYÜKÇEKMECE', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('BÜYÜKORHAN', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('CANİK', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('CEYHAN', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('CEYLANPINAR', 71);
INSERT INTO Districts (district_name, city_id) VALUES ('CİDE', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('CİHANBEYLİ', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('CİZRE', 72);
INSERT INTO Districts (district_name, city_id) VALUES ('CUMAYERİ', 27);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAĞLAYANCERİT', 42);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAL', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇALDIRAN', 78);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAMARDI', 62);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAMAŞ', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAMELİ', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAMLIDERE', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAMLIHEMŞİN', 65);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAMLIYAYLA', 58);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAMOLUK', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAN', 22);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇANAKÇI', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇANDIR', 80);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇANKAYA', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇARDAK', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇARŞAMBA', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇARŞIBAŞI', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAT', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇATAK', 78);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇATALCA', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇATALPINAR', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇATALZEYTİN', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAVDARHİSAR', 54);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAVDIR', 20);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAY', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAYBAŞI', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAYCUMA', 81);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAYELİ', 65);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAYIRALAN', 80);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAYIRLI', 30);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAYIROVA', 52);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇAYKARA', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇEKEREK', 80);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇEKMEKÖY', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇELEBİ', 48);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇELİKHAN', 2);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇELTİK', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇELTİKÇİ', 20);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇEMİŞGEZEK', 76);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇERKEŞ', 23);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇERKEZKÖY', 73);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇERMİK', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇEŞME', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇILDIR', 9);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇINAR', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇINARCIK', 79);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇİÇEKDAĞI', 50);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇİFTELER', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇİFTLİK', 62);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇİFTLİKKÖY', 79);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇİĞLİ', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇİLİMLİ', 27);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇİNE', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇİVRİL', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇOBANLAR', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇORLU', 73);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇUBUK', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇUKURCA', 36);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇUKUROVA', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇUMRA', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('ÇÜNGÜŞ', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('DADAY', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('DALAMAN', 59);
INSERT INTO Districts (district_name, city_id) VALUES ('DAMAL', 9);
INSERT INTO Districts (district_name, city_id) VALUES ('DARENDE', 55);
INSERT INTO Districts (district_name, city_id) VALUES ('DARGEÇİT', 57);
INSERT INTO Districts (district_name, city_id) VALUES ('DARICA', 52);
INSERT INTO Districts (district_name, city_id) VALUES ('DATÇA', 59);
INSERT INTO Districts (district_name, city_id) VALUES ('DAZKIRI', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('DEFNE', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('DELİCE', 48);
INSERT INTO Districts (district_name, city_id) VALUES ('DEMİRCİ', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('DEMİRKÖY', 49);
INSERT INTO Districts (district_name, city_id) VALUES ('DEMİRÖZÜ', 15);
INSERT INTO Districts (district_name, city_id) VALUES ('DEMRE', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('DERBENT', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('DEREBUCAK', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('DERECİK', 36);
INSERT INTO Districts (district_name, city_id) VALUES ('DERELİ', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('DEREPAZARI', 65);
INSERT INTO Districts (district_name, city_id) VALUES ('DERİK', 57);
INSERT INTO Districts (district_name, city_id) VALUES ('DERİNCE', 52);
INSERT INTO Districts (district_name, city_id) VALUES ('DERİNKUYU', 61);
INSERT INTO Districts (district_name, city_id) VALUES ('DERNEKPAZARI', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('DEVELİ', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('DEVREK', 81);
INSERT INTO Districts (district_name, city_id) VALUES ('DEVREKANİ', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('DİCLE', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('DİDİM', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('DİGOR', 45);
INSERT INTO Districts (district_name, city_id) VALUES ('DİKİLİ', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('DİKMEN', 69);
INSERT INTO Districts (district_name, city_id) VALUES ('DİLOVASI', 52);
INSERT INTO Districts (district_name, city_id) VALUES ('DİNAR', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('DİVRİĞİ', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('DİYADİN', 4);
INSERT INTO Districts (district_name, city_id) VALUES ('DODURGA', 24);
INSERT INTO Districts (district_name, city_id) VALUES ('DOĞANHİSAR', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('DOĞANKENT', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('DOĞANŞAR', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('DOĞANŞEHİR', 55);
INSERT INTO Districts (district_name, city_id) VALUES ('DOĞANYOL', 55);
INSERT INTO Districts (district_name, city_id) VALUES ('DOĞANYURT', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('DOĞUBAYAZIT', 4);
INSERT INTO Districts (district_name, city_id) VALUES ('DOMANİÇ', 54);
INSERT INTO Districts (district_name, city_id) VALUES ('DÖRTDİVAN', 19);
INSERT INTO Districts (district_name, city_id) VALUES ('DÖRTYOL', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('DÖŞEMEALTI', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('DULKADİROĞLU', 42);
INSERT INTO Districts (district_name, city_id) VALUES ('DUMLUPINAR', 54);
INSERT INTO Districts (district_name, city_id) VALUES ('DURAĞAN', 69);
INSERT INTO Districts (district_name, city_id) VALUES ('DURSUNBEY', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('DÜZİÇİ', 64);
INSERT INTO Districts (district_name, city_id) VALUES ('DÜZKÖY', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('ECEABAT', 22);
INSERT INTO Districts (district_name, city_id) VALUES ('EDREMİT', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('EFELER', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('EFLANİ', 43);
INSERT INTO Districts (district_name, city_id) VALUES ('EĞİL', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('EĞİRDİR', 39);
INSERT INTO Districts (district_name, city_id) VALUES ('EKİNÖZÜ', 42);
INSERT INTO Districts (district_name, city_id) VALUES ('ELBEYLİ', 51);
INSERT INTO Districts (district_name, city_id) VALUES ('ELBİSTAN', 42);
INSERT INTO Districts (district_name, city_id) VALUES ('ELDİVAN', 23);
INSERT INTO Districts (district_name, city_id) VALUES ('ELEŞKİRT', 4);
INSERT INTO Districts (district_name, city_id) VALUES ('ELMADAĞ', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('ELMALI', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('EMET', 54);
INSERT INTO Districts (district_name, city_id) VALUES ('EMİRDAĞ', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('EMİRGAZİ', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('ENEZ', 28);
INSERT INTO Districts (district_name, city_id) VALUES ('ERBAA', 74);
INSERT INTO Districts (district_name, city_id) VALUES ('ERCİŞ', 78);
INSERT INTO Districts (district_name, city_id) VALUES ('ERDEK', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('ERDEMLİ', 58);
INSERT INTO Districts (district_name, city_id) VALUES ('EREĞLİ', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('ERENLER', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('ERFELEK', 69);
INSERT INTO Districts (district_name, city_id) VALUES ('ERGANİ', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('ERGENE', 73);
INSERT INTO Districts (district_name, city_id) VALUES ('ERMENEK', 44);
INSERT INTO Districts (district_name, city_id) VALUES ('ERUH', 68);
INSERT INTO Districts (district_name, city_id) VALUES ('ERZİN', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('ESENLER', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('ESENYURT', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('ESKİL', 5);
INSERT INTO Districts (district_name, city_id) VALUES ('ESKİPAZAR', 43);
INSERT INTO Districts (district_name, city_id) VALUES ('ESPİYE', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('EŞME', 77);
INSERT INTO Districts (district_name, city_id) VALUES ('ETİMESGUT', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('EVCİLER', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('EVREN', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('EYNESİL', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('EYÜPSULTAN', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('EYYÜBİYE', 71);
INSERT INTO Districts (district_name, city_id) VALUES ('EZİNE', 22);
INSERT INTO Districts (district_name, city_id) VALUES ('FATİH', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('FATSA', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('FEKE', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('FELAHİYE', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('FERİZLİ', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('FETHİYE', 59);
INSERT INTO Districts (district_name, city_id) VALUES ('FINDIKLI', 65);
INSERT INTO Districts (district_name, city_id) VALUES ('FİNİKE', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('FOÇA', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('GAZİEMİR', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('GAZİOSMANPAŞA', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('GAZİPAŞA', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('GEBZE', 52);
INSERT INTO Districts (district_name, city_id) VALUES ('GEDİZ', 54);
INSERT INTO Districts (district_name, city_id) VALUES ('GELENDOST', 39);
INSERT INTO Districts (district_name, city_id) VALUES ('GELİBOLU', 22);
INSERT INTO Districts (district_name, city_id) VALUES ('GEMEREK', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('GEMLİK', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('GENÇ', 17);
INSERT INTO Districts (district_name, city_id) VALUES ('GERCÜŞ', 14);
INSERT INTO Districts (district_name, city_id) VALUES ('GEREDE', 19);
INSERT INTO Districts (district_name, city_id) VALUES ('GERGER', 2);
INSERT INTO Districts (district_name, city_id) VALUES ('GERMENCİK', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('GERZE', 69);
INSERT INTO Districts (district_name, city_id) VALUES ('GEVAŞ', 78);
INSERT INTO Districts (district_name, city_id) VALUES ('GEYVE', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖKÇEADA', 22);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖKÇEBEY', 81);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖKSUN', 42);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖLBAŞI', 2);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖLCÜK', 52);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖLE', 9);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖLHİSAR', 20);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖLKÖY', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖLMARMARA', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖLOVA', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖLPAZARI', 16);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖLYAKA', 27);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖMEÇ', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖNEN', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖRDES', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖRELE', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖYNÜCEK', 6);
INSERT INTO Districts (district_name, city_id) VALUES ('GÖYNÜK', 19);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜCE', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜÇLÜKONAK', 72);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜDÜL', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜLAĞAÇ', 5);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜLNAR', 58);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜLŞEHİR', 61);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜLYALI', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜMÜŞHACIKÖY', 6);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜMÜŞOVA', 27);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜNDOĞMUŞ', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜNEY', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜNEYSINIR', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜNEYSU', 65);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜNGÖREN', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜNYÜZÜ', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜRGENTEPE', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜROYMAK', 18);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜRPINAR', 78);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜRSU', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜRÜN', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜZELBAHÇE', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('GÜZELYURT', 5);
INSERT INTO Districts (district_name, city_id) VALUES ('HACIBEKTAŞ', 61);
INSERT INTO Districts (district_name, city_id) VALUES ('HACILAR', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('HADİM', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('HAFİK', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('HALFETİ', 71);
INSERT INTO Districts (district_name, city_id) VALUES ('HALİLİYE', 71);
INSERT INTO Districts (district_name, city_id) VALUES ('HALKAPINAR', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('HAMAMÖZÜ', 6);
INSERT INTO Districts (district_name, city_id) VALUES ('HAMUR', 4);
INSERT INTO Districts (district_name, city_id) VALUES ('HAN', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('HANAK', 9);
INSERT INTO Districts (district_name, city_id) VALUES ('HANİ', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('HANÖNÜ', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('HARMANCIK', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('HARRAN', 71);
INSERT INTO Districts (district_name, city_id) VALUES ('HASANBEYLİ', 64);
INSERT INTO Districts (district_name, city_id) VALUES ('HASANKEYF', 14);
INSERT INTO Districts (district_name, city_id) VALUES ('HASKÖY', 60);
INSERT INTO Districts (district_name, city_id) VALUES ('HASSA', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('HAVRAN', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('HAVSA', 28);
INSERT INTO Districts (district_name, city_id) VALUES ('HAVZA', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('HAYMANA', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('HAYRABOLU', 73);
INSERT INTO Districts (district_name, city_id) VALUES ('HAYRAT', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('HAZRO', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('HEKİMHAN', 55);
INSERT INTO Districts (district_name, city_id) VALUES ('HEMŞİN', 65);
INSERT INTO Districts (district_name, city_id) VALUES ('HENDEK', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('HINIS', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('HİLVAN', 71);
INSERT INTO Districts (district_name, city_id) VALUES ('HİSARCIK', 54);
INSERT INTO Districts (district_name, city_id) VALUES ('HİZAN', 18);
INSERT INTO Districts (district_name, city_id) VALUES ('HOCALAR', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('HONAZ', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('HOPA', 10);
INSERT INTO Districts (district_name, city_id) VALUES ('HORASAN', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('HOZAT', 76);
INSERT INTO Districts (district_name, city_id) VALUES ('HÜYÜK', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('ILGAZ', 23);
INSERT INTO Districts (district_name, city_id) VALUES ('ILGIN', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('İBRADI', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('İDİL', 72);
INSERT INTO Districts (district_name, city_id) VALUES ('İHSANGAZİ', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('İHSANİYE', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('İKİZCE', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('İKİZDERE', 65);
INSERT INTO Districts (district_name, city_id) VALUES ('İLİÇ', 30);
INSERT INTO Districts (district_name, city_id) VALUES ('İLKADIM', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('İMAMOĞLU', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('İMRANLI', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('İNCESU', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('İNCİRLİOVA', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('İNEBOLU', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('İNEGÖL', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('İNHİSAR', 16);
INSERT INTO Districts (district_name, city_id) VALUES ('İNÖNÜ', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('İPEKYOLU', 78);
INSERT INTO Districts (district_name, city_id) VALUES ('İPSALA', 28);
INSERT INTO Districts (district_name, city_id) VALUES ('İSCEHİSAR', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('İSKENDERUN', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('İSKİLİP', 24);
INSERT INTO Districts (district_name, city_id) VALUES ('İSLAHİYE', 33);
INSERT INTO Districts (district_name, city_id) VALUES ('İSPİR', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('İVRİNDİ', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('İYİDERE', 65);
INSERT INTO Districts (district_name, city_id) VALUES ('İZMİT', 52);
INSERT INTO Districts (district_name, city_id) VALUES ('İZNİK', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('KABADÜZ', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('KABATAŞ', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('KADIKÖY', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('KADINHANI', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('KADIŞEHRİ', 80);
INSERT INTO Districts (district_name, city_id) VALUES ('KADİRLİ', 64);
INSERT INTO Districts (district_name, city_id) VALUES ('KAĞITHANE', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('KAĞIZMAN', 45);
INSERT INTO Districts (district_name, city_id) VALUES ('KAHRAMANKAZAN', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('KAHTA', 2);
INSERT INTO Districts (district_name, city_id) VALUES ('KALE', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('KALECİK', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('KALKANDERE', 65);
INSERT INTO Districts (district_name, city_id) VALUES ('KAMAN', 50);
INSERT INTO Districts (district_name, city_id) VALUES ('KANDIRA', 52);
INSERT INTO Districts (district_name, city_id) VALUES ('KANGAL', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('KAPAKLI', 73);
INSERT INTO Districts (district_name, city_id) VALUES ('KARABAĞLAR', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('KARABURUN', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('KARACABEY', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('KARACASU', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('KARAÇOBAN', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('KARAHALLI', 77);
INSERT INTO Districts (district_name, city_id) VALUES ('KARAİSALI', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('KARAKEÇİLİ', 48);
INSERT INTO Districts (district_name, city_id) VALUES ('KARAKOÇAN', 29);
INSERT INTO Districts (district_name, city_id) VALUES ('KARAKOYUNLU', 38);
INSERT INTO Districts (district_name, city_id) VALUES ('KARAKÖPRÜ', 71);
INSERT INTO Districts (district_name, city_id) VALUES ('KARAMANLI', 20);
INSERT INTO Districts (district_name, city_id) VALUES ('KARAMÜRSEL', 52);
INSERT INTO Districts (district_name, city_id) VALUES ('KARAPINAR', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('KARAPÜRÇEK', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('KARASU', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('KARATAŞ', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('KARATAY', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('KARAYAZI', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('KARESİ', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('KARGI', 24);
INSERT INTO Districts (district_name, city_id) VALUES ('KARKAMIŞ', 33);
INSERT INTO Districts (district_name, city_id) VALUES ('KARLIOVA', 17);
INSERT INTO Districts (district_name, city_id) VALUES ('KARPUZLU', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('KARŞIYAKA', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('KARTAL', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('KARTEPE', 52);
INSERT INTO Districts (district_name, city_id) VALUES ('KAŞ', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('KAVAK', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('KAVAKLIDERE', 59);
INSERT INTO Districts (district_name, city_id) VALUES ('KAYAPINAR', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('KAYNARCA', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('KAYNAŞLI', 27);
INSERT INTO Districts (district_name, city_id) VALUES ('KAZIMKARABEKİR', 44);
INSERT INTO Districts (district_name, city_id) VALUES ('KEBAN', 29);
INSERT INTO Districts (district_name, city_id) VALUES ('KEÇİBORLU', 39);
INSERT INTO Districts (district_name, city_id) VALUES ('KEÇİÖREN', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('KELES', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('KELKİT', 35);
INSERT INTO Districts (district_name, city_id) VALUES ('KEMAH', 30);
INSERT INTO Districts (district_name, city_id) VALUES ('KEMALİYE', 30);
INSERT INTO Districts (district_name, city_id) VALUES ('KEMALPAŞA', 10);
INSERT INTO Districts (district_name, city_id) VALUES ('KEMER', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('KEPEZ', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('KEPSUT', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('KESKİN', 48);
INSERT INTO Districts (district_name, city_id) VALUES ('KESTEL', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('KEŞAN', 28);
INSERT INTO Districts (district_name, city_id) VALUES ('KEŞAP', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('KIBRISCIK', 19);
INSERT INTO Districts (district_name, city_id) VALUES ('KINIK', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('KIRIKHAN', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('KIRKAĞAÇ', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('KIZILCAHAMAM', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('KIZILIRMAK', 23);
INSERT INTO Districts (district_name, city_id) VALUES ('KIZILÖREN', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('KIZILTEPE', 57);
INSERT INTO Districts (district_name, city_id) VALUES ('KİĞI', 17);
INSERT INTO Districts (district_name, city_id) VALUES ('KİLİMLİ', 81);
INSERT INTO Districts (district_name, city_id) VALUES ('KİRAZ', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('KOCAALİ', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('KOCAKÖY', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('KOCASİNAN', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('KOÇARLI', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('KOFÇAZ', 49);
INSERT INTO Districts (district_name, city_id) VALUES ('KONAK', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('KONYAALTI', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('KORGAN', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('KORGUN', 23);
INSERT INTO Districts (district_name, city_id) VALUES ('KORKUT', 60);
INSERT INTO Districts (district_name, city_id) VALUES ('KORKUTELİ', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('KOVANCILAR', 29);
INSERT INTO Districts (district_name, city_id) VALUES ('KOYULHİSAR', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('KOZAKLI', 61);
INSERT INTO Districts (district_name, city_id) VALUES ('KOZAN', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('KOZLU', 81);
INSERT INTO Districts (district_name, city_id) VALUES ('KOZLUK', 14);
INSERT INTO Districts (district_name, city_id) VALUES ('KÖPRÜBAŞI', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('KÖPRÜKÖY', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('KÖRFEZ', 52);
INSERT INTO Districts (district_name, city_id) VALUES ('KÖSE', 35);
INSERT INTO Districts (district_name, city_id) VALUES ('KÖŞK', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('KÖYCEĞİZ', 59);
INSERT INTO Districts (district_name, city_id) VALUES ('KULA', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('KULP', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('KULU', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('KULUNCAK', 55);
INSERT INTO Districts (district_name, city_id) VALUES ('KUMLU', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('KUMLUCA', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('KUMRU', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('KURŞUNLU', 23);
INSERT INTO Districts (district_name, city_id) VALUES ('KURTALAN', 68);
INSERT INTO Districts (district_name, city_id) VALUES ('KURUCAŞİLE', 13);
INSERT INTO Districts (district_name, city_id) VALUES ('KUŞADASI', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('KUYUCAK', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('KÜÇÜKÇEKMECE', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('KÜRE', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('KÜRTÜN', 35);
INSERT INTO Districts (district_name, city_id) VALUES ('LAÇİN', 24);
INSERT INTO Districts (district_name, city_id) VALUES ('LADİK', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('LALAPAŞA', 28);
INSERT INTO Districts (district_name, city_id) VALUES ('LAPSEKİ', 22);
INSERT INTO Districts (district_name, city_id) VALUES ('LİCE', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('LÜLEBURGAZ', 49);
INSERT INTO Districts (district_name, city_id) VALUES ('MAÇKA', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('MADEN', 29);
INSERT INTO Districts (district_name, city_id) VALUES ('MAHMUDİYE', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('MALAZGİRT', 60);
INSERT INTO Districts (district_name, city_id) VALUES ('MALKARA', 73);
INSERT INTO Districts (district_name, city_id) VALUES ('MALTEPE', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('MAMAK', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('MANAVGAT', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('MANYAS', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('MARMARA', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('MARMARAEREĞLİSİ', 73);
INSERT INTO Districts (district_name, city_id) VALUES ('MARMARİS', 59);
INSERT INTO Districts (district_name, city_id) VALUES ('MAZGİRT', 76);
INSERT INTO Districts (district_name, city_id) VALUES ('MAZIDAĞI', 57);
INSERT INTO Districts (district_name, city_id) VALUES ('MECİTÖZÜ', 24);
INSERT INTO Districts (district_name, city_id) VALUES ('MELİKGAZİ', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('MENDERES', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('MENEMEN', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('MENGEN', 19);
INSERT INTO Districts (district_name, city_id) VALUES ('MENTEŞE', 59);
INSERT INTO Districts (district_name, city_id) VALUES ('MERAM', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('MERİÇ', 28);
INSERT INTO Districts (district_name, city_id) VALUES ('MERKEZ', 2);
INSERT INTO Districts (district_name, city_id) VALUES ('MERKEZEFENDİ', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('MERZİFON', 6);
INSERT INTO Districts (district_name, city_id) VALUES ('MESUDİYE', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('MEZİTLİ', 58);
INSERT INTO Districts (district_name, city_id) VALUES ('MİDYAT', 57);
INSERT INTO Districts (district_name, city_id) VALUES ('MİHALGAZİ', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('MİHALIÇÇIK', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('MİLAS', 59);
INSERT INTO Districts (district_name, city_id) VALUES ('MUCUR', 50);
INSERT INTO Districts (district_name, city_id) VALUES ('MUDANYA', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('MUDURNU', 19);
INSERT INTO Districts (district_name, city_id) VALUES ('MURADİYE', 78);
INSERT INTO Districts (district_name, city_id) VALUES ('MURATLI', 73);
INSERT INTO Districts (district_name, city_id) VALUES ('MURATPAŞA', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('MURGUL', 10);
INSERT INTO Districts (district_name, city_id) VALUES ('MUSABEYLİ', 51);
INSERT INTO Districts (district_name, city_id) VALUES ('MUSTAFAKEMALPAŞA', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('MUT', 58);
INSERT INTO Districts (district_name, city_id) VALUES ('MUTKİ', 18);
INSERT INTO Districts (district_name, city_id) VALUES ('NALLIHAN', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('NARLIDERE', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('NARMAN', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('NAZIMİYE', 76);
INSERT INTO Districts (district_name, city_id) VALUES ('NAZİLLİ', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('NİKSAR', 74);
INSERT INTO Districts (district_name, city_id) VALUES ('NİLÜFER', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('NİZİP', 33);
INSERT INTO Districts (district_name, city_id) VALUES ('NURDAĞI', 33);
INSERT INTO Districts (district_name, city_id) VALUES ('NURHAK', 42);
INSERT INTO Districts (district_name, city_id) VALUES ('NUSAYBİN', 57);
INSERT INTO Districts (district_name, city_id) VALUES ('ODUNPAZARI', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('OF', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('OĞUZELİ', 33);
INSERT INTO Districts (district_name, city_id) VALUES ('OĞUZLAR', 24);
INSERT INTO Districts (district_name, city_id) VALUES ('OLTU', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('OLUR', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('ONİKİŞUBAT', 42);
INSERT INTO Districts (district_name, city_id) VALUES ('ORHANELİ', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('ORHANGAZİ', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('ORTA', 23);
INSERT INTO Districts (district_name, city_id) VALUES ('ORTACA', 59);
INSERT INTO Districts (district_name, city_id) VALUES ('ORTAHİSAR', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('ORTAKÖY', 5);
INSERT INTO Districts (district_name, city_id) VALUES ('OSMANCIK', 24);
INSERT INTO Districts (district_name, city_id) VALUES ('OSMANELİ', 16);
INSERT INTO Districts (district_name, city_id) VALUES ('OSMANGAZİ', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('OTLUKBELİ', 30);
INSERT INTO Districts (district_name, city_id) VALUES ('OVACIK', 43);
INSERT INTO Districts (district_name, city_id) VALUES ('ÖDEMİŞ', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('ÖMERLİ', 57);
INSERT INTO Districts (district_name, city_id) VALUES ('ÖZALP', 78);
INSERT INTO Districts (district_name, city_id) VALUES ('ÖZVATAN', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('PALANDÖKEN', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('PALU', 29);
INSERT INTO Districts (district_name, city_id) VALUES ('PAMUKKALE', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('PAMUKOVA', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('PASİNLER', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('PATNOS', 4);
INSERT INTO Districts (district_name, city_id) VALUES ('PAYAS', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('PAZAR', 65);
INSERT INTO Districts (district_name, city_id) VALUES ('PAZARCIK', 42);
INSERT INTO Districts (district_name, city_id) VALUES ('PAZARLAR', 54);
INSERT INTO Districts (district_name, city_id) VALUES ('PAZARYERİ', 16);
INSERT INTO Districts (district_name, city_id) VALUES ('PAZARYOLU', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('PEHLİVANKÖY', 49);
INSERT INTO Districts (district_name, city_id) VALUES ('PENDİK', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('PERŞEMBE', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('PERTEK', 76);
INSERT INTO Districts (district_name, city_id) VALUES ('PERVARİ', 68);
INSERT INTO Districts (district_name, city_id) VALUES ('PINARBAŞI', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('PINARHİSAR', 49);
INSERT INTO Districts (district_name, city_id) VALUES ('PİRAZİZ', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('POLATELİ', 51);
INSERT INTO Districts (district_name, city_id) VALUES ('POLATLI', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('POSOF', 9);
INSERT INTO Districts (district_name, city_id) VALUES ('POZANTI', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('PURSAKLAR', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('PÜLÜMÜR', 76);
INSERT INTO Districts (district_name, city_id) VALUES ('PÜTÜRGE', 55);
INSERT INTO Districts (district_name, city_id) VALUES ('REFAHİYE', 30);
INSERT INTO Districts (district_name, city_id) VALUES ('REŞADİYE', 74);
INSERT INTO Districts (district_name, city_id) VALUES ('REYHANLI', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('SAFRANBOLU', 43);
INSERT INTO Districts (district_name, city_id) VALUES ('SAİMBEYLİ', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('SALIPAZARI', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('SALİHLİ', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('SAMANDAĞ', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('SAMSAT', 2);
INSERT INTO Districts (district_name, city_id) VALUES ('SANCAKTEPE', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('SANDIKLI', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('SAPANCA', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('SARAY', 73);
INSERT INTO Districts (district_name, city_id) VALUES ('SARAYDÜZÜ', 69);
INSERT INTO Districts (district_name, city_id) VALUES ('SARAYKENT', 80);
INSERT INTO Districts (district_name, city_id) VALUES ('SARAYKÖY', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('SARAYÖNÜ', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('SARICAKAYA', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('SARIÇAM', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('SARIGÖL', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('SARIKAMIŞ', 45);
INSERT INTO Districts (district_name, city_id) VALUES ('SARIKAYA', 80);
INSERT INTO Districts (district_name, city_id) VALUES ('SARIOĞLAN', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('SARIVELİLER', 44);
INSERT INTO Districts (district_name, city_id) VALUES ('SARIYAHŞİ', 5);
INSERT INTO Districts (district_name, city_id) VALUES ('SARIYER', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('SARIZ', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('SARUHANLI', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('SASON', 14);
INSERT INTO Districts (district_name, city_id) VALUES ('SAVAŞTEPE', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('SAVUR', 57);
INSERT INTO Districts (district_name, city_id) VALUES ('SEBEN', 19);
INSERT INTO Districts (district_name, city_id) VALUES ('SEFERİHİSAR', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('SELÇUK', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('SELÇUKLU', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('SELENDİ', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('SELİM', 45);
INSERT INTO Districts (district_name, city_id) VALUES ('SENİRKENT', 39);
INSERT INTO Districts (district_name, city_id) VALUES ('SERDİVAN', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('SERİK', 8);
INSERT INTO Districts (district_name, city_id) VALUES ('SERİNHİSAR', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('SEYDİKEMER', 59);
INSERT INTO Districts (district_name, city_id) VALUES ('SEYDİLER', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('SEYDİŞEHİR', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('SEYHAN', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('SEYİTGAZİ', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('SINDIRGI', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('SİLİFKE', 58);
INSERT INTO Districts (district_name, city_id) VALUES ('SİLİVRİ', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('SİLOPİ', 72);
INSERT INTO Districts (district_name, city_id) VALUES ('SİLVAN', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('SİMAV', 54);
INSERT INTO Districts (district_name, city_id) VALUES ('SİNANPAŞA', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('SİNCAN', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('SİNCİK', 2);
INSERT INTO Districts (district_name, city_id) VALUES ('SİVASLI', 77);
INSERT INTO Districts (district_name, city_id) VALUES ('SİVEREK', 71);
INSERT INTO Districts (district_name, city_id) VALUES ('SİVRİCE', 29);
INSERT INTO Districts (district_name, city_id) VALUES ('SİVRİHİSAR', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('SOLHAN', 17);
INSERT INTO Districts (district_name, city_id) VALUES ('SOMA', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('SORGUN', 80);
INSERT INTO Districts (district_name, city_id) VALUES ('SÖĞÜT', 16);
INSERT INTO Districts (district_name, city_id) VALUES ('SÖĞÜTLÜ', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('SÖKE', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('SULAKYURT', 48);
INSERT INTO Districts (district_name, city_id) VALUES ('SULTANBEYLİ', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('SULTANDAĞI', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('SULTANGAZİ', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('SULTANHANI', 5);
INSERT INTO Districts (district_name, city_id) VALUES ('SULTANHİSAR', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('SULUOVA', 6);
INSERT INTO Districts (district_name, city_id) VALUES ('SULUSARAY', 74);
INSERT INTO Districts (district_name, city_id) VALUES ('SUMBAS', 64);
INSERT INTO Districts (district_name, city_id) VALUES ('SUNGURLU', 24);
INSERT INTO Districts (district_name, city_id) VALUES ('SUR', 26);
INSERT INTO Districts (district_name, city_id) VALUES ('SURUÇ', 71);
INSERT INTO Districts (district_name, city_id) VALUES ('SUSURLUK', 12);
INSERT INTO Districts (district_name, city_id) VALUES ('SUSUZ', 45);
INSERT INTO Districts (district_name, city_id) VALUES ('SUŞEHRİ', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('SÜLEYMANPAŞA', 73);
INSERT INTO Districts (district_name, city_id) VALUES ('SÜLOĞLU', 28);
INSERT INTO Districts (district_name, city_id) VALUES ('SÜRMENE', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('SÜTÇÜLER', 39);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞABANÖZÜ', 23);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞAHİNBEY', 33);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞALPAZARI', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞAPHANE', 54);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞARKIŞLA', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞARKİKARAAĞAÇ', 39);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞARKÖY', 73);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞAVŞAT', 10);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞEBİNKARAHİSAR', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞEFAATLİ', 80);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞEHİTKAMİL', 33);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞEHZADELER', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞEMDİNLİ', 36);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞENKAYA', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞENPAZAR', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞEREFLİKOÇHİSAR', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞİLE', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞİRAN', 35);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞİRVAN', 68);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞİŞLİ', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('ŞUHUT', 3);
INSERT INTO Districts (district_name, city_id) VALUES ('TALAS', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('TARAKLI', 66);
INSERT INTO Districts (district_name, city_id) VALUES ('TARSUS', 58);
INSERT INTO Districts (district_name, city_id) VALUES ('TAŞKENT', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('TAŞKÖPRÜ', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('TAŞLIÇAY', 4);
INSERT INTO Districts (district_name, city_id) VALUES ('TAŞOVA', 6);
INSERT INTO Districts (district_name, city_id) VALUES ('TATVAN', 18);
INSERT INTO Districts (district_name, city_id) VALUES ('TAVAS', 25);
INSERT INTO Districts (district_name, city_id) VALUES ('TAVŞANLI', 54);
INSERT INTO Districts (district_name, city_id) VALUES ('TEFENNİ', 20);
INSERT INTO Districts (district_name, city_id) VALUES ('TEKKEKÖY', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('TEKMAN', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('TEPEBAŞI', 32);
INSERT INTO Districts (district_name, city_id) VALUES ('TERCAN', 30);
INSERT INTO Districts (district_name, city_id) VALUES ('TERMAL', 79);
INSERT INTO Districts (district_name, city_id) VALUES ('TERME', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('TİLLO', 68);
INSERT INTO Districts (district_name, city_id) VALUES ('TİRE', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('TİREBOLU', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('TOMARZA', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('TONYA', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('TOPRAKKALE', 64);
INSERT INTO Districts (district_name, city_id) VALUES ('TORBALI', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('TOROSLAR', 58);
INSERT INTO Districts (district_name, city_id) VALUES ('TORTUM', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('TORUL', 35);
INSERT INTO Districts (district_name, city_id) VALUES ('TOSYA', 46);
INSERT INTO Districts (district_name, city_id) VALUES ('TUFANBEYLİ', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('TURGUTLU', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('TURHAL', 74);
INSERT INTO Districts (district_name, city_id) VALUES ('TUŞBA', 78);
INSERT INTO Districts (district_name, city_id) VALUES ('TUT', 2);
INSERT INTO Districts (district_name, city_id) VALUES ('TUTAK', 4);
INSERT INTO Districts (district_name, city_id) VALUES ('TUZLA', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('TUZLUCA', 38);
INSERT INTO Districts (district_name, city_id) VALUES ('TUZLUKÇU', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('TÜRKELİ', 69);
INSERT INTO Districts (district_name, city_id) VALUES ('TÜRKOĞLU', 42);
INSERT INTO Districts (district_name, city_id) VALUES ('UĞURLUDAĞ', 24);
INSERT INTO Districts (district_name, city_id) VALUES ('ULA', 59);
INSERT INTO Districts (district_name, city_id) VALUES ('ULAŞ', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('ULUBEY', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('ULUBORLU', 39);
INSERT INTO Districts (district_name, city_id) VALUES ('ULUDERE', 72);
INSERT INTO Districts (district_name, city_id) VALUES ('ULUKIŞLA', 62);
INSERT INTO Districts (district_name, city_id) VALUES ('ULUS', 13);
INSERT INTO Districts (district_name, city_id) VALUES ('URLA', 41);
INSERT INTO Districts (district_name, city_id) VALUES ('UZUNDERE', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('UZUNKÖPRÜ', 28);
INSERT INTO Districts (district_name, city_id) VALUES ('ÜMRANİYE', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('ÜNYE', 63);
INSERT INTO Districts (district_name, city_id) VALUES ('ÜRGÜP', 61);
INSERT INTO Districts (district_name, city_id) VALUES ('ÜSKÜDAR', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('ÜZÜMLÜ', 30);
INSERT INTO Districts (district_name, city_id) VALUES ('VAKFIKEBİR', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('VARTO', 60);
INSERT INTO Districts (district_name, city_id) VALUES ('VEZİRKÖPRÜ', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('VİRANŞEHİR', 71);
INSERT INTO Districts (district_name, city_id) VALUES ('VİZE', 49);
INSERT INTO Districts (district_name, city_id) VALUES ('YAĞLIDERE', 34);
INSERT INTO Districts (district_name, city_id) VALUES ('YAHŞİHAN', 48);
INSERT INTO Districts (district_name, city_id) VALUES ('YAHYALI', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('YAKAKENT', 67);
INSERT INTO Districts (district_name, city_id) VALUES ('YAKUTİYE', 31);
INSERT INTO Districts (district_name, city_id) VALUES ('YALIHÜYÜK', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('YALVAÇ', 39);
INSERT INTO Districts (district_name, city_id) VALUES ('YAPRAKLI', 23);
INSERT INTO Districts (district_name, city_id) VALUES ('YATAĞAN', 59);
INSERT INTO Districts (district_name, city_id) VALUES ('YAVUZELİ', 33);
INSERT INTO Districts (district_name, city_id) VALUES ('YAYLADAĞI', 37);
INSERT INTO Districts (district_name, city_id) VALUES ('YAYLADERE', 17);
INSERT INTO Districts (district_name, city_id) VALUES ('YAZIHAN', 55);
INSERT INTO Districts (district_name, city_id) VALUES ('YEDİSU', 17);
INSERT INTO Districts (district_name, city_id) VALUES ('YENİCE', 22);
INSERT INTO Districts (district_name, city_id) VALUES ('YENİÇAĞA', 19);
INSERT INTO Districts (district_name, city_id) VALUES ('YENİFAKILI', 80);
INSERT INTO Districts (district_name, city_id) VALUES ('YENİMAHALLE', 7);
INSERT INTO Districts (district_name, city_id) VALUES ('YENİPAZAR', 11);
INSERT INTO Districts (district_name, city_id) VALUES ('YENİŞARBADEMLİ', 39);
INSERT INTO Districts (district_name, city_id) VALUES ('YENİŞEHİR', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('YERKÖY', 80);
INSERT INTO Districts (district_name, city_id) VALUES ('YEŞİLHİSAR', 47);
INSERT INTO Districts (district_name, city_id) VALUES ('YEŞİLLİ', 57);
INSERT INTO Districts (district_name, city_id) VALUES ('YEŞİLOVA', 20);
INSERT INTO Districts (district_name, city_id) VALUES ('YEŞİLYURT', 55);
INSERT INTO Districts (district_name, city_id) VALUES ('YIĞILCA', 27);
INSERT INTO Districts (district_name, city_id) VALUES ('YILDIRIM', 21);
INSERT INTO Districts (district_name, city_id) VALUES ('YILDIZELİ', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('YOMRA', 75);
INSERT INTO Districts (district_name, city_id) VALUES ('YUMURTALIK', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('YUNAK', 53);
INSERT INTO Districts (district_name, city_id) VALUES ('YUNUSEMRE', 56);
INSERT INTO Districts (district_name, city_id) VALUES ('YUSUFELİ', 10);
INSERT INTO Districts (district_name, city_id) VALUES ('YÜKSEKOVA', 36);
INSERT INTO Districts (district_name, city_id) VALUES ('YÜREĞİR', 1);
INSERT INTO Districts (district_name, city_id) VALUES ('ZARA', 70);
INSERT INTO Districts (district_name, city_id) VALUES ('ZEYTİNBURNU', 40);
INSERT INTO Districts (district_name, city_id) VALUES ('ZİLE', 74);

-- 15. Neighborhoods

INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKPINAR MAH', 39, 1720);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAŞPINAR MAH', 39, 1720);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MANSURLU MAH', 39, 1720);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SİNANPAŞA MAH', 39, 1720);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKÖREN MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOZTAHTA MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÜYÜKSOFULU MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CERİTLER MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DAİLER MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DARILIK MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DÖLEKLİ MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EBRİŞİM MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EĞNER MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GERDİBİ MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GİREĞİYENİKÖY MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKÇEKÖY MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KABASAKAL MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAHAN MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KICAK MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIŞLAK MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIZILDAM MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖKEZ MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖPRÜCÜK MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜP MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MADENLİ MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MAZILIK MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('POSYAĞBASAN MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TOPALLI MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UZUNKUYU MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YETİMLİ MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YÜKSEKÖREN MAH', 39, 1722);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ADAPINAR MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ADATEPE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AĞAÇLI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AĞAÇPINAR MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKDAM MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALTIGÖZBEKİRLİ MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALTIKARA MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYDINLAR MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AZİZLİ MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAŞÖREN MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BİRKENT MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BURHANLI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÜYÜKBURHANİYE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÜYÜKMANGIT MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CAMUZAĞILI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CEYHANBEKİRLİ MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAKALDERE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇATAKLI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇATALHÜYÜK MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇEVRETEPE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİÇEKLİ MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİFTLİKLER MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇOKÇAPINAR MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DAĞISTAN MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEĞİRMENDERE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEĞİRMENLİ MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DİKİLİTAŞ MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DOKUZTEKNE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DORUK MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DURHASANDEDE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DUTLUPINAR MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EKİNYAZI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ELMAGÖLÜ MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ERENLER MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜMÜRDÜLÜ MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜNDOĞAN MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜNLÜCE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HAMDİLLİ MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HAMİDİYE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HAMİTBEY MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HAMİTBEYBUCAĞI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('IRMAKLI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ISIRGANLI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İMRAN MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNCEYER MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSALI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAKAYALI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KILIÇKAYA MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIVRIKLI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIZILDERE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖPRÜLÜ MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖRKUYU MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖSRELİ MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KURTKULAĞI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KURTPINAR MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUZUCAK MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜKBURHANİYE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜKMANGIT MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MERCİMEK MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MERCİN MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('NARLIK MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('NAZIMBEY YENİKÖY MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAĞIRLAR MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAĞKAYA MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIBAHÇE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIMAZI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIMAZI SB MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SELİMİYE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SİRKELİ MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SOĞUKPINAR MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SOYSALLI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TATARLI MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TATLIKUYU MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TOKTAMIŞ MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TUMLU MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜÇDUTYEŞİLOVA MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('VEYSİYE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YALAK MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YELLİBEL MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLBAHÇE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLDAM MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YILANKALE MAH', 176, 1922);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALTIOCAK MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYDEMİROĞLU MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BELEDİYE EVLERİ MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOTA MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BURHANİYE MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÜYÜKKIRIM MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CİVANTAYAK MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EMEK MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESENTEPE MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH SULTAN MEHMET MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GAZİ OSMAN PAŞA MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNÖNÜ MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSTİKLAL MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KELEMETİ MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KONAKOĞLU MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KORUKLU MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜKKIRIM MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MİTHAT PAŞA MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MODERNEVLER MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MURADİYE MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('NAMIK KEMAL MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARISAKAL MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞAHİN ÖZBİLEN MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞEHİT HACI İBRAHİM MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ULUS MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YARSUAT MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZÜBEYDE HANIM MAH', 176, 1920);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MUSTAFABEYLİ MAH', 176, 1924);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BELEDİYE EVLERİ MAH', 240, 1360);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HUZUREVLERİ MAH', 240, 1360);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YÜZÜNCÜYIL MAH', 240, 1360);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEYAZEVLER MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOZCALAR MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DÖRTLER MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESENTEPE MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FADIL MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKKUYU MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜZELYALI MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KABASAKAL MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAHAN MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARSLILAR MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAŞOBA MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOCATEPE MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KURTTEPE MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜKÇINAR MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MAHFESIĞMAZ MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MEMİŞLİ MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖRCÜN MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PİRİLİ MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SÖĞÜTLÜ MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞAMBAYADI MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TOROS MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YURT MAH', 240, 1170);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SALBAŞ ESENTEPE MAH', 240, 1780);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKKAYA MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKOLUK MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAĞDATLI MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAHÇECİK MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇANDIRLAR MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇONDU MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇÜRÜKLER MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEĞİRMENCİUŞAĞI MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GAFFARUŞAĞI MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GEDİKLİ MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖBELLİ MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜRÜMZE MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜZPINARI MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HIDIRUŞAĞI MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNCİRCİ MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KALEYÜZÜ MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAŞALTI MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYADİBİ MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIRIKUŞAĞI MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KISACIKLI MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIZILYER MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOÇYAZI MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KONAKKURAN MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOVUKÇINAR MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MANSURLU MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MUSALAR MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OLUCAK MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORMANCIK MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTAKÖY MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORUÇLU MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PAŞALI MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SÜPHANDERE MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞAHMURATLI MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TENKERLİ MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TOKMANAKLI MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TORTULU MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UĞURLUBAĞ MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAYLAPINAR MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEREBAKAN MAH', 340, 1662);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BELENKÖY MAH', 340, 1660);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKÇELİ MAH', 340, 1660);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSLAM MAH', 340, 1660);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARACAOĞLAN MAH', 340, 1660);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARACAUŞAĞI MAH', 340, 1660);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAZANCI MAH', 340, 1660);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KEKLİKÇİ MAH', 340, 1660);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SÜLEMİŞLİ MAH', 340, 1660);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİL DÜŞMÜŞ MAH', 340, 1660);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ADALET MAH', 453, 1700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH', 453, 1700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH', 453, 1700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH', 453, 1700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MENTEŞ MAH', 453, 1700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TUNA MAH', 453, 1700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AĞZIKARACA MAH', 453, 1702);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALAYBEYİ MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİLER MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYVALI MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CAMİLİ MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇÖRTEN MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DANACILI MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACIHASANLI MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOYUNEVİ MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MALIHIDIRLI MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OTLUK MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PEKMEZCİ MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAYCA MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAYGEÇİT MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SEVİNÇLİ MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SOKUTAŞ MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('UFACIKÖREN MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ULUÇINAR MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÜÇTEPE MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAZITEPE MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİEVLER MAH', 1702, 453);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇALI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKTAŞ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALTINOVA MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIBELEMEDİK MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIYÖRÜKLER MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYAKKIF MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BARAKDAĞI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAŞKIF MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEKİRLİ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEYDEMİR MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOLACALI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BUCAK MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAKALLI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇATALAN MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇECELİ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇEVLİK MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇOCUKLAR MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇORLU MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇUKUR MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEMİRÇİT MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÖŞEKEVİ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DURAK MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EĞLENCE MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EMELCİK MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ETEKLİ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FETTAHLI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FİLİKLİ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GİLDİRLİ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖKHASANLI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜLÜŞLÜ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜVENÇ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACILI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACIMUSALI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KALEDAĞI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAPIKAYA MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAHASANLI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAKILIÇ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAKUYU MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAPINAR MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIRALAN MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIRIKLI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOCAVELİLER MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖRÜKLÜ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUŞCUSOFULU MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUYUCU MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUZGUN MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MARAŞLI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MERKEZBOZTAHTA MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MURTÇUKURU MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NERGİZLİK MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NUHLU MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖMERLİ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SADIKALİ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARIMEHMETLİ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAYPINAR MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SELAMPINAR MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TATIK MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TOPAKTAŞ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TOPKARALI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TORUNSOLAKLI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TÜMENLİ MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAZIBAŞI MAH', 1770, 495);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ADALI MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATAKÖY MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇE MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEBELİ MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAĞŞIRLI MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAKIRÖREN MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAVUŞLU MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİMELİ MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇUKURKAMIŞ MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAMLAPINAR MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEVELİÖREN MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOLAPLI MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖLKAYA MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACIHASAN MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HASIRAĞACI MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HELVACI MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNNEPLİHÜYÜĞÜ MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSAHACILI MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAPI MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAGÖÇER MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARATAŞ MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARŞIYAKA MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEMALİYE MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KESİK MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIRHASAN MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIZILTAHTA MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KİREMİTLİ MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MELETMEZ MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ORTA MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OYMAKLI MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARIMSAK MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SİRKENLİ MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TABAKLAR MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TABUR MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TERLİKSİZ MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TOPRAKLI MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TUZKUYUSU MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TUZLA MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YASSIVEREN MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEMİŞLİ MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİMURAT MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YÜZBAŞI MAH', 1900, 505);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GAZİ MAH', 1555, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACIBEYLİ MAH', 1555, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ACARMANTAŞ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKARCA MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇALIUŞAĞI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKDAM MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKKAYA MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALAPINAR MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ANDIL MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ARSLANLI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYDIN MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYŞEHOCA MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞÖZÜ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞTEPE MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOZTAHTA MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BUCAK MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BULDUKLU MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMDERE MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMLARCA MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇANDIK MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇELENUŞAĞI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇOBANPINARI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇOKAK MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇUKURÖREN MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇULLUUŞAĞI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇÜRÜKLÜ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAMYERİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DİKİLİTAŞ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DİLEKKAYA MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOĞANALANI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DURALUŞAĞI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DURMUŞLU MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÜZAĞAÇ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ENİZÇAKIRI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ERGENUŞAĞI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİKABASAKAL MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİMANTAŞ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FAYDALI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FERHATLI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GEDİKLİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖKÇEYOL MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖKGÖZ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖRBEYAZ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜNERİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACIMİRZALI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAMAM MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ILICA MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('IŞIKKAYA MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('IŞIKLI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İDEMKÖY MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KABAKTEPE MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAHVELİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KALKUMAÇ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAPIKAYA MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARABUCAK MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARACAÖREN MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAHAMZALI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARANEBİLİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEMERKÖY MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIBRISLAR MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIZILLAR MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIZLARSEKİSİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖSELİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUYTUCAK MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUYUBELİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUYULUK MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MAHYALAR MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MARANKEÇİLİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MİNNETLİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ORÇAN MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ORUÇLU MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖRENDERE MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖZBAŞI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PEKMEZCİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('POSTKABASAKAL MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SALMANLI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞERİFLİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TEPECİKÖREN MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TUFANLI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TURGUTLU MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TURUNÇLU MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('VELİCANLI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YANALERİK MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YASSIÇALI MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKÖY MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARIKEÇİLİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YÜKSEKÖREN MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZERDALİ MAH', 1502, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AĞLIBOĞAZ MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ARSLANPAŞA MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞLAR MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇANAKLI MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACIUŞAĞI MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARACAOĞLAN MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MAHMUTLU MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞEVKİYE MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAŞ MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAVŞANTEPE MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TUFANPAŞA MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TÜRKELİ MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('VARSAKLAR MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YARIMOĞLU MAH', 1500, 563);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇATEKİR MAH', 1490, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALPU MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞÇIBEKİRLİ MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BELEMEDİK MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMLIBEL MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAĞDİBİ MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİKONACIK MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FINDIKLI MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖKBEZ MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAMİDİYE MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAMIŞLI MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAKIŞLAKÇI MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖMERLİ MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAĞLITAŞ MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAZICAK MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKONACIK MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARIBELEMEDİK MAH', 1472, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 1470, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSTİKLAL MAH', 1470, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KURTULUŞ MAH', 1470, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZAFER MAH', 1470, 691);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKSAAĞAÇ MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AVCIPINARI MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYVACIK MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEYPINARI MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURLU MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇATAK MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇERALAN MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇORAK MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEĞİRMENCİUŞAĞI MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EYÜPLÜ MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖKMENLER MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜRLEŞEN MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HALİLBEYLİ MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HİMMETLİ MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSLAM MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KANDİLLİ MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAPAKLIKUYU MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAKUYU MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIZILAĞAÇ MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MAHMUTLU MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NALTAŞ MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NARLIDERE MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TOPALLAR MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TÜLÜ MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YARDİBİ MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKÖY MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLBAĞLAR MAH', 1740, 699);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ACIDEREOSB MAH', 1410, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEYCELİ MAH', 1460, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BURUK CUMHURİYET MAH', 1460, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSTİKLAL MAH', 1460, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SOFUDEDE MAH', 1460, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRRİYET MAH', 1340, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEMALPAŞA MAH', 1340, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH', 1340, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ACIDERE MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AFLAK MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKKUYU MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AVCILAR MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYDINYURDU MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYVALI MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAYRAM HACILI MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOYNUYOĞUN MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOZTEPE MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BÜYÜK BAKLALI MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CERENLİ MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CİHADİYE MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMLICA MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇARKIPARE MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAYLI MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇINARLI MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİÇEKLİ MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİRİŞGEDİĞİ MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAĞCI MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DUTLUCA MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EĞECİUŞAĞI MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ERTUĞRULGAZİ MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖKBUKET MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖZTEPE MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAKKIBEYLİ MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HASANBEYLİ MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HOCALLI MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAÖMERLİ MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAYUSUFLU MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARGAKEKEÇ MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARLIK MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAŞOBASI MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEPEZTEPE MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KILBAŞ MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KILIÇLI MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIZILKAŞ MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖSEFAKILI MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜÇÜKBAKLALI MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MALTEPE MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MENEKŞE MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MUSTAFALAR MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MÜMİNLİ MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OSMANGAZİ MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARIÇAM MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SULUCA MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TURUNÇLU MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÜNLÜCE MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAĞIZLAR MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YARIMCA MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİYAYLA MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YÜREKLİ MAH', 1790, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BALCALI MAH', 1250, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESENTEPE MAH', 1250, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜLTEPE MAH', 1250, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MEHMET AKİF ERSOY MAH', 1250, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ORHANGAZİ MAH', 1250, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('REMZİ OĞUZ ARIK MAH', 1250, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAHİNTEPE MAH', 1250, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAVUZ SULTAN SELİM MAH', 1250, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLTEPE MAH', 1250, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YILDIRIM BEYAZIT MAH', 1250, 713);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKKAPI MAH', 1040, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAĞLIOĞLU MAH', 1040, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AHMET REMZİ YÜREĞİR MAH', 1130, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DENİZLİ MAH', 1130, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KURTULUŞ MAH', 1130, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MİTHATPAŞA MAH', 1130, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAKARYA MAH', 1130, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EMEK MAH', 1080, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OVA MAH', 1080, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAKİRPAŞA MAH', 1080, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('UÇAK MAH', 1080, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYDINLAR MAH', 1190, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BARIŞ MAH', 1190, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FEVZİPAŞA MAH', 1190, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CEMALPAŞA MAH', 1120, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('REŞATBEY MAH', 1120, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜLBAHÇESİ MAH', 1050, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('2000 EVLER MAH', 1200, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇEŞEHİR MAH', 1200, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜRSELPAŞA MAH', 1200, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH', 1200, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HADIRLI MAH', 1365, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİDEDE MAH', 1020, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEŞOCAK MAH', 1020, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MESTANZADE MAH', 1020, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARIYAKUP MAH', 1020, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞEHİTDURAN MAH', 1020, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TÜRKOCAĞI MAH', 1020, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİBEY MAH', 1020, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇELİEVLER MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BÜYÜKÇILDIRIM MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BÜYÜKDİKİLİ MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CAMUZCU MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAPUTÇU MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DERVİŞLER MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÖRTAĞAÇ MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖKÇELER MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖLBAŞI MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAKUYU MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAYUSUFLU MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAYIŞLI MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOYUNCU MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖYLÜOĞLU MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUYUMCULAR MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜÇÜKÇILDIRIM MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MÜRSELOĞLU MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SALMANBEYLİ MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARIHUĞLAR MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SERİNEVLER MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YALMANLI MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİDAM MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YOLGEÇEN MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZEYTİNLİ MAH', 1355, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇINARLI MAH', 1060, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÖŞEME MAH', 1060, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HANEDAN MAH', 1060, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HURMALI MAH', 1060, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSTİKLAL MAH', 1060, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOCAVEZİR MAH', 1060, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KURUKÖPRÜ MAH', 1060, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAVAKLI MAH', 1430, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOZA MAH', 1430, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜÇÜKDİKİLİ MAH', 1430, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MEKAN MAH', 1430, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH', 1160, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PINAR MAH', 1160, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TELLİDERE MAH', 1160, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DUMLUPINAR MAH', 1070, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜLPINAR MAH', 1070, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MEYDAN MAH', 1070, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MİRZAÇELEBİ MAH', 1070, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLYUVA MAH', 1070, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BARBAROS MAH', 1030, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEY MAH', 1030, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAVUZLUBAHÇE MAH', 1030, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRRİYET MAH', 1030, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MIDIK MAH', 1030, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SUCUZADE MAH', 1030, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ONUR MAH', 1100, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLOBA MAH', 1100, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARASOKU MAH', 1010, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAYALIBAĞ MAH', 1010, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TEPEBAĞ MAH', 1010, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ULUCAMİİ MAH', 1010, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEMETEVLER MAH', 1180, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSMETPAŞA MAH', 1180, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NARLICA MAH', 1180, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLEVLER MAH', 1180, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARIHAMZALI MAH', 1110, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SÖĞÜTLÜ MAH', 1110, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİBARAJ MAH', 1150, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLYURT MAH', 1150, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GAZİPAŞA MAH', 1140, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NAMIK KEMAL MAH', 1140, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SÜMER MAH', 1140, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZİYAPAŞA MAH', 1140, 739);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇAL MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKPINAR MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYVAT MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOLATPINARI MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOZGÜNEY MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇATALÇAM MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇUKURKIŞLA MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAMLALI MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEMİROLUK MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOĞANBEYLİ MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOĞANLI MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ELEMANLI MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EVCİ MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATMAKUYU MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜZELİM MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HANYERİ MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İĞDEBEL MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARSAVRAN MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAYAPINAR MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAYARCIK MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KİRAZLIYURT MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOCCAĞIZ MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ORTAKÖY MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PEKMEZLİ MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PINARLAR MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAR MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAŞPINAR MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TOZLU MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAMANLI MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLOVA MAH', 1642, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 1640, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSTİKLAL MAH', 1640, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİCAMİ MAH', 1640, 828);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ASMALI MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYVALIK MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEMİRTAŞ MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEVECİUŞAĞI MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖLOVASI MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAMZALI MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAYLAZLI MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KALDIRIM MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KALEMLİ MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KESMEBURUN MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIRMIZIDAM MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUZUPINARI MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NARLIÖREN MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SUGÖZÜ MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKÖY MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLKÖY MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUMURTALIK MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZEYTİNBELİ MAH', 1682, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKDENİZ MAH', 1680, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKYUVA MAH', 1680, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYAS MAH', 1680, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEVRİŞİYE MAH', 1680, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEMALPAŞA MAH', 1680, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖREN MAH', 1680, 890);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAKAPINAR MAH', 1358, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ABDİOĞLU CUMHURİYET MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AĞZIBÜYÜK MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKARCALI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKDAM MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKPINAR MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİHOCALI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYDINCIK MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BELÖREN MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEYKÖY MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BÜYÜKKAPILI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CAMİLİ MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CIRIK MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CİNE MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAĞIRKANLI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇATALPINAR MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇELEMLİ MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇOTLU MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DANIŞMENT MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEDEPINARI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DENİZKUYUSU MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÜZCE MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EĞRİAĞAÇ MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESENLER MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GEÇİTLİ CUMHURİYET MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖKÇELİ MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜMÜŞYAZI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜVELOĞLU MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACIALİ MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAVRANİYE MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HEREKLİ MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('IRMAKBAŞI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KADIKÖY MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAMIŞLI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAAHMETLİ MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAŞLICA MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAYARLI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖKLÜCE MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖPRÜGÖZÜ MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜTÜKLÜ MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖZLER MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PAŞAKÖY MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PEKMEZLİ MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAĞDIÇLI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAKIZLI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAZAK MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAHİNAĞA MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞEYHMURAT MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAŞÇI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('VAYVAYLI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAHŞİLER MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YALNIZCA MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİCE MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKÖY MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YERDELEN MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARIÇİÇEKLİ MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUSOĞLU CUMHURİYET MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUSOĞLU HÜRRİYET MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZAĞARLI MAH', 1415, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('19 MAYIS MAH', 1285, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ANADOLU MAH', 1285, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇELİEVLER MAH', 1285, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAŞAK MAH', 1285, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEDE KORKUT MAH', 1285, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜZELEVLER MAH', 1285, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOZA MAH', 1285, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('LEVENT MAH', 1285, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİL BAĞLAR MAH', 1285, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUS EMRE MAH', 1285, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOĞANKENT BAHÇELİEVLER MAH', 1370, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOĞANKENT CUMHURİYET MAH', 1370, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOĞANKENT KIŞLA MAH', 1370, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GAZİPAŞA MAH', 1370, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATATÜRK MAH', 1375, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAVUTLU MAH', 1375, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SOLAKLI CUMHURİYET MAH', 1375, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SOLAKLI HÜRRİYET MAH', 1375, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜZEL CUMHURİYET MAH', 1965, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATAKENT MAH', 1260, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMLIBEL MAH', 1260, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DERVİŞLER MAH', 1260, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KİREMİTHANE MAH', 1260, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MUTLU MAH', 1260, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞEHİT ERKUT AKBAY MAH', 1260, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAHSİLLİ MAH', 1260, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ULUBATLI HASAN MAH', 1260, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 1280, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜNEŞLİ MAH', 1280, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAZIM KARABEKİR MAH', 1230, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIŞLA MAH', 1230, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖPRÜLÜ MAH', 1230, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİDOĞAN MAH', 1263, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DADALOĞLU MAH', 1240, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARACAOĞLAN MAH', 1240, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('P.T.T MAH', 1240, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SELAHATTİN EYYUBİ MAH', 1240, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SERİNEVLER MAH', 1240, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİ MİSİS MAH', 1350, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKDENİZ MAH', 1291, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAYDAROĞLU MAH', 1291, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SEYHAN MAH', 1291, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAMAÇLI MAH', 1291, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKINCILAR MAH', 1220, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖZGÜR MAH', 1220, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARIÇAM MAH', 1220, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SİNANPAŞA MAH', 1220, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAVUZLAR MAH', 1220, 895);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('15 TEMMUZ ŞEHİTLER MAH', 2300, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞISARHAN MAH', 2300, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CİRİT MEYDANI MAH', 2300, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAT MAH', 2300, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DUMLUPINAR MAH', 2300, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ERDEMOĞLU MAH', 2300, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAYMAKAM HASAN TÜTÜN MAH', 2300, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KORUPINAR MAH', 2300, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OYALI MAH', 2300, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PINARBAŞI MAH', 2300, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PINARBAŞIOSB MAH', 2300, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ BESNİ MAH', 2300, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARI SARHAN MAH', 2300, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ABIMISTIK MAH (ÇAKIRHÜYÜK BELDESİ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKDURAK KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKKUYU KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKTEPE KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALIÇLI KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOYBEYPINARI MAH (ÇAKIRHÜYÜK BELDESİ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CAMUŞÇU KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAKMAK MAH (AKDURAK KÖYÜ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇOMAK KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖNDERME MAH (KONUKLU KÖYÜ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HASANLI KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÖYÜK MAH (ÇOMAK KÖYÜ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İZNİK MAH (KONUKLU KÖYÜ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İZOLLU KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARGALI KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARNAÇIK MAH (KUTLUCA KÖYÜ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KONUKLU KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖPRÜBAŞI MAH (ÇAKIRHÜYÜK BELDESİ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUTLUCA KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('LEVZİN MAH (ÇAKIRHÜYÜK BELDESİ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARIÇİÇEK MAH (KONUKLU KÖYÜ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TİLEYLİ MAH (YAZIBEYDİLİ KÖYÜ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAZIBEYDİLİ KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKURUGÖL MAH (AKDURAK KÖYÜ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLOVA MAH (ÇAKIRHÜYÜK BELDESİ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YOLDÜZÜ KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARISÖĞÜTLÜ KÖYÜ', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUSUFAĞA MAH (AKKUYU KÖYÜ)', 2320, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATATÜRK MAH (KESMETEPE BELDESİ)', 2346, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAKMAK MAH (KESMETEPE BELDESİ)', 2346, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (KESMETEPE BELDESİ)', 2346, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNCE MAH (KESMETEPE BELDESİ)', 2346, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNÖNÜ MAH (KESMETEPE BELDESİ)', 2346, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TURGUT ÖZAL MAH (KESMETEPE BELDESİ)', 2346, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞISÖĞÜTLÜ MAH (KÖSECELİ BELDESİ)', 2348, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (KÖSECELİ BELDESİ)', 2348, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRRİYET MAH (KÖSECELİ BELDESİ)', 2348, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TETİRLİ MAH (KÖSECELİ BELDESİ)', 2348, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AHURİ MAH (SARIKAYA KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKDOĞANLAR MAH (BERETE KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKPINAR KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKYAZI KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİ ERDEMOĞLU MAH', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIÇÖPLÜ KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATATÜRK MAH (SUGÖZÜ KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATATÜRK MAH (ÜÇGÖZ KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHRİ MAH (BAHRİ KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BALKA MAH (BEŞYOL KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEREKETLİ KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEŞKOZ KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEŞYOL KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BONCUK KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BURUNÇAYIR KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (SARIYAPRAK KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURRİYET MAH (ÜÇGÖZ KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMLICA KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAYKAYA KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİLBOĞAZ KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇORMAN MAH (TOKAR KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇÖPLÜKIŞLA MAH (YENİKÖY KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DELİSEKİ MAH (ÇAMLICA KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DİKİLİTAŞ KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÖRTYOL KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EĞERLİ KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (SARIYAPRAK KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GEÇİTLİ KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜNEYKAŞ KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACIHALİL KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HARMANARDI KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÖYÜK MAH (BEŞYOL KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNÖNÜ MAH (SUGÖZÜ KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNÖNÜ MAH (ÜÇGÖZ KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAAĞAÇ MAH (YELBASTI KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAGEÇİ MAH (BEŞYOL KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAGÜVEÇ KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEPİRCE MAH (YAZIKARAKUYU KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KESECİK KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIZILHİSAR KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIZILİN KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIZILKAYA KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIZILPINAR KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOCAPİRLİ MAH (EĞERLİ KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KURUGÖL KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUZEVLERİ KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NOHUDANLI MAH (HACIHALİL KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OYRATLI KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖREN KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARIKAYA KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SATILUŞAĞI MAH (OYRATLI KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAYÖREN KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SUMAKLI GÜZELEVLER MAH (KURUGÖL KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAŞLIYAZI KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TOKAR KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TOKLU KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TOPKAPI KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÜRECİK MAH (YELBASTI KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAYIKLI KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAZIBADEMCE MAH (YAZIKARAKUYU KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAZIKARAKUYU KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAZIYURDU MAH (BERETE KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YELBASTI KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEMLİCE MAH (KESECİK KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKÖY KÖYÜ', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLOVA MAH (ÖREN KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARI HOZGİŞİ MAH (YENİKÖY KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZORMAĞARA MAH (YENİKÖY KÖYÜ)', 2302, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ADALET MAH (SUVARLI BELDESİ)', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BÜYÜKOBA MAH (KARALAR KÖYÜ)', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (SUVARLI BELDESİ)', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAKALLI MAH (ÇORAK KÖYÜ)', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAKALLI MAH (KARALAR KÖYÜ)', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAYIROBASI MAH (KARALAR KÖYÜ)', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇORAK KÖYÜ', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRRİYET MAH (SUVARLI BELDESİ)', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARALAR KÖYÜ', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIRAÇHAYMA MAH (PINARBAŞI KÖYÜ)', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖRTANLI MAH (PINARBAŞI KÖYÜ)', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PINARBAŞI KÖYÜ', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TUTLUPINAR MAH (PINARBAŞI KÖYÜ)', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('UZUNKUYU KÖYÜ', 2330, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKDERE MAH (BAŞLI KÖYÜ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKKUYU MAH (ATMALI KÖYÜ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİŞAR KÖYÜ', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATMALI KÖYÜ', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAŞLI KÖYÜ', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAYAT MAH (ŞAMBAYAT BELDESİ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEŞİR MAH (TEKAĞAÇ KÖYÜ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOSTANCIK MAH (TEKAĞAÇ KÖYÜ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (ŞAMBAYAT BELDESİ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOĞANKAYA KÖYÜ', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (ŞAMBAYAT BELDESİ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜMÜŞLÜ KÖYÜ', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNÖNÜ MAH (ŞAMBAYAT BELDESİ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAHALİL MAH (BAŞLI KÖYÜ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KILIÇLI MAH (BAŞLI KÖYÜ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIZILCAMUSTAFA MAH (BAŞLI KÖYÜ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MENDERES MAH (ŞAMBAYAT BELDESİ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖZBAĞLAR MAH (ATMALI KÖYÜ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TEKAĞAÇ KÖYÜ', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAZIYALANGOZ MAH (TEKAĞAÇ KÖYÜ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH (ŞAMBAYAT BELDESİ)', 2340, 132);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇELİ EVLER MAH', 2600, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAŞPINAR MAH', 2600, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CAMİ MAH', 2600, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 2600, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH', 2600, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MAHMUT NEDİM ÖKMEN MAH', 2600, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MERKEZ MAH', 2600, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUS EMRE MAH', 2600, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZAFER MAH', 2600, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKSU KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİGÜR MAH (GÖLBAĞI KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİSAHA KÜMESİ MAH (MUTLU KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALTINTAŞ KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ASKERHAN KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇE KÜMESİ MAH (MUTLU KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOZGEDİK KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CEMOLAR MAH (KALECİK KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMPINAR KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAT MAH (ŞEREFHAN KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEĞİRMEN BAŞI MAH (ÇAMPINAR KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEVEBOYNU MAH (AKSU KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÜZAĞAÇ MAH (BOZGEDİK KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESENLİ MAH (ŞEREFHAN KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİKÖY MAH (RECEP KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİKÖY MAH (YEŞİLYAYLA KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖLBAĞI KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAMİK MAH (KÖSEUŞAĞI KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HOVİRGE YAYLASI MAH (MUTLU KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNCİRLİ KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KALE MAH (YEŞİLTEPE KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KALECİK KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAÇAYIR KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAGÖL KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARŞI KÜME EVLERİ MAH (MUTLU KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIŞIKAN YAYLASI MAH (MUTLU KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KORUCAK KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOYUNCULAR MAH (GÖLBAĞI KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖSEUŞAĞI KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MERKEZ KÜMESİ MAH (MUTLU KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('RECEP KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SOĞUKPINAR MAH (KORUCAK KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAHVERDİ ESKİKÖY MAH (RECEP KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAHVERDİ MAH (RECEP KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAHVERDİ YAYLAEVLERİ MAH (RECEP KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞEREFHAN KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAĞIZATLI KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAĞMURLU MAH (KÖSEUŞAĞI KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAYLA EVLERİ MAH (ÇAMPINAR KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAYLAEVLERİ MAH (ASKERHAN KÖYÜ)', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLOVA KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLTEPE KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLYAYLA KÖYÜ', 2602, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKTAŞ MAH (PINARBAŞI BELDESİ)', 2610, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BALIKBURUN MAH (PINARBAŞI BELDESİ)', 2610, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CAMİ MAH (PINARBAŞI BELDESİ)', 2610, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMLIYAYLA MAH (PINARBAŞI BELDESİ)', 2610, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACILAR MAH (PINARBAŞI BELDESİ)', 2610, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNÖNÜ MAH (PINARBAŞI BELDESİ)', 2610, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAYA MAH (PINARBAŞI BELDESİ)', 2610, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KURUDERE MAH (PINARBAŞI BELDESİ)', 2610, 217);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH', 2700, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KELEŞAN MAH', 2700, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MERKEZ MAH', 2700, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH', 2700, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AÇMA KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AĞAÇLI KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKSAN MAH (YAYLADALI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALDUŞ MAH (KONACIK KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ARTİLAN MAH (DAĞDEVİREN KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞI CİMİK MAH (GÜZELSU KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIDAĞLICA KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYDINLIK MAH (ZUĞUR MAH) (DALLARCA KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞLAR MAH (GEÇİTLİ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAYİK MAH (OYMAKLI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAZİK MAH (YAYLADALI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEKİRAN MAH (KILIÇ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEMİRGO MAH (KONACIK KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEŞGÖZE KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEYBOSTAN KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BİLDEŞ MAH (DEMİRTAŞ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BİRCAN MAH (GÜNGÖRMÜŞ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BODİN MAH (GÜNDOĞDU KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BUDAKLI KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CEVİZPINAR KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMİÇİ KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMİK MAH (SEYİTMAHMUT KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAVGÜR MAH (ÇOBANPINARI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAVUŞ MAH (SİVER MAH) (SUTEPE KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇEMAN MAH (DAĞDEVİREN KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇET MAH (ÇAMİÇİ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇETİN MAH (KÜTÜKLÜ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇINARIK MAH (YUKARIDAĞLICA KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇINARLIK MAH (GÜMÜŞKAŞIK KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİFTHİSAR KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇOBANPINARI KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇUKURCA MAH (AÇMA KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAĞDEVİREN KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DALLARCA KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEMİRTAŞ KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DESPAL MAH (YAĞMURLU KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEYRO MAH (KONACIK KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOLORİZAN MAH (GÖLYURT KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÖŞNİK MAH (KAŞYAZI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ERDOĞMUŞ MAH (BALEYREK MAH) (DALLARCA KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİKENT KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GEÇİTLİ KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GELEBAZ MAH (KILIÇ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖLANİ MAH (ONEVLER KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖLYURT KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖME-İ MASUR MAH (GÖLYURT KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖMÜK MAH (AĞAÇLI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖNAN KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖZPINAR KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜDAYİK MAH (GÖNAN KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜMÜŞKAŞIK KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜNDOĞDU KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜNEYPINAR MAH (YENİBARDAK KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜNGÖRMÜŞ KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜRGENLİ KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜZELSU KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HANBERTİ MAH (BURÇAKLI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HARMUZAN MAH (GÖZPINAR KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HELEZİN MAH (GÖLYURT KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HEVENK MAH (ESKİKENT KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HIRCIK MAH (GÜRGENLİ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HİLİM MAH (GÖNAN KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HORSAİK MAH (DAĞDEVİREN KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜSÜKAN MAH (GÖLYURT KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAF MAH (GEÇİTLİ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAĞINDAK MAH (GÖZPINAR KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KALECİK MAH (KILIÇ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARACAVİRAN MAH (GÜZELSU KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARDİGİN MAH (YAYLADALI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARUK MAH (KAŞYAZI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAŞYAZI KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEFERGE MAH (KORULU KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KELAZİN MAH (YAĞMURLU KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KERZEL MAH (OYMAKLI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KERZEL MAH (YAĞMURLU KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KESERTAŞ KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEVİRSOR MAH (BURÇAKLI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KILIÇ KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIRINGÖL MAH (YENİBARDAK KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIRMIZITARLA MAH (YENİBARDAK KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIZZIK MAH (BURÇAKLI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KİŞİK MAH (KILIÇ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KONACIK KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KORULU KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOŞARLAR KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOZAĞAÇI MAH (ONEVLER KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖKLÜCE KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖRTİGİN MAH (BURÇAKLI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜTÜKLÜ KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MARONİ MAH (SARAYCIK KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MERKEZ MAH (BURÇAKLI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MEZRA MAH (GÜRGENLİ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MIRZA MAH (DALLARCA KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NAKIŞLI KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NİNYAT MAH (GÖZPINAR KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ONEVLER KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ORTACA KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OYMAKLI KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖMERAN MAH (GÜNGÖRMÜŞ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖZKURAN MAH (NAKIŞLI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PAMULUK MAH (GÜMÜŞKAŞIK KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PANKİN MAH (BEYBOSTAN KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PEMİCE MAH (YENİBARDAK KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PINARBAŞI MAH (GÖLYURT KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PİYAMLİ MAH (SUTEPE KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PUPAR MAH (OYMAKLI KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SALAVAT MAH (BEŞGÖZE KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAMAK MAH (ÇAMİÇİ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SANKOSİ MAH (KORULU KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARAYCIK KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SENGETO MAH (CEVİZPINAR KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SEYİTMAHMUT KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SOFYAN MAH (KOŞARLAR KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SORİK MAH (DEMİRTAŞ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SUTEPE KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAKOL MAH (YENİBARDAK KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAMANİ MAH (GÜZELSU KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAVİ MAH (GÖLYURT KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞENGÜL MAH (ÇAMİÇİ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TANKÜL MAH (GÖLYURT KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TARAKSU MAH (ÜÇKAYA KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TIRKIDİN MAH (GÜRGENLİ KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TIRŞİK MAH (SEYİTMAHMUT KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TİLLAK MAH (BEŞGÖZE KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÜÇKAYA KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('VANKÖK MAH (GÖLYURT KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAĞMURLU KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAYLADALI KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİBARDAK KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLYURT KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARIDAĞLICA KÖYÜ', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUVACIK MAH (AÇMA KÖYÜ)', 2702, 359);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ASFALT MAH (BALKAR BELDESİ)', 2530, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (BALKAR BELDESİ)', 2530, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (BELÖREN BELDESİ)', 2540, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MERKEZ MAH (BELÖREN BELDESİ)', 2540, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ASFALT MAH', 2500, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH', 2500, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRRİYET MAH', 2500, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KURUGEÇİT MAH', 2500, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MİMAR SİNAN MAH', 2500, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAVUZ SELİM MAH', 2500, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH', 2500, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (HARMANLI BELDESİ)', 2520, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAKMAK MAH (HARMANLI BELDESİ)', 2520, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KALEMKAS MAH (HARMANLI BELDESİ)', 2520, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH (HARMANLI BELDESİ)', 2520, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇABEL KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇAKAYA KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKTOPRAK KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİKAYA MAH (AKÇAKAYA KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ARPATARLASI MAH (KARABAHŞILI KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIAZAPLI KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIKARAKUYU KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞINASIRLI KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞLARBAŞI KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BALLIK MAH (SAVRAN KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEŞEVLER MAH (HAYDARLI KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEŞEVLER MAH (KARABAHŞILI KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CANKARA KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CERRAHOBASI MAH (HAYDARLI KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CİVKUR MAH (KÖSÜKLÜ KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇATALAĞAÇ KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇATALTEPE KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAYIR MAH (KARABAHŞILI KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇELİKKÖY KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇELİKKÖYOSB MAH (ÇELİKKÖY KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DURAK MAH (ÇATALAĞAÇ KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DURAK MAH (ÇELİKKÖY KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GEDİKLİ KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACILAR KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAMZALAR KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HASANLAR MAH (HAMZALAR KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAYDARLI KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSTASYON MAH (ÇELİKKÖY KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KANDİL MAH (HAMZALAR KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARABAHŞILI KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARABURUN KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAÇUKUR MAH (KARABAHŞILI KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAHASAN MAH (ÇATALTEPE KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEÇİBAŞI MAH (MEYDAN KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KERALMAZ MAH (ÇATALAĞAÇ KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEZBİ MAH (SAVRAN KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖRPINARI MAH (MEYDAN KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖSÜKLÜ KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖTEL MAH (KARABAHŞILI KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUMLU MEZRASI MAH (AKTOPRAK KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KURUCUOVA MAH (SAVRAN KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜÇÜKÖREN KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MEYDAN KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MIÇOLAR MAH (ÇATALTEPE KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OZAN KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖRENLİ KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAVRAN KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SERPENOLAR MAH (HAYDARLI KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SIRIKLI MAH (HAMZALAR KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SORKUN MAH (HAYDARLI KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SÖĞÜTLÜ MAH (KÜÇÜKÖREN KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TECİRLİ MAH (ÇATALTEPE KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('UÇARLAR MAH (HAMZALAR KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YARBAŞI KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAYLACIK KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKENT MAH', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKÖY KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLOVA KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YIKICAK MAH (MEYDAN KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YOLBAĞI MAH (ÇATALTEPE KÖYÜ)', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARIÇÖPLÜ KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARIKARAKUYU KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARINASIRLI KÖYÜ', 2502, 367);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ACOĞLU MAH (GELDİBULDU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ADALI KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKALIN KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇAKENT MAH (OLUKLU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇAVEREN MAH (İKİZCE KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKINCILAR ATATÜRK MAH (AKINCILAR BELDESİ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKTAŞ KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKYILDIZ KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞI TUĞLU MAH (TUĞLU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATAKÖY MAH (ULUPINAR KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇE MAH (GELDİBULDU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAKACAK MAH (ULUPINAR KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BERBANOS MAH (TUĞLU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEŞİKLİ KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BUHARA MAH (GÖÇERİ KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BÜYÜKGÖZ MAH (OLUKLU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMLICA KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMLICA MAH (AKINCILAR BELDESİ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAMÜSTÜ MAH (ESKİTAŞ KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DARDAĞAN KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DİKENLİ KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOĞANTEPE MAH (OLUKLU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ELBEYİ KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ELMALI TUĞLU MAH (TUĞLU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESENTEPE MAH (DARDAĞAN KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİTAŞ KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GELDİBULDU KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GEVAZİ MAH (TUĞLU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖÇERİ KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜDÜLGE KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜLAHMET MAH (TUĞLU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HASKÖY KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HİNİÇ MAH (ADALI KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜSEYİNLİ MAH (YENİKUŞAK KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İKİZCE KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAMAĞARA MAH (GÜDÜLGE KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARATAŞ MAH (KARATAŞ KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARMİTLİ MAH (TUĞLU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KILAVUZ MAH (AKINCILAR BELDESİ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜÇÜK TOMAK MAH (İKİZCE KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MAHMUDİYE MAH (DARDAĞAN KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MENZİL KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MUSTAFAÇAYIR MAH (ULUPINAR KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NERGİZTEPE MAH (HASKÖY KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OLUKLU KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PINARYOLU MAH (İKİZCE KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SIRATUT MAH (ADALI KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SOFYA MAH (DARDAĞAN KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SOĞUKSU MAH (AKINCILAR BELDESİ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SÜSÜK MAH (GÜDÜLGE KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TERİYAN MAH (OLUKLU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TETA MAH (OLUKLU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TİLBE MAH (GELDİBULDU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TUĞLU KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TÜREŞİK MAH (GÜDÜLGE KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ULUPINAR KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKUŞAK KÖYÜ', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLKAYA MAH (YEŞİLKAYA KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLTEPE MAH (OLUKLU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YOLÇATI MAH (OLUKLU KÖYÜ)', 2450, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATATÜRK MAH (BÖLÜKYAYLA BELDESİ)', 2440, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (BÖLÜKYAYLA BELDESİ)', 2440, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (BÖLÜKYAYLA BELDESİ)', 2440, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KANGÜLÜ MAH (BÖLÜKYAYLA BELDESİ)', 2440, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATATÜRK MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞLAR MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAYRAKTAR MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CAMİ MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇOBANLI MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FIRAT MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GAZİ MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GİRNE MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRRİYET MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARŞIYAKA MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MENDERES MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞEYHBABA MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TURGUT ÖZAL MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAVUZ SELİM MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH', 2400, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ABDULLAH BEY MAH (ARILI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇA MAH (ARILI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇALI MAH (AKKUŞ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKDAMAR MAH (BOZPINAR KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKDOĞAN KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKKAVAK KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKKUŞ KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKPINAR MAH (KAVAKLI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKTOPRAK MAH (ERİKLİ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİDAM KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ARILI KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ASKERAN MAH (YOLALTI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATLI MAH (GÖLGELİ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AVNİK MAH (GÖKÇE KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYDINLAR MAH (ARILI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYDINPINAR KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞBAŞI KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞÖZÜ KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇE MAH (BELÖREN KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BALLI KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BELENLİ KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BELÖREN KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEŞEVLER MAH (DUT KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEYPINAR MAH (KAYADİBİ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BIRBIR MAH (ÇIRALIK KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOĞAZKAYA KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOSTANLI KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOZPINAR KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOZTARLA KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BURMAPINAR KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BÜYÜKBAĞ KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BÜYÜKBEJYAN KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BÜYÜKBEY KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BÜYÜTME MAH (TURANLI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAKIREŞME KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇALTILI KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇARDAK KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇATALTEPE KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAYBAŞI KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇEM MAH (ESKİ KAHTA KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇETİNKAYA MAH (KOZAĞAÇ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇIRALIK KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİÇEK MAH (ZEYTİN KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇÖRTENEK MAH (ESKİ KAHTA KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇUKURTAŞ KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DALİNCE MAH (SIRACA KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAMLACIK KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAMLI MAH (ECELER KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DARBERİ MAH (BURMAPINAR KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEREBAŞI MAH (ÇUKURTAŞ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DİKMETAŞ MAH (YAPRAKLI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DİVAN MAH (ERİKLİ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOLUCA KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DUMANLI MAH (ÇAYBAŞI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DUMLU KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DUT KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ECELER KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EKİNCİ KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ERİKDERE KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ERİKLİ KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESENDERE KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİ KAHTA KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FISTIKLI KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GEDİK MAH (ALİDAM KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖKÇE KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖLGELİ KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖLLÜK MAH (KOZAĞAÇ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖMLEK MAH (ESKİ KAHTA KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜLVEREN MAH (KARADUT KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜMÜŞKAYA MAH (DAMLACIK KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜZELÇAY KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜZELKENT MAH (BÜYÜKBAĞ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HABİPLER KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACERİ MAH (ÇAYBAŞI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACIYUSUF KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HALİCE MAH (NARİNCE KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HALİFAN MAH (BOSTANLI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAMZALAR KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HASANDİĞİN KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HİSAR MAH (BURMAPINAR KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('IŞIKTEPE KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNGİRCE MAH (TURANLI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSLAMKÖY KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAHTA OSB MAH (SALKIMBAĞI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAMIŞLI MAH (ÇAYBAŞI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KANBOĞAZI MAH (KARADUT KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARABAĞ MAH (TAŞLICA KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARACAÖREN KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARADUT KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAGÜL MAH (NARİNCE KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAKUŞ MAH (BAĞÖZÜ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAMAN KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARANFİL MAH (DAMLACIK KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAPINAR MAH (TÜTENOCAK KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARATUT MAH (ÇALTILI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAVAKLI KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAYADİBİ KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEKLİK MAH (GÜZELÇAY KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEKLİK MAH (TEĞMENLİ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KELPINAR MAH (ESKİ KAHTA KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KERKAH MAH (EKİNCİ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KINIK MAH (HACIYUSUF KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KİLİSİK MAH (ÇIRALIK KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOÇTEPE KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOSA MAH (ÇAKIREŞME KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOZAĞAÇ KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖPRÜBAŞI MAH (ESENDERE KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖRGÜDAN MAH (YAPRAKLI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖSELER KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUBİLAY MAH (ORTANCA KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜÇÜK ECELER MAH (ECELER KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MENDERES MAH (DUT KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MÜLK MAH (ÇIRALIK KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MÜLKKÖY KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NARİNCE KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NARLI MAH (HASANDİĞİN KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NARLIDERE KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NARSIRTI KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ORTANCA KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OSMANPINAR MAH (KOÇTEPE KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OVACIK KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖZELEVLER MAH (BOĞAZKAYA KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAKO MAH (ERİKDERE KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SALİK MAH (KARADUT KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SALKIMBAĞI KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAMANLI MAH (ECELER KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARISU KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SEKÜK MAH (TURANLI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SIRACA KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SIRAKAYA KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SİNKE MAH (BOĞAZKAYA KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SULTANMAĞARA MAH (KÖSELER KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SUSUZ KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAHİNTEPE KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAHİNTEPE MAH (KARADUT KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞENKÖY KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞİRİNEVLER MAH (KARADUT KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TABAKLI MAH (BELENLİ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAŞLICA KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAŞLIÇAY KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TEĞMENLİ KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TEKNECİK KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TEPEBAŞI MAH (HAMZALAR KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TERZİYAN MAH (NARİNCE KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TİBİL MAH (TURANLI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TÜTENOCAK KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ULUBEY MAH (GÖLGELİ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAPRAKLI KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YASSIKAYA MAH (DOLUCA KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YELKOVAN KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİCE KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİCE MAH (KOÇTEPE KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YOLALTI KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YÜKSEKYAYLA MAH (BELENLİ KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZEYNAN MAH (BOSTANLI KÖYÜ)', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZEYTİN KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZİYARET KÖYÜ', 2402, 481);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİSARAY MAH', 2100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HOCAÖMER MAH', 2100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAPCAMİ MAH', 2100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MUSALLA MAH', 2100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SIRATUT MAH', 2100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('VARLIK MAH', 2100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİPINAR MAH', 2100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇECİK MAH', 2200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇELİEVLER MAH', 2200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH', 2200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İMAMAĞA MAH', 2200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAYALIK MAH', 2200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MALAZGİRT MAH', 2200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MEHMET AKİF MAH', 2200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖRENLİ MAH', 2200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SİTELER MAH', 2200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TURGUT REİS MAH', 2200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLYURT MAH', 2200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUS EMRE MAH', 2200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇELİEVLER MAH (KÖMÜR BELDESİ)', 2290, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (KÖMÜR BELDESİ)', 2290, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESENCE MAH (KÖMÜR BELDESİ)', 2290, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GAZİ MAH (KÖMÜR BELDESİ)', 2290, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HASANKAN MAH (KÖMÜR BELDESİ)', 2290, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRRİYET MAH (KÖMÜR BELDESİ)', 2290, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MUSTAFA YÜCEL ÖZBİLGİN MAH (KÖMÜR BELDESİ)', 2290, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SERİNTEPE MAH (KÖMÜR BELDESİ)', 2290, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAKACIK MAH (KÖMÜR BELDESİ)', 2290, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLYURT MAH (KÖMÜR BELDESİ)', 2290, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('100. YIL MAH (100.YIL KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ACEMPINARI MAH (KAYACIK KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AFETEVLERİ MAH (KAYAÖNÜ KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AĞAÇKONAK KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AĞCİN KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AĞİKAN KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AĞVEREN KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AHMETHOCA KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇALI KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇİK MAH (LOKMAN KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKDERE KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKHİSAR KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKIN MAH (SERHATLI KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKINCILAR MAH (ÇERÇİYAN MAH) (AKDERE KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKPINAR KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKSU MAH (KIR MAH) (DOĞANLI KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKYAZI KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKYURT MAH (ULUDAM KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALBET KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİBEY KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALTINTOP MAH (BÜYÜKKAVAKLI KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALTUN MAH (KUYULU KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ARMUTLU MAH (HOZİK MAH) (KUYUCAK KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ASLANOĞLU MAH (HACIHALİL KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ASMALI MAH (VARLIK KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATAKÖY KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATATÜRK MAH (ATAKENT KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATATÜRK MAH (HASANCIK KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYDINLAR KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('B.AYRANLI MAH (UZUNKÖY KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞDERE KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞLICA KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞPINAR KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞPINAR KUYUCAK KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞTEPE MAH (YEDİOLUK KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇE MAH (ÇAMLICA KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇE MAH (PINARYAYLA KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BALABAN MAH (ATAKENT KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BARDAKÇI MAH (BOZHÜYÜK KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAŞPINAR KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BATTALHÜYÜK KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEBEK KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BENAV MAH (DARICA MAH) (İNCEBAĞ KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEYLER MAH (ULUDAM KÖYÜ)', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOZATLI KÖYÜ', 2010, 615);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOZHÜYÜK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOZTEPE KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÖRKENEK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BULAM MAH (DOĞANLI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BURÇ MAH (DURAK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÜKLÜM KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÜYÜK BOYALI MAH (ATAKENT KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÜYÜKKAVAKLI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÜYÜKKIRIKLI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (ATAKENT KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAKMAKLAR KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAMGAZİ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAMLICA KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAMYURDU KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇATALAĞAÇ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYIRLI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYLI MAH (DÜDERE MAH) (HASANKENDİ KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYLI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇEMBERLİTAŞ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇINAR MAH (AKPINAR KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇINARİK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİÇEK-1 MAH (BAĞPINAR KUYUCAK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİÇEK-2 MAH (BAĞPINAR KUYUCAK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİTLİCE MAH (ÇAMLICA KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇOBANDEDE KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇOKPINAR MAH (KINDIRALİ KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DALUCA MAH (BATTALHÜYÜK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DAMDIRMAZ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DAMLICA KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DARBELİK MAH (AKPINAR KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DARDAĞAN KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DAVUTHAN KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DERİNSU KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DİŞBUDAK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DOĞANLI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DOYRAN KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DURAK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DURUKAYNAK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DÜZAĞAÇ MAH (UZUNKÖY KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DÜZCE KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EKİNCİ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ELMACIK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESENCE KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESKİHÜSNÜMANSUR KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESKİVİRAN MAH (DİŞBUDAK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GAZİHAN MAH (BAĞPINAR KUYUCAK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GEDİK MAH (ÇAMLICA KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GISRİK MAH (DERİNSU KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GİRİK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKÇAY KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKTAŞ MAH (KÖRİSTAN MAH) (UĞURCA KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKTEPE MAH (AYDINLAR KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖLPINAR KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖMLÜTEPE MAH (UZUNKÖY KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖZEBAŞI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖZECİK MAH (KÇ. ÇARKEZİ MAH) (UZUNPINAR KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖZTEPE KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜLTEPE MAH (BAĞDERE KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜMÜŞKAYA KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜNEŞLİ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜVENLİ MAH (KOÇALİ KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜZELEVLER MAH (BAĞDERE KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜZELYURT KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HACIHALİL KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HARABA MAH (AKPINAR KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HASANKENDİ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ILICAK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('IŞIKLI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNCEBAĞ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNCELER KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNÖNÜ MAH (HASANCIK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İPEKLİ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KALBURCU KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAMIŞLI MAH (AKYAZI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAMIŞLI MAH (YAZLIK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KANİKÜRK MAH (KAŞKÖY KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAAĞAÇ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARABURÇ MAH (BATTALHÜYÜK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAGÖL KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAHÖYÜK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAKOÇ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAKÖPRÜ MAH (BÜYÜKKAVAKLI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAMAN MAH (KOVUK DERESİ MAH) (PINARYAYLA KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARRUZ MAH (LOKMAN KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARTİ MAH (GÖZEBAŞI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAŞIKLI MAH (VARLIK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAŞKÖY KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAVAK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAVAK MAH (PINARYAYLA KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYABAŞI MAH (KAZNİ MAH) (KAYAÖNÜ KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYACIK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYADİBİ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYALI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYAÖNÜ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KEMALIK MAH (ZİYARETPAYAMLI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KEMERKAYA KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KERÖMER MAH (UZUNKÖY KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KILIÇLAR MAH (BEBEK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KINDIRALİ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIŞLA MAH (YAZLIK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIVIRCIK MAH (HACIHALİL KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIZILCAHÖYÜK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIZILCAPINAR KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KİLİSİK MAH (GÜZELYURT KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOÇALİ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KONAKDERE MAH (GÖKÇAY KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KORUKÖY KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KORULU MAH (MERMERE MAH) (YAZLIK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOTUR MAH (AKÇALI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOTUR MAH (DOĞANLI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOZAN KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖKLÜ MAH (BOZTEPE KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUMUŞDERESİ MAH (KOÇALİ KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUŞAKKAYA KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUŞTEPE KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUYUCAK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUYULU KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜK BOYALI MAH (AKPINAR KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜK HACIVERT MAH (ZEY KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜK KAVAKLI MAH (BÜYÜKKAVAKLI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜK KIRGI MAH (EKİNCİ KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜK KIRIKLI MAH (BÜYÜKKIRIKLI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜKHASANCIK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜKKIRKLI MAH (BÜYÜKKIRIKLI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜLAFHÜYÜK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜRK MAH (GİRİK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('LOKMAN KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MADUN MAH (GÖZEBAŞI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MAHMUT EL ENSARİ ZİYARETİ MAH (İPEKLİ KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MAHMUTLU MAH (ALİBEY KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MALOĞLU MAH (AKPINAR KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MALPINARI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MALTEPE MAH (ZEY KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MAZLIK MAH (BEBEK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MESTAN KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MİLLİK MAH (DÜZCE KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MİROĞLU MAH (AYDINLAR KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MUSTAFABEYLİ MAH (VARLIK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MUTLUCA MAH (GÖKÇAY KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MÜRSEL MAH (BÜKLÜM KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('NARLIK MAH (YENİKÖY KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OLGUNLAR KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OLUKLU KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORDU MAH (GÜNEŞLİ KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORMANİÇİ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖRÜMCE MAH (YARMAKAYA KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖZELEVLER MAH (BAĞDERE KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PAÇIK MAH (BEBEK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PALANLI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PAŞAMEZRASI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PAYAMLI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PINARBAŞI MAH (DURAK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PINARYAYLA KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('REŞATLI MAH (KUYULU KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('REZİP KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAKALLI MAH (AĞAÇKONAK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIHARMAN KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIKAYA KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SERHATLI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SEYİTEVLER MAH (BAĞLICA KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SINCIK MAH (BAĞLICA KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞEMİKAN KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞEREFLİ KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞİFRAK MAH (SERİNCE MAH) (İNCEBAĞ KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞİRAZİ MAH (BEBEK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAKLAR MAH (SERHATLI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞAR MAH (SERHATLI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞGEDİK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞOLUK MAH (TETİKAN MAH) (DERİNSU KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞPINAR KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TECİR KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TEKPINAR KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TEPEBAŞI MAH (HASANCIK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TEPEÖNÜ MAH (UZUNKÖY KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TERMAN KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TOPTEPE KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TUNÇLAR MAH (SERHATLI KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TUTLUCA MAH (DİŞBUDAK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UĞURCA KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UĞURLU MAH (KAYAÖNÜ KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ULUBEY MAH (KAYAÖNÜ KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ULUDAM KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UZUNKÖY KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UZUNÖMER MAH (BAĞDERE KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UZUNPINAR KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜÇDİREK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜRGÜÇ MAH (ATAKENT KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('VALİ HALİL IŞIK MAH (ATAKENT KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('VARLIK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('VARTANA MAH (TAŞPINAR KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAĞLICA MAH (VARLIK KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YARMAKAYA KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YASSIHÖYÜK MAH (GÜZELYURT KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAYLACIK MAH (UZUNKÖY KÖYÜ)', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAYLADAMI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAZIBAŞI KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAZICA KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAZLIK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEDİOLUK KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİCE KÖYÜ', 615, 02010);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİGÜVEN KÖYÜ', 02010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKÖY KÖYÜ', 02010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİMAH. (ÇEMBERLİTAŞ KÖYÜ)', 02010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİNACAR MAH (AKPINAR KÖYÜ)', 02010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLKÖY MAH (ŞEREFLİ KÖYÜ)', 02010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLOVA KÖYÜ', 02010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YILDIZLI MAH (BATTALHÜYÜK KÖYÜ)', 02010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YOĞURTLU MAH (VARLIK KÖYÜ)', 02010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUVACIK MAH (BELİKAN MAH) (AKDERE KÖYÜ)', 02010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZEY KÖYÜ', 02010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZİYARET MAH (ZİYARETPAYAMLI KÖYÜ)', 02010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZİYARETPAYAMLI KÖYÜ', 02010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZORKÖY MAH (GÖZEBAŞI KÖYÜ)', 02010, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİTAŞI MAH', 02030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MARA MAH', 02030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SÜMEREVLER MAH', 02030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ULUCAMİ MAH', 02030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇATDERESİ MAH (YAYLAKONAK BELDESİ)', 02270, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİMENKE MAH (YAYLAKONAK BELDESİ)', 02270, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNCEKOZ MAH (YAYLAKONAK BELDESİ)', 02270, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAÇALI MAH (YAYLAKONAK BELDESİ)', 02270, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MERKEZ MAH (YAYLAKONAK BELDESİ)', 02270, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZİVAR MAH (YAYLAKONAK BELDESİ)', 02270, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALTINŞEHİR MAH', 02040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BARBAROS HAYRETTİN MAH', 02040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 02040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESENTEPE MAH', 02040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAPINAR MAH', 02040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MİMAR SİNAN MAH', 02040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PETROLOSB MAH', 02040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TÜRKİYE PETROLLERİ MAH', 02040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAVUZ SELİM MAH', 02040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH', 02040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ SANAYİ MAH', 02040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AĞAKÖY MAH (UZUNTEPE KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKDAMAR KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALTINTEPE MAH (KIRMACIK KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞARASI KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAKACAK MAH (KIRMACIK KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAŞAKLI MAH (BAYIRLI KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAYIRLI KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEKÇİLER MAH (TEPEÖNÜ KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEKİRCİK MAH (ÇİÇEK KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇEŞMEBAŞI MAH (KIRMACIK KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİÇEK KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİLLE MAH (DOĞANCA KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DASINCA MAH (TAŞKUYU KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOĞANCA KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOĞANLAR MAH (ÇİÇEK KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖLPINAR KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖLTARLA KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜMÜŞSUYU MAH (ÇİÇEK KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNCEALİ MAH (YARIMBAĞ KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEÇİÖREN MAH (GÖLTARLA KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KERGEKUŞU MAH (YARIMBAĞ KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIRAÇ MAH (KIRMACIK KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIRMACIK KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIZILÖZ KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOVANOLUK KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUŞTEPE KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OVACIK KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARIKÖK MAH (GÖLTARLA KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SEFVANKÖY MAH (TEPEÖNÜ KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAŞKUYU KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TEPEÖNÜ KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TOKAÇLI MAH (BAYIRLI KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('UYANIK MAH (DOĞANCA KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('UZUNTEPE KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YARIMBAĞ KÖYÜ', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLBAĞ MAH (KIRMACIK KÖYÜ)', 02802, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BARAJ MAH', 02800, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KALE MAH', 02800, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖRENTAŞ MAH', 02800, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAVUZ SELİM MAH', 02800, 703);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇINAR MAH (İNLİCE BELDESİ)', 02920, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇÜKAN MAH (İNLİCE BELDESİ)', 02920, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FIRAT MAH (İNLİCE BELDESİ)', 02920, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARADAĞ MAH (İNLİCE BELDESİ)', 02920, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖZBİLGİN MAH (İNLİCE BELDESİ)', 02920, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAŞLICA MAH (İNLİCE BELDESİ)', 02920, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TUNA MAH (İNLİCE BELDESİ)', 02920, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ADAKLAR MAH (ŞAHİNBEYLER KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKSU KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALANCIK KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ARIKONAK KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYDIN MAH (SÖĞÜTLÜBAHÇE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BALKAYA KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BİRİMAN MAH (ŞAHKOLU KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAĞLAYAN MAH (HÜSEYİNLİ KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇALILIK MAH (HÜSEYİNLİ KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMDERE KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇARHANEK MAH (ÇATBAHÇE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAT KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAT MAH (GEÇİTLİ KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇATBAHÇE KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAVÇÜK MAH (ÇATBAHÇE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAMLI MERKEZ MAH (TAŞKALE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DERECİK MEZRASI MAH (SAKIZ KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DERVİŞAN MAH (ŞAHKOLU KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DİLEKTEPE KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÜDAN MAH (ÇAT KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EKİNCİ KUTAN MAH (TAŞKALE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ELMIRTAN MAH (ÇAMDERE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİKÖY KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FIRIN MAH (BALKAYA KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GEÇİTLİ KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GER MAH (ALANCIK KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GEVRİK YAĞMURLU MAH (AKSU KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GEVROL MAH (ARIKONAK KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GOLLUSOR MAH (SERİNCE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖV MAH (ARIKONAK KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜMÜKHAN MAH (HÜSEYİNLİ KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜZELSU MAH (HASANLI KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HASANLI KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAYIRLI MAH (SAKIZ KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAZAZ MAH (ÇAMDERE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HESİKAN MAH (ÇAMDERE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HİJİK MAH (ÇAMDERE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HODRİ MAH (YARPUZLU KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRMER MAH (AKSU KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜSEYİNLİ KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAKAYA MAH (HASANLI KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAKÖSE KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KASKANLI MAH (DİLEKTEPE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOCAGAZİ MEZRASI MAH (SAKIZ KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜÇÜK EVLER MAH (SAKIZ KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜÇÜKÇAY MAH (DİLEKTEPE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜPLÜCE MAH (ŞAHİNBEYLER KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜRELİFAN MAH (ŞAHİNBEYLER KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜSRAN MAH (ALANCIK KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MENGİL MAH (ARIKONAK KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NARLI KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PINARBAŞI KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('REZAN SAĞLAM MAH (TAŞKALE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAKIZ KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SERBENT MAH (ÇAMDERE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SERİNCE KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SOĞANLI MAH (SERİNCE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SORUT MAH (KARAKÖSE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SÖĞÜTLÜBAHÇE KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SUBAŞI KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAHİNBEYLER KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAHİNTEPE MAH (YARPUZLU KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAHKOLU KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAMLÜK KALIMLI MAH (TAŞKALE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAŞKALE KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TEPEBAŞI MAH (ÇATBAHÇE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TİŞİK MAH (ALANCIK KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TOKLUCA MAH (BALKAYA KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TURMUŞAN MAH (AKSU KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TUZİK MAH (GEÇİTLİ KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('UĞURLU KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YANIKKAYA MAH (HASANLI KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YARPUZLU KÖYÜ', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YASSIKAYA MAH (SERİNCE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAYLA EVLERİ MAH (SAKIZ KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAYLABAŞI MAH (BALKAYA KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YÜKSEKOVA MAH (HÜSEYİNLİ KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZEVİSİMİLAN MAH (TAŞKALE KÖYÜ)', 02902, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYENGİN MAH', 02900, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 02900, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH', 02900, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAMAN MAH', 02900, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MAHMUTOĞLU MAH', 02900, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ONUR MAH', 02900, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZEYNEL ASLAN MAH', 02900, 749);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKBEL MAH (ÇİFTLİK KÖYÜ)', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇATEPE KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOYUNDERE KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİFTLİK KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ELÇİLER KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAVUTLU KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAŞLICA KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KILLILI MAH (YAYLIMLI KÖYÜ)', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖSELİ KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MERYEMUŞAĞI KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖĞÜTLÜ KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PAMUKLU MAH (KAŞLICA KÖYÜ)', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PINARLI MAH (YEŞİLYURT KÖYÜ)', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SÜLMEN MAH (ÇİFTLİK KÖYÜ)', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TEPECİK KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÜNLÜCE KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YALANKOZ KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAYLIMLI KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLYAMAÇ MAH (TEPECİK KÖYÜ)', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLYURT KÖYÜ', 02352, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYNİYE MAH', 02350, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BULANIK MAH', 02350, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 02350, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMLICA MAH', 02350, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FETHİYE MAH', 02350, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('REŞADİYE MAH', 02350, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SALAH MAH', 02350, 832);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞI HİLAL MAH', 03450, 119);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BARBAROS MAH', 03450, 119);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAĞLAYAN MAH', 03450, 119);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH', 03450, 119);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜLİSTAN MAH', 03450, 119);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MİMAR SİNAN MAH', 03450, 119);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH', 03450, 119);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI HİLAL MAH', 119, 3450);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKKEÇİLİ KÖYÜ', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKKOYUNLU KÖYÜ', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKPINAR KÖYÜ', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI BELTARLA KÖYÜ', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI MAH (ÇIĞRI KÖYÜ)', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI MAH (YAKA KÖYÜ)', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇEVLİK KÖYÜ', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EKİNLİK KÖYÜ', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EMMİLER MAH (OVACIK KÖYÜ)', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HIRKAKÖY KÖYÜ', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜLLÜCE KÖYÜ', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MERKEZ MAH (OVACIK KÖYÜ)', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTA MAH (ÇIĞRI KÖYÜ)', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIKÖY KÖYÜ', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TINALAR MAH (OVACIK KÖYÜ)', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YASSIÖREN KÖYÜ', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI MAH (ÇIĞRI KÖYÜ)', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI MAH (YAKA KÖYÜ)', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIBELTARLA KÖYÜ', 119, 3452);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÜYÜK MAH', 122, 3780);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH', 122, 3780);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH', 122, 3780);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH', 122, 3780);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ABDULLAHLI MAH (DERBENT KÖYÜ)', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKPINAR KÖYÜ', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIÇAYBELEN KÖYÜ', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CERİTLİ MAH (DERBENT KÖYÜ)', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇUKURKUYU KÖYÜ', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESKİGÖMÜ KÖYÜ', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İMRALLI KÖYÜ', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNPINAR KÖYÜ', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUZÖREN KÖYÜ', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MALLICA KÖYÜ', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MURATKORU KÖYÜ', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTA MAH (DERBENT KÖYÜ)', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAĞIRLI KÖYÜ', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIÇAYBELEN KÖYÜ', 122, 3782);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKÇEŞME MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALACA MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALİ EFENDİ MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI GÖKÇEYAYLA MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYDINLAR MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BADEMLİ MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAĞLARBAŞI MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAĞLARÜSTÜ MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAHÇELİEVLER MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEKİR AĞA MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOLVADİN OSB MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BUCAK MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CİRİT MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇARDAKLI MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EMRULLAH MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ERKMEN MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ETHEM KELEKÇİ MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖLBAŞI MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HACI ESAT MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HACI HALİFE MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HACI ÖMER MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HACI YUSUF MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HASTANE MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HİSAR MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İHSANİYE MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İMARET MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KALE MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARABAĞLAR MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYMAZ MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KESTEMET MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIRKGÖZ MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIRKLAR MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KONAK MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('LALA SİNAN PAŞA MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MESCİT MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MÜSLÜMANA MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖMEROĞLU MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SELÇUKLU MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SÜLEYMANİYE MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞAZİ MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞIHLAR MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞAĞIL MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAKUP ŞEVKİ PAŞA MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ DOĞAN MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİCE MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YILDIRIM MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI GÖKÇEYAYLA MAH', 152, 3300);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYBAŞI MAH (DİŞLİ BELDESİ)', 152, 3330);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (DİŞLİ BELDESİ)', 152, 3330);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖPRÜBAŞI MAH (DİŞLİ BELDESİ)', 152, 3330);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MALAZGİRT MAH (DİŞLİ BELDESİ)', 152, 3330);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MEVLANA MAH (DİŞLİ BELDESİ)', 152, 3330);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OKUL MAH (DİŞLİ BELDESİ)', 152, 3330);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞEYH ŞAMİL MAH (DİŞLİ BELDESİ)', 152, 3330);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAVUZ SELİM MAH (DİŞLİ BELDESİ)', 152, 3330);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI MAH (DİŞLİ BELDESİ)', 152, 3330);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUNUS EMRE MAH (DİŞLİ BELDESİ)', 152, 3330);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH (BÜYÜKKARABAĞ KÖYÜ)', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AVDAN MAH (KEMERKAYA KÖYÜ)', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEREKARABAĞ KÖYÜ', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DİPEVLER KÖYÜ', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FEVZİÇAKMAK MAH (BÜYÜKKARABAĞ KÖYÜ)', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜNEY KÖYÜ', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HACIBEKİR MAH (BÜYÜKKARABAĞ KÖYÜ)', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HAMİDİYE KÖYÜ', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH (KEMERKAYA KÖYÜ)', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAYOKUŞ KÖYÜ', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARŞIYAKA MAH (BÜYÜKKARABAĞ KÖYÜ)', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KURUCAOVA KÖYÜ', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUTLU KÖYÜ', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MALAZGİRT MAH', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('NUSRATLI KÖYÜ', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTAKARABAĞ KÖYÜ', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAVAŞ MAH (KEMERKAYA KÖYÜ)', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞAĞIL KÖYÜ', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞLIDERE KÖYÜ', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAKA MAH (KEMERKAYA KÖYÜ)', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAPRAKLI MAH (KEMERKAYA KÖYÜ)', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (KEMERKAYA KÖYÜ)', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YÜRÜKKARACAÖREN KÖYÜ', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH (KEMERKAYA KÖYÜ)', 152, 3302);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAHÇELİEVLER MAH (ÖZBURUN BELDESİ)', 152, 3350);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYBAŞI MAH (ÖZBURUN BELDESİ)', 152, 3350);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞEHİRÖNÜ MAH (ÖZBURUN BELDESİ)', 152, 3350);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ULUCAMİ MAH (ÖZBURUN BELDESİ)', 152, 3350);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜSKÜDAR MAH (ÖZBURUN BELDESİ)', 152, 3350);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKTAŞ MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALİ İHSAN PAŞA MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALİ KALELİ MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAHÇELİEVLER MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CEDİT MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEMİRAĞAÇ MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DUMLUPINAR MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ELBİZ MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSTASYON MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖPRÜBAŞI MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTA MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞİRİNEVLER MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TEKKE MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('VAKIF MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAKA MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLEVLER MAH', 206, 3700);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI MAH (KARAMIKKARACAÖREN BELDESİ)', 206, 3720);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAĞLAR MAH (KARAMIKKARACAÖREN BELDESİ)', 206, 3720);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SEKA MAH (KARAMIKKARACAÖREN BELDESİ)', 206, 3720);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI MAH (KARAMIKKARACAÖREN BELDESİ)', 206, 3720);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('75. YIL MAH (KARAMIK KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKHÜRREM MAH (AKKONAK KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALPASLAN MAH (İNLİ KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ARMUTLU KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI MAH', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI MAH (KOÇBEYLİ KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYDOĞMUŞ KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BALTACI MAH (AKKONAK KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BULANIK KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (AKKONAK KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (İNLİ KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (KARAMIK KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYIRPINAR KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYIRYAZI KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEVEDERESİ KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EVREN MAH (İNLİ KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖCEN KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖÇMEZLER MAH (KOÇBEYLİ KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜLBAHARLI MAH (KOÇBEYLİ KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜNDOĞDU MAH (DERESİNEK KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH (AKKONAK KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KADIKÖY KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAHRAMAN MAH (DERESİNEK KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAVAKLI MAH (İNLİ KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KILIÇYAKA KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOCATEPE MAH (İNLİ KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MALTEPE KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MİLLİ EGEMENLİK MAH (AKKONAK KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORHANİYE KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTA MAH (EBER KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PINARKAYA KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TEKKE MAH (EBER KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAYLA MAH (İNLİ KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (EBER KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (KOÇBEYLİ KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLYURT KÖYÜ', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI MAH (EBER KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH (DERESİNEK KÖYÜ)', 206, 3702);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AFYON MAH (PAZARAĞAÇ BELDESİ)', 206, 3706);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEŞEVLER MAH (PAZARAĞAÇ BELDESİ)', 206, 3706);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARABULUT MAH (PAZARAĞAÇ BELDESİ)', 206, 3706);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTA MAH (PAZARAĞAÇ BELDESİ)', 206, 3706);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI MAH (PAZARAĞAÇ BELDESİ)', 206, 3706);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BUCAK MAH', 236, 3060);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖLCÜK MAH', 236, 3060);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('IŞIK MAH', 236, 3060);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARADEDE MAH', 236, 3060);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SIRAKAPI MAH', 236, 3060);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TERMALKENT MAH', 236, 3060);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAVUZ SELİM MAH', 236, 3060);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH', 236, 3060);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH', 236, 3060);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH (KOCAÖZ BELDESİ)', 236, 3107);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (KOCAÖZ BELDESİ)', 236, 3107);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (KOCAÖZ BELDESİ)', 236, 3107);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSTİKLAL MAH (KOCAÖZ BELDESİ)', 236, 3107);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKKOYUNLU KÖYÜ', 236, 3062);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖYNÜK KÖYÜ', 236, 3062);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KALE KÖYÜ', 236, 3062);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BARBAROS MAH', 250, 3950);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAMLIK MAH', 250, 3950);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESENTEPE MAH', 250, 3950);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KURTULUŞ MAH', 250, 3950);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('VEHBİ KOÇ SANAYİ BÖLGESİ MAH', 250, 3950);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİYOL MAH', 250, 3950);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLYURT MAH', 250, 3950);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKARCA KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ARIKÖY KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIYENİCE KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOZAN KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİFTLİK KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DARICILAR KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEMİREL MAH (YÜREĞİL KÖYÜ)', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (YÜREĞİL KÖYÜ)', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HASANDEDE KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HİSARALAN KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İDRİS KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAAĞAÇKUYUSU KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIZILÖREN KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖRTÜLÜ KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIKAVAK KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAYLAKÖY KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIYENİCE KÖYÜ', 250, 3952);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ADLİYE MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALTMIŞEVLER MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAĞLAR MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CAMİKEBİR MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DÖRTYOL MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EMNİYET MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GAZİ MEHMET ÇAVUŞ MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ILICA MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNCİRLİ MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSTASYON MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İTFAİYE MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KONAK MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KORUBAŞI MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OTOGAR MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PANCAR MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PAZAR MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PINARBAŞI MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SANAYİ MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SANTRAL MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('STADYUM MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SUÇIKAN MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TOPTEPE MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜÇLERCE MAH', 275, 3400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (HAYDARLI BELDESİ)', 275, 3480);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH (HAYDARLI BELDESİ)', 275, 3480);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSTİKLAL MAH (HAYDARLI BELDESİ)', 275, 3480);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MERKEZ MAH (HAYDARLI BELDESİ)', 275, 3480);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OCAKLI MAH (HAYDARLI BELDESİ)', 275, 3480);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖRNEK MAH (HAYDARLI BELDESİ)', 275, 3480);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (HAYDARLI BELDESİ)', 275, 3480);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('11 EVLER MAH (TEKİN KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('18 EVLER MAH (TEKİN KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('60 EVLER MAH (TEKİN KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AFŞAR KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKÇA KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKÇA MH. (CUMHURİYET KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKÇİN KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKGÜN KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKKANATLI MAH (YÜKSEL KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKPINARLI KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKTOPRAK KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKTOPRAK MAH (AKTOPRAK KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALACATLI KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALPASLAN MAH (ÇİÇEKTEPE KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI MH. (ALPARSLAN KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH (ÇİÇEKTEPE KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH (KADILAR KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AVDAN KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYDINLI MAH (BADEMLİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BADEMLİ KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAĞCILAR KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAHÇELİEVLER MAH (KINIK KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAHÇELİEVLER MAH (YIPRAK KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BELENPINAR KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BİLGİÇ KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BURUNKAYA KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÜLÜCALAN KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CAMİKEBİR MAH (ULUKÖY KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CAMİLİ MAH (BADEMLİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CAMİLİ MAH (GENCELİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CERİTYAYLASI KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (ÇİÇEKTEPE KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (DOĞANLI KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (KADILAR KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAĞLAYAN KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAKICI KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAMLI KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAPALI KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYÜSTÜ KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇOBANSARAY KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇÜRÜKLÜ KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DERE MH. (GÖÇERLİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DİKİCİ MAH (DİKİCİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DOMBAY KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DUMAN KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ELDERE KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ERDOĞAN ULUSAN MAH (DİKİCİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ERGENLİ KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESENTEPE MAH (KINIK KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESENTEPE MAH (YIPRAK KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (ÇİÇEKTEPE KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (KINIK KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GAZİ MAH (DOĞANLI KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GEDİK ALTI MEVKİ MH. (GÖÇERLİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GEDİK BAŞI MH. (GÖÇERLİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GENCELİ MAH (GENCELİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GENÇALİOSB MAH (GENCELİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKÇELİ KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HACIMAHMUT MAH (YEŞİLÇAT KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HARMAN YERİ MH. (GÖÇERLİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HASAN HÜSEYİN ÇİMEN MAH (DİKİCİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HİSAR MAH (YIPRAK KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNÖNÜ MAH (KADILAR KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSTASYON MAH (KARAKUYU KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KABAKLI KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARABEDİR KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAHACILI KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARATAŞ KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAZANPINAR KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KEKLİCEK KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIZILLI KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖRPELİ KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖY İÇİ MAH (KARAKUYU KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖY KONAĞI MAH (GENCELİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜK KALE ÖNÜ MH. (GÖÇERLİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MEHMET TUNCAY MAH (DİKİCİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MUSTAFA ACAR MAH (DİKİCİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OKÇULAR KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTA MAH (BADEMLİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTA MAH (YEŞİLÇAT KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖMERLİ MH. (CUMHURİYET KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖRNEK MAH (DOĞANLI KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖZTÜRK MAH (KINIK KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PALAZ KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PEYNİR YEMEZ MAH (YEŞİLÇAT KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PINARLI KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAĞBAŞLI MAH (YÜKSEL KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SEYDİLLİ MH. (CUMHURİYET KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SIRATAŞ MH. (GÖÇERLİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SÜTLAÇ KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TUGAYLI KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAKA KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAKA MAH (YAKA KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAPAĞLI KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YELALAN KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (GENCELİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (ULUKÖY KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLÇAT KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLHÜYÜK KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLYURT KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI MH. (ALPARSLAN KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YÜCEL YALÇIN MAH (DİKİCİ KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YÜKSEL KÖYÜ', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH (KADILAR KÖYÜ)', 275, 3402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALTINHİSAR MAH (TATARLI BELDESİ)', 275, 3490);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (TATARLI BELDESİ)', 275, 3490);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAĞLAYAN MAH (TATARLI BELDESİ)', 275, 3490);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAMLICA MAH (TATARLI BELDESİ)', 275, 3490);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (TATARLI BELDESİ)', 275, 3490);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLYURT MAH (TATARLI BELDESİ)', 275, 3490);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALASAKALLI MAH (DAVULGA BELDESİ)', 310, 3630);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DOMURLU MAH (DAVULGA BELDESİ)', 310, 3630);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HİSARKÖY MAH (DAVULGA BELDESİ)', 310, 3630);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNCİK MAH (DAVULGA BELDESİ)', 310, 3630);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAKUYU MAH (DAVULGA BELDESİ)', 310, 3630);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SOFULU MAH (DAVULGA BELDESİ)', 310, 3630);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH', 310, 3600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİLLİ MAH', 310, 3600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESKİ KACERLİ MAH', 310, 3600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNCİLİ MAH', 310, 3600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNKİLAP MAH', 310, 3600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARŞIYAKA MAH', 310, 3600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MENDERES MAH', 310, 3600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ KACERLİ MAH', 310, 3600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH', 310, 3600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİDOĞAN MAH', 310, 3600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAĞLARBAŞI MAH (GÖMÜ BELDESİ)', 310, 3680);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DÖRTYOL MAH (GÖMÜ BELDESİ)', 310, 3680);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (GÖMÜ BELDESİ)', 310, 3680);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKÇEYAKA MAH (GÖMÜ BELDESİ)', 310, 3680);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TOKİ MAH (GÖMÜ BELDESİ)', 310, 3680);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ABLAK KÖYÜ', 310, 3602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ADALET MAH (BADEMLİ KÖYÜ)', 310, 3602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AĞILCIK KÖYÜ', 310, 3602);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİBEYCE KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ARZILI MAH (BAŞKONAK KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIALİÇOMAK KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIKURUDERE KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AVDAN KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYDINYAKA KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYNILI MAH (BAŞKONAK KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞLICA KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BALCAM KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAŞALİ MAH (BAŞKONAK KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEYKÖY KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEYÖREN KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BURUNARKAÇ KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BÜYÜKTUĞLUK KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CAMİLİ KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CİVİKLİ MAH (BAŞKONAK KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (ADAYAZI KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (AŞAĞIPİRİBEYLİ KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇATALLI KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAYKIŞLA KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİFTLİKKÖY KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAĞILGAN KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAĞINIK KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAYDALI KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEMİRCİLİ KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DERE MAH (AŞAĞIKURUDERE KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEREKÖY KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÖNELİ MAH (YÜREĞİL KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EKİZCE KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ELHAN KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EMİRİNKÖYÜ KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİAKÖREN KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EŞREFLİ KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FAKILI MAH (TEZKÖY KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GEDİKEVİ KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GELİNCİK KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖZELİ KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜNEY KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜNEYSARAY KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜVEÇÇİ KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜZLE MAH (TEZKÖY KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACI HÜSEYİNLİ MAH (BAŞKONAK KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACI İSALI MAH (BAŞKONAK KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACI MUSTAFALI MAH (BAŞKONAK KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAMZAHACILI KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNCELİ MAH (TEZKÖY KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAAĞAÇ KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARACALAR KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAYATAK KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARŞIYAKA MAH (AŞAĞIPİRİBEYLİ KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAVLAKLI MAH (KILIÇLI KAVLAKLI KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KILIÇLAR KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KILIÇLI MAH (KILIÇLI KAVLAKLI KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIRKPINAR KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOYUNLU MAH (KILIÇLI KAVLAKLI KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖSELİ MAH (YÜREĞİL KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KURUCA KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KURUCAOSB MAH (KURUCA KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('LEYLEKLİ KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MAHRUMLU MAH (YUKARIKURUDERE KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MAZI MAH (YUKARIKURUDERE KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖRENKÖY KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖZKAN KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PALITLI MAH (YUKARIKURUDERE KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('RAHİMLİ MAH (TEZKÖY KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SALİHLER KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SIĞRACIK KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SOĞUKKUYU KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SUVERMEZ KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TABAKLAR KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TEPEKÖY KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TEZKÖY MERKEZ MAH (TEZKÖY KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TOKLUCAK KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TOPÇULAR MAH (BAŞKONAK KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TOPDERE KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TÜRKMENAKÖREN KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TÜRKMENKÖY KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÜMRANİYE KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('VEYSEL KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YARIKKAYA KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YARIMCA KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAVUZ KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH (ADAYAZI KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH (AŞAĞIPİRİBEYLİ KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİDOĞAN MAH (ADAYAZI KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKAPI KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKÖY KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YILDIZ MAH (BADEMLİ KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUSUFAĞA KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YÜREĞİL KÖYÜ', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZAFER MAH (BADEMLİ KÖYÜ)', 3602, 310);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CAMİKEBİR MAH', 3960, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH', 3960, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAYALIK MAH', 3960, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MEHMET AKİF MAH', 3960, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAVUZ SELİM MAH', 3960, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUS EMRE MAH', 3960, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKYARMA KÖYÜ', 3962, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BADEMLİ MAH (ALTINOVA KÖYÜ)', 3962, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BARBAROS MAH (GÖKÇEK KÖYÜ)', 3962, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOSTANCI KÖYÜ', 3962, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAYÖNÜ MAH (MADENLER KÖYÜ)', 3962, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEPREM EVLERİ MAH (MADENLER KÖYÜ)', 3962, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DERE MAH (ALTINOVA KÖYÜ)', 3962, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (GÖKÇEK KÖYÜ)', 3962, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜNDOĞDU DEPREM EVLERİ MAH (GÖKÇEK KÖYÜ)', 3962, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖRKUYU KÖYÜ', 3962, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜME EVLERİ MAH (ALTINOVA KÖYÜ)', 3962, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MEVLANA MAH (BARAKLI KÖYÜ)', 3962, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUS EMRE MAH (BARAKLI KÖYÜ)', 3962, 332);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRRİYET MAH', 3530, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAFAK MAH', 3530, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH', 3530, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇADERE KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞI MAH (GÜRE KÖYÜ)', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞI MAH (KOZLUCA KÖYÜ)', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AVGANCIK KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (YEŞİLHİSAR KÖYÜ)', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇALÇA KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇEPNİ KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAVULGA KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEVLETHAN KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEVRANT MAH (GÜRE KÖYÜ)', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ELDİZAN MAH (ÇEPNİ KÖYÜ)', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (YEŞİLHİSAR KÖYÜ)', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜRE KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HİSAR MAH (YEŞİLHİSAR KÖYÜ)', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İHSANİYE KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOCAGÖL KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOZLUCA KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖRENCİK KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖRTÜLÜ KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ULUKÖY KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAĞCI KÖYÜ', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH (YEŞİLHİSAR KÖYÜ)', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARI MAH (AKÇADERE KÖYÜ)', 3532, 437);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (DÖĞER BELDESİ)', 3380, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KERVANSARAY MAH (DÖĞER BELDESİ)', 3380, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH (DÖĞER BELDESİ)', 3380, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUS EMRE MAH (DÖĞER BELDESİ)', 3380, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BELCE MAH (GAZLIGÖL BELDESİ)', 3383, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (GAZLIGÖL BELDESİ)', 3383, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (GAZLIGÖL BELDESİ)', 3383, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUS EMRE MAH (GAZLIGÖL BELDESİ)', 3383, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÖREN MAH', 3370, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 3370, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRRİYET MAH', 3370, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞAHİNLER MAH', 3370, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZAFER MAH', 3370, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (KAYIHAN BELDESİ)', 3384, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUNDUZLU MAH (KAYIHAN BELDESİ)', 3384, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('PINAR MAH (KAYIHAN BELDESİ)', 3384, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TÜRBE MAH (KAYIHAN BELDESİ)', 3384, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ABLAK KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞITANDIR KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BASIRLAR KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAYRAMALİLER KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEYKÖY KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMALI KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (AYAZİNİ KÖYÜ)', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (BOZHÜYÜK KÖYÜ)', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (KARACAAHMET KÖYÜ)', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEMİRLİ KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEREKÖY MAH (EYNEHANKUZVİRAN KÖYÜ)', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİEYMİR MAH (ESKİEYMİR KÖYÜ)', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (AYAZİNİ KÖYÜ)', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACIBEYLİ KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İĞDEMİR KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KADIMÜRSEL KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KILDİRLER MAH (EYNEHANKUZVİRAN KÖYÜ)', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIYIR KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUZVİRAN MAH (EYNEHANKUZVİRAN KÖYÜ)', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MURATLAR KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OĞULBEYLİ KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ORHANLI KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OSMANKÖY KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖKSÜZLER MAH (EYNEHANKUZVİRAN KÖYÜ)', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARICAOVA KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SUSUZ OSMANİYE MAH', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞEHİTLER MAH (BOZHÜYÜK KÖYÜ)', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAŞPINAR MAH (ESKİEYMİR KÖYÜ)', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TÜRBE MAH (KARACAAHMET KÖYÜ)', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÜÇLERKAYASI KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİCE KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKENT MAH', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLYAYLA KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YİĞİTPINARI KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARITANDIR KÖYÜ', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUS EMRE MAH (BOZHÜYÜK KÖYÜ)', 3372, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATATÜRK MAH (YAYLABAĞI BELDESİ)', 3375, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇELİEVLER MAH (YAYLABAĞI BELDESİ)', 3375, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESENTEPE MAH (YAYLABAĞI BELDESİ)', 3375, 448);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇUKUR MAH', 3750, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESENTEPE MAH', 3750, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESKİ HAMAM MAH', 3750, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH', 3750, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAVAK MAH', 3750, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MEDRESE MAH', 3750, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MERMER OSB MAH', 3750, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SELÇUKLU MAH', 3750, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞİRİNEVLER MAH', 3750, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TEPECİK MAH', 3750, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZEYBEK MAH', 3750, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AĞZIKARA MAH (ÇATAĞIL KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATATÜRK MAH (ALANYURT KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇECİK KÖYÜ', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CEVİZLİ KÖYÜ', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (ALANYURT KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAKMAK MAH (ALANYURT KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇALIŞLAR KÖYÜ', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOĞANLAR KÖYÜ', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOĞLAT KÖYÜ', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DURAKLAR MAH (ÇATAĞIL KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRRİYET MAH (ALANYURT KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAAĞAÇ KÖYÜ', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAKAYA MAH (KONARI KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAVRUKLAR MAH (KARAKAYA KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KESERLER MAH (KARAKAYA KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KURTULUŞ MAH', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜRTYURDU MAH (ÇATAĞIL KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MERKEZ MAH (ÇATAĞIL KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MERKEZ MAH (KARAKAYA KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MERKEZ MAH (KONARI KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MERKEZ MAH (OLUKPINAR KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖLDÜMLER MAH (OLUKPINAR KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SELİMİYE MAH (ALANYURT KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('VELİLER MAH (KARAKAYA KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YANIKLAR MAH (OLUKPINAR KÖYÜ)', 3752, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (SEYDİLER BELDESİ)', 3754, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HASAN BASRİ MAH (SEYDİLER BELDESİ)', 3754, 463);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 3560, 544);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH', 3560, 544);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EKİNOVA KÖYÜ', 3562, 544);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜLYAZI KÖYÜ', 3562, 544);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TÜRKBELKAVAK KÖYÜ', 3562, 544);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİBELKAVAK KÖYÜ', 3562, 544);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATAKÖY MAH', 3050, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESENTEPE MAH', 3050, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSTİKLAL MAH', 3050, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KANLICA MAH', 3050, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MAREŞAL FEVZİ ÇAKMAK MAH', 3050, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZAFER MAH', 3050, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATATÜRK MAH (BEYYAZI BELDESİ)', 3217, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (BEYYAZI BELDESİ)', 3217, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖRNEK MAH (BEYYAZI BELDESİ)', 3217, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 3200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAİRECEP MAH', 3200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DERVİŞ PAŞA MAH', 3200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DUMLUPINAR MAH', 3200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HATTAT KARAHİSAR MAH', 3200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAMAN MAH', 3200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KASIMPAŞA MAH', 3200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAYADİBİ MAH', 3200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MARULCU MAH', 3200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MECİDİYE MAH', 3200, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİ ÇETİNKAYA MAH (ÇAYIRBAĞ BELDESİ)', 3210, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (ÇAYIRBAĞ BELDESİ)', 3210, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HUZUR MAH (ÇAYIRBAĞ BELDESİ)', 3210, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('UĞUR MAH (ÇAYIRBAĞ BELDESİ)', 3210, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ERENLER MAH (ÇIKRIK BELDESİ)', 3204, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUSLAR MAH (ÇIKRIK BELDESİ)', 3204, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KURTULUŞ MAH (DEĞİRMENAYVALI BELDESİ)', 3103, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞEHİT AHMET MAH (DEĞİRMENAYVALI BELDESİ)', 3103, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (ERKMEN BELDESİ)', 3211, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FEVZİ ÇAKMAK MAH (ERKMEN BELDESİ)', 3211, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRRİYET MAH (ERKMEN BELDESİ)', 3211, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKÇİN MAH', 3040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİ İHSAN PAŞA MAH', 3040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEYAZIT MAH', 3040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EŞREFPAŞA MAH', 3040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH', 3040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GAZİ MAH', 3040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜVENEVLER MAH', 3040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HOCA AHMET YESEVİ MAH', 3040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOCATEPE MAH', 3040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('NAZMİ SAATÇİ MAH', 3040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÖRNEKEVLER MAH', 3040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAHİPATA MAH', 3040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('VEYSEL KARANİ MAH', 3040, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (FETHİBEY BELDESİ)', 3212, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAVUZ SELİM MAH (FETHİBEY BELDESİ)', 3212, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUS EMRE MAH (FETHİBEY BELDESİ)', 3212, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (GEBECELER BELDESİ)', 3213, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSTİKLAL MAH (GEBECELER BELDESİ)', 3213, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOCATEPE MAH (GEBECELER BELDESİ)', 3213, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH (GEBECELER BELDESİ)', 3213, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZAFER MAH (GEBECELER BELDESİ)', 3213, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATATÜRK MAH (IŞIKLAR BELDESİ)', 3080, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (IŞIKLAR BELDESİ)', 3080, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRRİYET MAH (IŞIKLAR BELDESİ)', 3080, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSTİKLAL MAH (IŞIKLAR BELDESİ)', 3080, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAKA MAH (IŞIKLAR BELDESİ)', 3080, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH (IŞIKLAR BELDESİ)', 3080, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKMESCİT MAH', 3100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BURMALI MAH', 3100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FAKIPAŞA MAH', 3100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAMİDİYE MAH', 3100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HASAN KARAAĞAÇ MAH', 3100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OLUCAK MAH', 3100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SÜMER MAH', 3100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TACI AHMET MAH', 3100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAŞPINAR MAH', 3100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YARENLER MAH', 3100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUS EMRE MAH', 3100, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOCATEPE MAH (KOCATEPE BELDESİ)', 3105, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KURTULUŞ MAH (KOCATEPE BELDESİ)', 3105, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALCALI KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAYATCIK MAH', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAYRAMGAZİ KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BELKARACAÖREN KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOSTANLI KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BURHANİYE KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (ANITKAYA KÖYÜ)', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAKIR MAH', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇATALÇEŞME MAH (BAYRAMGAZİ KÖYÜ)', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAVDARLI KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEĞİRMENDERE KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEMİRÇEVRE MAH', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEVREN MAH (SAADET KÖYÜ)', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖZSÜZLÜ KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HALIMORU KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSMAİL MAH', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAPLANLI KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAARSLAN ÇAYIRI MAH (KARAARSLAN KÖYÜ)', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAARSLAN KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIŞLACIK MAH', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KIZILDAĞ KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOÇAKTEPESİ MAH (ÇAVDARLI KÖYÜ)', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KOZLUCA KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖPRÜLÜ KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜÇÜKÇOBANLI MAH', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜÇÜKKALECİK KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OLUCAK KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OMUZCA KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAADET KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SADIKBEY MAH', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARAYDÜZÜ ÇAYIRI MAH (SARAYDÜZÜ KÖYÜ)', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARAYDÜZÜ KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARIK KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞUHUT OSB MAH (BELKARACAÖREN KÖYÜ)', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YARIMCA KÖYÜ', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZAFER MAH (ANITKAYA KÖYÜ)', 3032, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİ İHSAN PAŞA MAH (NURİBEY BELDESİ)', 3215, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (NURİBEY BELDESİ)', 3215, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MAREŞAL FEVZİ ÇAKMAK MAH (NURİBEY BELDESİ)', 3215, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MEHMET AKİF MAH (NURİBEY BELDESİ)', 3215, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BARBAROS MAH (SALAR BELDESİ)', 3150, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('FATİH MAH (SALAR BELDESİ)', 3150, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜMÜŞ TEPE MAH (SALAR BELDESİ)', 3150, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HALİL İBRAHİM SULTAN MAH (SALAR BELDESİ)', 3150, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAVUZ SELİM MAH (SALAR BELDESİ)', 3150, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖKHAN MAH (SUSUZ BELDESİ)', 3218, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OSMANLI MAH (SUSUZ BELDESİ)', 3218, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAKARYA MAH (SUSUZ BELDESİ)', 3218, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SELÇUKLU MAH (SUSUZ BELDESİ)', 3218, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALTINDAĞ MAH (SÜLÜMENLİ BELDESİ)', 3140, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (SÜLÜMENLİ BELDESİ)', 3140, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İSTİKLAL MAH (SÜLÜMENLİ BELDESİ)', 3140, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ŞEKER MAH (SÜLÜMENLİ BELDESİ)', 3140, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ULUCAMİ MAH (SÜLÜMENLİ BELDESİ)', 3140, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZAFER MAH (SÜLÜMENLİ BELDESİ)', 3140, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜLTEPE MAH (SÜLÜN BELDESİ)', 3214, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HİSAR MAH (SÜLÜN BELDESİ)', 3214, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AFYONKARAHİSAR OSB MAH', 3030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİ ÇETİNKAYA MAH', 3030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BATTALGAZİ MAH', 3030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÖRTYOL MAH', 3030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ERENLER MAH', 3030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ERTUĞRUL GAZİ MAH', 3030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARŞIYAKA MAH', 3030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ORHANGAZİ MAH', 3030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('OSMAN GAZİ MAH', 3030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SELÇUKLU MAH', 3030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİCE MAH', 3030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLYURT MAH', 3030, 615);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİĞİLTEPE MAH (AKHARIM BELDESİ)', 3510, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DİKMEN MAH (AKHARIM BELDESİ)', 3510, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HİSAR MAH (AKHARIM BELDESİ)', 3510, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKİN KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALACAMİ KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALAGÖZ KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALAMESCİT KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ARIZLAR KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ASMACIK KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇELİ MAH (ÖRENKAYA KÖYÜ)', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAŞKUYUCAK KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAŞTEPE KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEKTEŞ KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CELİLOĞLU KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (BALLIK KÖYÜ)', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (BAŞAĞAÇ KÖYÜ)', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (KARADİREK KÖYÜ)', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (KUSURA KÖYÜ)', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH (YAVAŞLAR KÖYÜ)', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMBEYLİ KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAMOĞLU KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇEVREPINAR KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİĞİLTEPE KÖYÜ', 3502, 705);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇUKURCA KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DAYLIK KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DODURGA KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DUTAĞAÇ KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EKİNHİSAR KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EMEK MAH (SORKUN KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EMİRHİSAR KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESENTEPE MAH (BALLIK KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (KUSURA KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (MENTEŞ KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKÇEALAN KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜNEY MAH (KIZIK KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜRSU KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HIRKA KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HİSAR MAH (YAVAŞLAR KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH (KARADİREK KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH (KUSURA KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH (MENTEŞ KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSTİKLAL MAH (BAŞAĞAÇ KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSTİKLAL MAH (KARADİREK KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARACAÖREN KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARASANDIKLI KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARKIN KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KESTEL MAH (SORKUN KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KINIK KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIZILCA KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOÇGAZİ KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOÇHİSAR KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOZVAN KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KURTULUŞ MAH (YAVAŞLAR KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUZEY MAH (KIZIK KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('NASUHOĞLU KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('NUR MAH (ÖRENKAYA KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ODA KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTA MAH (KIZIK KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OTLUK KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖRMEKUYU KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('REŞADİYE KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SALTIK KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SELÇİK KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SOĞUCAK KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SUSUZ KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞAFAK MAH (BAŞAĞAÇ KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞEYHYAHŞİ KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜLFECİLER KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜRKÜT KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YANIKÖREN KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAYMAN KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YOLKONAK KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUMRUCA KÖYÜ', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YÜKSELİŞ MAH (SORKUN KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH (BALLIK KÖYÜ)', 705, 3502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMA MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAKIR MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAY MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ECE MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HİSAR MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSTASYON MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KEVSER MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SANDIKLI OSB MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAZAK MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞİRİNEVLER MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAPDUK EMRE MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUNUS EMRE MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH', 705, 3500);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİĞİLTEPE MAH (AHMETPAŞA BELDESİ)', 747, 3860);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DİBEKBAŞI MAH (AHMETPAŞA BELDESİ)', 747, 3860);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖLCÜK MAH (AHMETPAŞA BELDESİ)', 747, 3860);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HALKALI MAH (AHMETPAŞA BELDESİ)', 747, 3860);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜKTEPE MAH (AHMETPAŞA BELDESİ)', 747, 3860);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI MAH (AHMETPAŞA BELDESİ)', 747, 3860);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAĞDAT MAH (AKÖREN BELDESİ)', 747, 3857);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (AKÖREN BELDESİ)', 747, 3857);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YILDIRIM BEYAZIT MAH (AKÖREN BELDESİ)', 747, 3857);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (DÜZAĞAÇ BELDESİ)', 747, 3870);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (DÜZAĞAÇ BELDESİ)', 747, 3870);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('IŞIK MAH (DÜZAĞAÇ BELDESİ)', 747, 3870);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH (DÜZAĞAÇ BELDESİ)', 747, 3870);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI MAH (GÜNEY BELDESİ)', 747, 3880);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇALIŞLAR MAH (GÜNEY BELDESİ)', 747, 3880);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTA MAH (GÜNEY BELDESİ)', 747, 3880);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (GÜNEY BELDESİ)', 747, 3880);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI MAH (GÜNEY BELDESİ)', 747, 3880);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH (KILIÇARSLAN BELDESİ)', 747, 3858);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (KILIÇARSLAN BELDESİ)', 747, 3858);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FEVZİ ÇAKMAK MAH (KILIÇARSLAN BELDESİ)', 747, 3858);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOCATEPE MAH (KILIÇARSLAN BELDESİ)', 747, 3858);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH (KIRKA BELDESİ)', 747, 3859);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (KIRKA BELDESİ)', 747, 3859);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAVUZ SULTAN SELİM MAH (KIRKA BELDESİ)', 747, 3859);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YILDIRIM BEYAZIT MAH (KIRKA BELDESİ)', 747, 3859);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH (KÜÇÜKHÜYÜK BELDESİ)', 747, 3854);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (KÜÇÜKHÜYÜK BELDESİ)', 747, 3854);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (KÜÇÜKHÜYÜK BELDESİ)', 747, 3854);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KURTULUŞ MAH (KÜÇÜKHÜYÜK BELDESİ)', 747, 3854);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH (KÜÇÜKHÜYÜK BELDESİ)', 747, 3854);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKÇAŞAR KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKDEĞİRMEN KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH (TOKUŞLAR KÖYÜ)', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYVALI KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAHÇELİEVLER MAH (NUH KÖYÜ)', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BALMAHMUT KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BALTEPE MAH (KINIK KÖYÜ)', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAŞKİMSE KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAYRAK MAH (KINIK KÖYÜ)', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOYALI KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BULCA KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CAMİ MAH (KINIK KÖYÜ)', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (NUH KÖYÜ)', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (TOKUŞLAR KÖYÜ)', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAMTEPE MAH (KINIK KÖYÜ)', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇATKUYU KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYHİSAR KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYIR MAH (KINIK KÖYÜ)', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇOBANÖZÜ KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEDE MAH (KINIK KÖYÜ)', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ELVANPAŞA KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EYİCE KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GARİPCE KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GEZLER KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH (NUH KÖYÜ)', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İĞDELİ KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSTİKLAL MAH (NUH KÖYÜ)', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARACA ÖREN KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYADİBİ KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARAYCIK KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAZLAR KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YILDIRIM KEMAL KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YÖRÜK MEZARI KÖYÜ', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH (KINIK KÖYÜ)', 747, 3852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (SERBAN BELDESİ)', 747, 3855);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HİSAR MAH (SERBAN BELDESİ)', 747, 3855);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HOZMAN MAH (SERBAN BELDESİ)', 747, 3855);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖPRÜBAŞI MAH (SERBAN BELDESİ)', 747, 3855);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜMBET MAH (SERBAN BELDESİ)', 747, 3855);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTA MAH (SERBAN BELDESİ)', 747, 3855);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKPINAR MAH', 747, 3850);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALİ ÇETİNKAYA MAH', 747, 3850);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAHÇELİEVLER MAH', 747, 3850);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH', 747, 3850);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİĞİLTEPE MAH', 747, 3850);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH', 747, 3850);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖĞRETMENLER MAH', 747, 3850);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI MAH', 747, 3850);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAHÇELİEVLER MAH (TAŞOLUK BELDESİ)', 747, 3121);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (TAŞOLUK BELDESİ)', 747, 3121);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇANKAYA MAH (TAŞOLUK BELDESİ)', 747, 3121);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇINARLI MAH (TAŞOLUK BELDESİ)', 747, 3121);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH (TAŞOLUK BELDESİ)', 747, 3121);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (TAŞOLUK BELDESİ)', 747, 3121);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AMBAR MAH (TINAZTEPE BELDESİ)', 747, 3110);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAHÇELİEVLER MAH (TINAZTEPE BELDESİ)', 747, 3110);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (TINAZTEPE BELDESİ)', 747, 3110);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARAY MAH (TINAZTEPE BELDESİ)', 747, 3110);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (TINAZTEPE BELDESİ)', 747, 3110);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH (TINAZTEPE BELDESİ)', 747, 3110);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH (DEREÇİNE BELDESİ)', 762, 3910);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CAMİKEBİR MAH (DEREÇİNE BELDESİ)', 762, 3910);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (DEREÇİNE BELDESİ)', 762, 3910);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAMAN MAH (DEREÇİNE BELDESİ)', 762, 3910);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAVAKLI MAH (DEREÇİNE BELDESİ)', 762, 3910);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKBABA KÖYÜ', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAHÇELİEVLER MAH (KIRCA KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BALABAN MAH (ÇUKURCAK KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (KARAPINAR KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAĞLAYAN MAH (KIRCA KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAMÖZÜ KÖYÜ', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇINARLI MAH (ÜÇKUYU KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇUKURCAK KÖYÜ', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DOĞANCIK KÖYÜ', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HİSAR MAH (KIRCA KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İMAM AZİZ MAH (YAKASİNEK KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNÖNÜ MAH (KARAPINAR KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAKIŞLA KÖYÜ', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTA MAH (YAKASİNEK KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PINARLI MAH (ÜÇKUYU KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SELÇUK MAH', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SELÇUK MAH (KARAPINAR KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞKÖPRÜ KÖYÜ', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ULUPINAR MAH (YAKASİNEK KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (YAKASİNEK KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİKARABAĞ KÖYÜ', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLYURT MAH (ÜÇKUYU KÖYÜ)', 762, 3911);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAVUŞ MAH', 762, 3900);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYRAN MAH', 762, 3900);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PAZARALTI MAH', 762, 3900);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH', 762, 3900);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YILDIRIM MAH', 762, 3900);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKPINAR MAH (YEŞİLÇİFTLİK BELDESİ)', 762, 3940);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI MAH (YEŞİLÇİFTLİK BELDESİ)', 762, 3940);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SIRA MAH (YEŞİLÇİFTLİK BELDESİ)', 762, 3940);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TEPEBAŞI MAH (YEŞİLÇİFTLİK BELDESİ)', 762, 3940);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİKENT MAH (YEŞİLÇİFTLİK BELDESİ)', 762, 3940);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YILDIZ MAH (YEŞİLÇİFTLİK BELDESİ)', 762, 3940);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI MAH (YEŞİLÇİFTLİK BELDESİ)', 762, 3940);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAĞLAYAN MAH (KARAADİLLİ BELDESİ)', 799, 3830);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEVELİ MAH (KARAADİLLİ BELDESİ)', 799, 3830);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ERENLER MAH (KARAADİLLİ BELDESİ)', 799, 3830);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH (KARAADİLLİ BELDESİ)', 799, 3830);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AĞZIKARA KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AHAROLUK MAH (ORTAPINAR KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKKAYA MAH (KOÇYATAĞI KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKYATAK MAH (KOÇYATAĞI KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKYUVA KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ANAYURT KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ARAPOĞLU MAH (DADAK KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ARIZLI KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH (EFE KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH (KAYABELEN KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYDIN KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BADEMLİ KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BALLIK MAH (DADAK KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAŞARAP MAH (KOÇYATAĞI KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAŞÖREN KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAŞYER MAH (DADAK KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOZAN KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÜRÇEK MAH (ÇAKIRÖZÜ KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (KARACAÖREN KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (KAYABELEN KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAKIRÖZÜ KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇALLIOĞLU MAH (DADAK KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇANAKPINARI MAH (KOÇYATAĞI KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇOBANKAYA KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DADAK KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEMİRBEL KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DOLAPDERESİ MAH (KOÇYATAĞI KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EFE SULTAN MAH (EFE KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (ATLIHİSAR KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (EFE KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (KARACAÖREN KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GAVURÖRENİ MAH (KOÇYATAĞI KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜLDEDE MAH (BALÇIKHİSAR KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜNEYTEPE KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HALLAÇ KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HİSAR MAH (ATLIHİSAR KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH (KARACAÖREN KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İCİKLİ KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İLYASLI KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSALI KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSMET İNÖNÜ MAH (KAYABELEN KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSTİKLAL MAH (BALÇIKHİSAR KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAHALLI KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARLIK KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAVAKLI KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYAPINAR MAH (ORTAPINAR KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KILINÇKAYA KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOÇYATAĞI KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KULAK KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MAHMUT KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MAUŞAN MAH (KOÇYATAĞI KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTAPINAR KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OYNAĞAN KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖRENCİK MAH (KOÇYATAĞI KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PAŞACIK KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIYAR MAH (KOÇYATAĞI KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SATILMIŞ MAH (KOÇYATAĞI KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SENİR KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SİYEK MAH (DADAK KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SULUDERE MAH (KOÇYATAĞI KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞAHBENDİ MAH (ORTAPINAR KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞOLUK MAH (KOÇYATAĞI KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TEKKE KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TİLKİDERESİ MAH (KOÇYATAĞI KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TOPRAKPINAR MAH (ORTAPINAR KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UZUNPINAR KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜÇİN MAH (ÇAKIRÖZÜ KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YARIŞLI KÖYÜ', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAYLA MAH (ÇAKIRÖZÜ KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (BALÇIKHİSAR KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (EFE KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (KARACAÖREN KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH (KAYABELEN KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH (ATLIHİSAR KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH (BALÇIKHİSAR KÖYÜ)', 799, 3810);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALTIGÖZ MAH', 799, 3800);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAŞ MAH', 799, 3800);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GAZİPAŞA MAH', 799, 3800);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HACI MUSA MAH', 799, 3800);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HİSAR MAH', 799, 3800);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İPLİK MAH', 799, 3800);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSTİKLAL MAH', 799, 3800);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KURTULUŞ MAH', 799, 3800);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MEHMET AKİF ERSOY MAH', 799, 3800);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PAZAR MAH', 799, 3800);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞLICA MAH', 799, 3800);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YALI MAH', 799, 3800);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZAFER MAH', 799, 3800);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('14 NİSAN MAH', 277, 4900);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATATÜRK MAH', 277, 4900);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH', 277, 4900);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖL MAH', 277, 4900);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSAAĞA MAH', 277, 4900);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KETENPINAR MAH', 277, 4900);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MURAT MAH', 277, 4900);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ABDULKADİR ÇETİN MAH (SÜRMELİKOÇ KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ADAKENT MAH (DAVUT KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AHMET IŞIK MAH (SÜRMELİKOÇ KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKBIYIK MAH (PİRALİ KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKÇAY MAH (SÜRENKÖK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKÇEVRE KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKYOLAÇ KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALAÇAYIR MAH (DEDEBULAK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALTINKİLİT KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALTINKİLİT MAH (ALTINKİLİT KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AMEREŞK MAH (SÜRMELİKOÇ KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('APRO MAH (MUTLU KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI KÖH MAH (DEDEBULAK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI UĞUR MAH (DEDEBULAK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIAKPAZAR KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIDALÖREN KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIKARDEŞLİ KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞITÜTEK KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATADAMI KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATAYOLU KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BATIBEYLİ KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEŞEVLER MAH (BÜVETLİ KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEŞEVLER MAH (SÜRMELİKOÇ KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEYAZTAŞ MAH (ATAYOLU KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOYALAN KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BUDAK KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BUĞDAYLI MAH (DEDEBULAK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BURGULU KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÜVETLİ KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (TAŞKESEN KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİFÇİ MAH (GÜNBULDU KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DAVUT KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEDEBULAK KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DELİHASAN KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DİBEKLİ KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DOKUZTAŞ KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DURAK MAH (BATIBEYLİ KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GEDİK KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖĞEBAKAN KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖZÜPEK KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GULEBIST MAH (GÜNBULDU KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜLTEPE MAH (AKYOLAÇ KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜNBULDU KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HACIHALİT KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HARABE MAH (TAŞBASAMAK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HASI KALİ KOMU MAH (SÜRMELİKOÇ KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HEYBELİYURT KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İBRAHİM KOMU MAH (YENİÇADIR KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İPEK MAH (YENİÇADIR KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSAAĞA KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSASELAM MAH (YANIKÇUKUR KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAMİL IŞIK KOMU MAH (SÜRMELİKOÇ KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAPANCA KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAPLICA MAH (DAVUT KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAPLICA MAH (KUŞBURNU KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAPAZAR KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARATAŞ KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYNAKLI MAH (DEDEBULAK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KEZO MAH (YUKARITÜTEK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIRMIZI KOM MAH (MUTLU KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOCAÇOBAN KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOM MAH (SÜRENKÖK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOTANCI KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KURT DERE MAH (SÜRMELİKOÇ KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUŞBURNU KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUŞLU KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MECBURİYET MAH (HEYBELİYURT KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MOLLAKARA KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MUTLU KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OĞULOBA KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OMUZBAŞI KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OTLUBAYIR MAH (OĞULOBA KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PİRALİ KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('RAHMANKULU KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAİTBEY MAH (YANIKÇUKUR KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SATICILAR KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SEYİTLER MAH (YENİÇADIR KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SOĞUKSU KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SÜRENKÖK KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SÜRMELİKOÇ KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞAHİNBEY MAH (DEDEBULAK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞAHİNŞAH KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞEKERBULAK KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TARIM MAH (GÜNBULDU KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TARLABAŞI MAH (BATIBEYLİ KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞBASAMAK KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞKESEN KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAZEKENT KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TEYİP MAH (SÜRENKÖK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TOKLUCAK KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ULUKENT KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UYSALLI KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YANIKÇUKUR KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİÇADIR KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLDURAK KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YILDIRIM KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YILDIZ KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YOL BOYU MAH (YEŞİLDURAK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YOL MAH (OMUZBAŞI KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YOL ÜSTÜ MAH (YENİÇADIR KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YOLCUPINARI KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YÖRÜKATLI KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI KARDEŞLİ MAH (AŞAĞIKARDEŞLİ KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI KÖH MAH (DEDEBULAK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI MAH (YEŞİLDURAK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI SATICILAR MAH (SATICILAR KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI UĞUR MAH (DEDEBULAK KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIAKPAZAR KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIDALÖREN KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARITÜTEK KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUVA KÖYÜ', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YÜCELER MAH (AKÇEVRE KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZORAVA MAH (BOYALAN KÖYÜ)', 277, 4902);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ABDİGÖR MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AHMEDİHANİ MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BARIŞ MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÜYÜK AĞRI MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİFTEPINAR MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HASANKEYF MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSHAKPAŞA MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOÇKIRAN MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SANAYİ MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIGÜL MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ULUYOL MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('VATAN MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH', 285, 4400);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AĞA MAH (ÜÇGÖZE KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKÇUKUR MAH (YANOBA KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKTARLA KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKTUĞLU KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALINTEPE KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALTUN TEPE MAH (GÜNYOLU KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ARPALI MAH (AYRANCI KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞ.KÜÇÜK YILANLI MAH (YILANLI KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI GÜNGÖREN MAH (GÜNGÖREN KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞITAVLA KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ATABAKAN KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYDOĞAN MAH (ORTADİREK KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYRANCI KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BARDAKLI KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BARINDI KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAŞKÖY KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEDİR MAH (BARDAKLI KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEKİRAĞIL MAH (GÖLYÜZÜ KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEREKET KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BESLER KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEZİRHANE KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BİNKAYA KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOZKURT KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOZYAYLA KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÖLÜCEK KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BULAKBAŞI KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BUYURETTİ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CEBEKÜMBET MAH (ÇİFTLİK KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇALIKÖY KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇATKIRAN MAH (YAYGINYURT KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYIR MAH (ÖRMELİ KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇETENLİ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇEVİRME MAH (GÖLYÜZÜ KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİFTLİK KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇÖMÇELİ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DAĞDELEN KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DALBAHÇE KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DARIK MAH (ESNEMEZ KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEMİR KAPI MAH (YAYGINYURT KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEMİR KILIÇ MAH (BULAKBAŞI KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEMİRTEPE KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DOLAKLI KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DOSTALİ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DURYAN MAH (GÜNYOLU KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ELLE MAH (GÖLYÜZÜ KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESKİSU KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESNEMEZ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GIR MAH (GÜNGÖREN KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKÇEBULAK MAH (ÇETENLİ KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKÇEKAYNAK KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKSÜGÜZEL MAH (ÖRMELİ KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖLLER KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖLYÜZÜ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖZÜKARA KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜLLÜCE KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜLTEPE KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜNGÖREN KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜNYOLU KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜRBULAK KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜZEL MAH (YAYGINYURT KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HALAÇ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HASO MAH (SESLİTAŞ KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNCESU KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KALE MAH (GÜNYOLU KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KALECİK KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KALHASAN MAH (GÜNGÖREN KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARABULAK KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARABURUN KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARACA KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAKENT KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAŞEYH KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARGAKONMAZ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAZAN KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KESME TAŞ MAH (BULAKBAŞI KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIZILKAYA KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KONUT MAH (YAĞMURDÜŞEN KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KONUTLAR MAH (SESLİTAŞ KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖRÜK MAH (GÜNYOLU KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUCAK KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KURUTEPE MAH (TANIKTEPE KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUTLUBULAK KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜK UZUN YAZI MAH (UZUNYAZI KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜÇÜK YILANLI MAH (YILANLI KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜNÜTEPE MAH (TANIKTEPE KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜPLÜ MAH (SAĞLIKSUYU KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MELİKŞAH KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MESCİTKÖY KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MİRAĞIL MAH (GÖLYÜZÜ KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTACA MAH (KARABURUN KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTADİREK KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTAKÖY KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖMERBEY MAH (KARAŞEYH KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖRMELİ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖRTÜLÜ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PULLUTARLA KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('RIZDE MAH (ÜZENGİLİ KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAĞDIÇ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAĞLIKSUYU KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAMANLI MAH (BEZİRHANE KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIBIYIK KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIÇAVUŞ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAZOBA KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SESLİTAŞ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SOMKAYA KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SUBEŞİĞİ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SULUÇEM KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SÜTCÜ MAH (YAYGINYURT KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞEVKET MAH (YAĞMURDÜŞEN KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAB MAH (YALINSAZ KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TANIKTEPE KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞLI MAH (ÇALIKÖY KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TELÇEKER KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TEPELİ MAH (ÇALIKÖY KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TIMIR MAH (SESLİTAŞ KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TOPÇATAN KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TUTAK KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TUTUMLU KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TÜRKMEN MAH (ÇİFTLİK KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UĞRAK MAH (MESCİTKÖY KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UZUNYAZI KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜÇGÖZE KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜÇMURAT KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜZENGİLİ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAĞMURDÜŞEN KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAKACIK MAH (GÜNGÖREN KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YALINSAZ KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YANOBA KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAYGINYURT KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİHARMAN KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİKÖY MAH (ATABAKAN KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YIĞINÇAL KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YİĞİTYATAĞI KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YOLÜSTÜ MAH (KARAŞEYH KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI MELİKŞAH MAH (MELİKŞAH KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARITAVLA KÖYÜ', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZİYARET MAH (SAĞLIKSUYU KÖYÜ)', 285, 4402);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESENTEPE MAH', 306, 4600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH', 306, 4600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH', 306, 4600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İSTİKLAL MAH', 306, 4600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARŞIYAKA MAH', 306, 4600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAZIM KARABEKİR MAH', 306, 4600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('LOZAN MAH', 306, 4600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MÜFTÜSELİM MAH', 306, 4600);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ABDİKÖY KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKYUMAK KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKYUMAK MEZRASI MAH (AKYUMAK KÖYÜ)', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALAGÜN KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALİ PAŞA MAH (MOLLASÜLEYMAN KÖYÜ)', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALKUŞAK KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ARİFBEY KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIKOPUZ KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYDOĞDU KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇATALPINAR KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇATKÖSEDAĞ KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇETİNSU KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİFTEPINAR KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DALKILIÇ KONUTLAR MAH (DALKILIÇ KÖYÜ)', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DALKILIÇ KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEĞİRMENOLUĞU KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DOLUTAŞ KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DÜZAĞIL KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DÜZYAYLA KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ERGÖZÜ KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EYÜPKOMU MAH (YAĞMURLU KÖYÜ)', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GONCALI KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖZAYDIN KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜNEYKAYA KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜVENCE KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HAN MAH (YUKARIKOPUZ KÖYÜ)', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HAREBEGÜL MAH (AYDOĞDU KÖYÜ)', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HASANPINARI KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HAYDAROĞLU KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HAYRANGÖL KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İKİZGEÇE KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İKİZGÖL KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNDERE KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KANATGEREN KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARABACAK KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYAYOLU KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOKULUPINAR KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖRPEÇAYIR KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MOLLAHÜSEYİN KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MOLLASÜLEYMAN KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖZTOPRAK KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PALAKÇAYIRI KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PİRABAT KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('POSTO MAH (GONCALI KÖYÜ)', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('RAMAZAN KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SADAKLI KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SALKIMLI KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIKÖY KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SÖBETAŞ KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SULTANABAT KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SÜZGEÇLİ KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TOPRAKKALE KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TÜRKELİ KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ULUDAL KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UZUNYAZI KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAĞMURLU KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YANIKDERE KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YELKESEN KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLOVA KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YIĞINTAŞ KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIKOPUZ KÖYÜ', 306, 4602);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYDINTEPE MAH (TAHİR BELDESİ)', 306, 4401);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARŞIYAKA MAH (TAHİR BELDESİ)', 306, 4401);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİL MAH (TAHİR BELDESİ)', 306, 4401);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞICİHANBEY MAH (YAYLADÜZÜ BELDESİ)', 306, 4640);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (YAYLADÜZÜ BELDESİ)', 306, 4640);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEĞİRMENGEÇİDİ MAH (YAYLADÜZÜ BELDESİ)', 306, 4640);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKÇAYIR MAH (YAYLADÜZÜ BELDESİ)', 306, 4640);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARŞIYAKA MAH (YAYLADÜZÜ BELDESİ)', 306, 4640);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESENTEPE MAH (YÜCEKAPI BELDESİ)', 306, 4630);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OKLAVALI MAH (YÜCEKAPI BELDESİ)', 306, 4630);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞEHİT ENGİN MAH (YÜCEKAPI BELDESİ)', 306, 4630);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLYURT MAH (YÜCEKAPI BELDESİ)', 306, 4630);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BUZHANE MAH', 412, 4850);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KALE MAH', 412, 4850);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜMBET MAH', 412, 4850);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YENİ MAH', 412, 4850);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ABDİÇIKMAZ KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ADIMOVA KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKÖREN MAH (KARAKAZAN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKYURT KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALAKOYUN KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALİAĞA MAH (KILIÇ KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALTIN YURT MAH (ÖZDİREK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞ KOYUNCU MAH (SÜLEYMANKÜMBET KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI GÖZE MAH (GÜLTEPE KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI KAYALAR MAH (YUKARIGÖZLÜCE KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI MOLLAHASAN MAH (YUVACIK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI YURT MAH (SÜLEYMANKÜMBET KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIALADAĞ KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIDEREDİBİ KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIGÖZLÜCE KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIKARABAL KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIYENİGÜN KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYDINLAR MAH (YUVACIK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYVACIK KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BALDERE KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEKCİLER MEZRASI MAH (YUVACIK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEKLEMEZ KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOZO ÇAYIRI MAH (KARAKAZAN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOZTEPE MAH (GÜMÜŞKUŞAK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CEYLANLI KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAĞLAYAN KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇEŞME MAH (ESENÖREN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DANACIK MAH (KARAKAZAN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DANAKIRAN KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEMİRKAPI KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EKİNCİK KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ERDOĞAN KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESENÖREN KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GOME MAH (BALDERE KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜLLÜCE MAH (NALLIKONAK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜLTEPE KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜMÜŞKUŞAK KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜVEÇ MAH (AŞAĞIYENİGÜN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HANİK MAH (SÜLEYMANKÜMBET KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAÇMAZ KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAMIŞLI KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KANDİLDAĞI KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARADERE MAH (SÜLEYMANKÜMBET KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARADOĞU KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARAKAZAN KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARASEYİTALİ KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARDEŞLER MAH (BEKLEMEZ KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARLICA KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYALAR MAH (ESENÖREN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYNAKLI KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KELEŞKOM MAH (YUVACIK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KILIÇ KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÖŞK KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUNCIK MAH (AŞAĞIDEREDİBİ KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MEZRA MAH (SEYİTHANBEY KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MUSABEY MAH (AYVACIK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('NALLIKONAK KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('NENİK MAH (ESENÖREN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OLUKLU MAH (ÖZDİREK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTA MOLLAHASAN MAH (YUVACIK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTAKÖY MAH (CEYLANLI KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OVAKENT MAH (ABDİÇIKMAZ KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖMERŞABAN MAH (ERDOĞAN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖRENLİ MAH (ÖZDİREK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖZDİREK KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIBUĞDAY KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SELİM MAH (ESENÖREN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SESLİDOĞAN KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SEYİTHANBEY KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SOĞANLITEPE KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SÜLEYMANKÜMBET KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞEHİT MAH (KARAKAZAN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞİKEFT MAH (YUVACIK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TATLISU MAH (CEYLANLI KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAZEKÖY MAH (CEYLANLI KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TEPECİK MAH (ABDİÇIKMAZ KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TOKLU MAH (YUVACIK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TUTAK MAH (YUKARIYENİGÜN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TÜKENMEZ KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UĞURTAŞ KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UZUN ÇEŞME MAH (AŞAĞIYENİGÜN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UZUN ÇEŞME MAH (YUKARIALADAĞ KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜÇ EVLER MAH (SÜLEYMANKÜMBET KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAMAÇ MAH (EKİNCİK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAPILI KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAZILI MAH (KARAKAZAN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİL MAH (YUKARIYENİGÜN KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YK KUYUNCU MAH (SÜLEYMANKÜMBET KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YK YURT MAH (SÜLEYMANKÜMBET KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YK. MOLLAHASAN MAH (YUVACIK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YOĞUNHİSAR KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YOĞURTÇU MAH (GÜLTEPE KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI DEREDİBİ MAH (AŞAĞIDEREDİBİ KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI GÖZE MAH (GÜLTEPE KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI KAYA MAH (GÜLTEPE KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIALADAĞ KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIEKİNCİK MAH (EKİNCİK KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIGÖZLÜCE KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARITEPECİK MAH (ABDİÇIKMAZ KÖYÜ)', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIYENİGÜN KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUVACIK KÖYÜ', 412, 4852);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('100.YIL MAH', 615, 4200);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALPASLAN MAH', 615, 4200);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH', 615, 4200);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FEVZİ ÇAKMAK MAH', 615, 4200);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FIRAT MAH', 615, 4200);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KURTULUŞ MAH', 615, 4200);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MEHMET AKİF ERSOY MAH', 615, 4200);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MURAT MAH', 615, 4200);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ABİDE MAH', 615, 4100);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIKÜPKIRAN MAH', 615, 4100);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAHÇELİEVLER MAH', 615, 4100);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH', 615, 4100);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GAZİ MAH', 615, 4100);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HÜRRİYET MAH', 615, 4100);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAZIM KARABEKİR MAH', 615, 4100);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('LEYLEK PINAR MAH', 615, 4100);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SITKIYE MAH', 615, 4100);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAVUZ MAH', 615, 4100);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AĞILBAŞI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AĞRI OSB MAH (MURAT KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AHMETBEY KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKBULGUR KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKÇAY KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALTINÇAYIR MAH (KOCATAŞ KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ANAKAYA KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ARAKONAK KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ARAP MAH (ÇOBANBEYİ KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ASLANGAZİ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI PINAR MAH (UZUNVELİ KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIAĞADEVE KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIDÜRMELİ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIKENT KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIPAMUKTAŞ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞISAKLICA KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞISUBAŞI MAH (KOVANCIK KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIYOLDÜZÜ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞKALE KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AYRANLI MAH (KOVANCIK KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BADILLI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BALIKSU KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BALKAYNAK KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BALLIBOSTAN KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BALOLUK KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAŞÇAVUŞ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAŞKENT KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEŞBULAK KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEŞİKTEPE KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BEZİRHANE KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOZTOPRAK KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BÖLÜKBAŞI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMAÇAY KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAKIROBA KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAMURLU KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇATALİPAŞA KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYIR MAH (OĞLAKLI KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYIRKÖY KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇOBANBEYİ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇUKURALAN KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇUKURÇAYIR KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DARBOĞAZ MAH (YUKARIAĞADEVE KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DARICA MAH (KOVANCIK KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEDEMAKSUT KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DOĞUTEPE KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DÖNERDERE KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DUMANLI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EĞRİBELEN KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ELİAÇIK KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESEN KÖY MAH (ESENKÖY KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESENKÖY KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESKİHARMAN KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FERHAT MAH (SARICA KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GEÇİTALAN KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖLSEVTİ MAH (KOVANCIK KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜLÇİMEN MAH (YUKARIAĞADEVE KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜMÜŞYAZI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜNEYSU KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜVENDİK KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜVENLİ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HACISEFER KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HANOBA KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HIDIR KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KALENDER KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARASU KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAVACIK KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAVAKKÖY KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYABEY KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAZLI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOCATAŞ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOÇBAŞI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOMİK MAH (CUMAÇAY KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KONAK MAH (MOLLAOSMAN KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KONUKTEPE KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOVANCIK KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUMLUGEÇİT KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MAMIK MAH (AŞAĞISAKLICA KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MEZRA MAH (AŞAĞIPAMUKTAŞ KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MEZRA MAH (DOĞUTEPE KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MOLLAALİ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MOLLAOSMAN KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MURAT KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MURATHAN KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OĞLAKLI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTAKENT KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTAYOKUŞ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OTLUBAYIR KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OZANLAR KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖZBAŞI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖZVEREN KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PINARCIK MAH (KOVANCIK KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('REŞO MAH (SARICA KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SABUNCU KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAĞIRTAŞ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARICA KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIDOĞAN KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARIHARMAN KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SARITAŞ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SOĞANCUMAÇAY KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SOĞANKÖY KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SÖĞÜTLÜ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SUÇATAĞI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAŞTEKNE KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAYPINAR KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TELLİSIRT KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TEZEREN KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('UÇARKAYA KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜÇ EVLER MAH (MURAT KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAKINCA KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YALNIZKONAK KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAYIKLI MAH (KOVANCIK KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAYLAKÖY KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAZICI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YAZILI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YIĞINTEPE KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YOLLUYAZI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YOLUGÜZEL KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YONCALI KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YORGUNSÖĞÜT KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI PINAR MAH (UZUNVELİ KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARI SUBAŞI MAH (SARIHARMAN KÖYÜ)', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIAĞADEVE KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIDÜRMELİ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIKÜPKIRAN KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIPAMUKTAŞ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARISAKLICA KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIYOLDÜZÜ KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YURTPINAR KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZİYARET KÖYÜ', 615, 4010);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKBULUT MAH (DEDELİ BELDESİ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ARPACIK MAH (BOZOĞLAK KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BALCILAR MAH (KARBASAN KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAŞTARLA KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BATIBEYLİ MAH (BOZOĞLAK KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BOZOĞLAK KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BUDAK MAH (DEDELİ BELDESİ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CIZVIZ MAH (PİRÖMER KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (DEDELİ BELDESİ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAVUŞ MAH (BOZOĞLAK KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAYBAŞI MAH (DEDELİ BELDESİ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİÇEK MAH (HASANDOLU KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇİMENLİ KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇUKURBAĞ KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DAMBAT MAH (BAŞTARLA KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEĞİRMEN MAH (DEDELİ BELDESİ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEĞİRMENDÜZÜ KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DERECİK KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEREKOMU MAH (KARBASAN KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ERYILMAZ KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('FATİH MAH (BOZOĞLAK KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜNDÜZ KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HASANDOLU KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HİSAR KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARBASAN KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAŞ KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KELEŞLER MEZRASI MAH (ÇUKURBAĞ KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIZILAĞIL MAH (DEĞİRMENDÜZÜ KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MERKEZ MAH (DEDELİ BELDESİ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MEYDANDAĞI KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ORTADAMLA KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖRENDİK KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('PİRÖMER KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞEYTANOVA MAH (BAŞTARLA KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TOZBELEN MAH (ORTADAMLA KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÜZÜMLÜ MAH (DEDELİ BELDESİ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLÇİMEN MAH (BOZOĞLAK KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLHİSAR KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YEŞİLOVA MAH (DEDELİ BELDESİ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YK.HIRBE MAH (BOZOĞLAK KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('YUKARIDAMLA KÖYÜ', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZALİ MAH (DERECİK KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ZÜBEYT KOMU MAH (BOZOĞLAK KÖYÜ)', 673, 4503);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKÇAÖREN KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKDİLEK KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AKYEMİŞ KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ALATAY KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ANDAÇLI KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞI TEPE ÖNÜ MAH (TANYELİ KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIGÖÇMEZ KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('AŞAĞIKAMIŞLI KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BAHÇELİ MAH (AKDİLEK KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BALTACIK KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('BUDAK KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('CUMHURİYET MAH (LİÇ MAH) (YALÇINKAYA KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAKIRBEY KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAMURLU KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÇAVUŞKÖY KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DEMİRÖREN KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DERMO MAH (AKYEMİŞ KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DİBEK MAH (YUKARIGÖÇMEZ KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DİKİLİTAŞ MAH (YUKARIKÜLECİK KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DİNÇER MAH (EDREMİT KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DOĞANSU KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DÜZCE MAH (TANYELİ KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('DÜZCELİ KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EDREMİT KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ESKİKONAK KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('EVREN MAH (HACILAR KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GEÇİT MAH (YUKARIKÜLECİK KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GELEBIZIN MAH (AKÇAÖREN KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÖKOĞLU KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜL MAH (BALTACIK KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜLÇİMEN MAH (HACILAR KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜLDÜZ MAH (AKDİLEK KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜLLÜCE KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('GÜZELDERE MAH (TANYELİ KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HACILAR KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('HALİFE MAH (UZUNGÜN KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('İNCESU MAH (YUKARIGÖÇMEZ KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KALE MAH (ALATAY KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KANIŞEVİTİ MAH (YUKARIKÜLECİK KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KARATOKLU KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KAYADİBİ MAH (TANYELİ KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIZILTEPE KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KIZKAPAN KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KOÇAKLAR KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KONAKBEYİ KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KURUYAKA KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KUŞKAYA KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜNCÜK MAH (SAĞRICA KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('KÜREKLİ KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MEZRA MAH (TANYELİ KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MEZRA MAH (YÜREKVEREN KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('MOLLAİBRAHİM KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('OYACIK KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ÖZDEMİR KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SAĞRICA KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SALAHANE MAH (YUKARIKÜLECİK KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SULUCA KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('SUSUZ KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞEKEROVA MAH (AKDİLEK KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('ŞIRIK MAH (ÇAKIRBEY KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TANGUÇ MAH (KURUYAKA KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TANYELİ KÖYÜ', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TAPU MAH (ÇAKIRBEY KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TEKİK MAH (KURUYAKA KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('TEKMAL MAH (SUSUZ KÖYÜ)', 673, 4502);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TEPELİ KÖYÜ', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TURGUT ÖZAL MAH', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('USLUCA KÖYÜ', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('UZUNCA KÖYÜ', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('UZUNGÜN KÖYÜ', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÜÇOYMAK KÖYÜ', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('VARAN MAH (YUKARIKÜLECİK KÖYÜ)', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('Y.SALAHANA MAH (TANYELİ KÖYÜ)', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YALÇINKAYA KÖYÜ', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAYALAR MAH (TANYELİ KÖYÜ)', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİCE MAH (YUKARIGÖÇMEZ KÖYÜ)', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARI TEPE ÖNÜ MAH (TANYELİ KÖYÜ)', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARIGÖÇMEZ KÖYÜ', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARIKAMIŞLI KÖYÜ', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARIKÜLECİK KÖYÜ', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARIMAHALLE MAH (YUKARIGÖÇMEZ KÖYÜ)', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUSUF MAH (ÇAVUŞKÖY KÖYÜ)', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YÜNCÜLER KÖYÜ', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YÜREKVEREN KÖYÜ', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZİNCİRKALE KÖYÜ', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZİYARET KÖYÜ', 04502, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('14 NİSAN MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ABDULVEHAP KÜFREVİ MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AHMED-İ HANİ MAHALLESİ MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALPASLAN MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATATÜRK MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BADİŞAN MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CAMİ MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAY MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNÖNÜ MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SANAYİ MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARISU MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SELAHADDİNİ EYYUBİ MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SERHAD MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SÜPHAN DAĞI MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SÜTLÜ PINAR MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİ MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİL ÇİMEN MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUNUSEMRE MAH', 04500, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ABDULLAH MAH (TAŞKIN KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ADALET MAH (KÖSELER KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKTEPE KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ARMUTLU KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAĞBAŞI KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOZO MAH (ZİREKLİ KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CANİK MAH (GENÇALİ KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇAPUTLU KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇATMAOLUK KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇEVLİK MAH (ZİREKLİ KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇİÇEK KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇORTALİ MAH (KAZANBEY KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇUBUKLU MAH (ERGEÇLİ KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAĞALAN KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DİZGİNKALE KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ERGEÇLİ KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESENBEL KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESENTEPE MAH (ERGEÇLİ KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GENÇALİ KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖKÇEALİ KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖL MAH (GÖKÇEALİ KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖL MAH (TAŞKIN KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖNLÜAÇIK KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜNBELİ KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜVERCİNLİ KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HARABEKENT MAH (TAŞKIN KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HAZNE MAH (GÖKÇEALİ KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HIRBA GÜLAN MAH (ZİREKLİ KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HIRBE MAH (KAZANBEY KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARABULAK MAH (GÖNLÜAÇIK KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAZANBEY KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KEÇELBABA KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÖSELER KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUCAK KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MALTEPE MAH (AKTEPE KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('MECNUNGÖLÜ MAH (ERGEÇLİ KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ONBAŞILAR KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SARIDİBEK KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SATIBULAK MAH (ZİREKLİ KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAŞKIN KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÜRKÜT KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAĞIZ MAH (ÜRKÜT KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLCE MAH (ARMUTLU KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YEŞİLYURT KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YILANLI MAH (ERGEÇLİ KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YK.DUMANLI MAH (ÇAPUTLU KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YURTÖVEN KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZİREKLİ KÖYÜ', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ZORAVA MAH (ERGEÇLİ KÖYÜ)', 04510, 673);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ADAKENT MAH (TANYOLU KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALAKOÇLU KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ARAS KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIDUMANLI KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIDÜZMEYDAN KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIESEN KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞITOKLU KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BALÇİÇEK KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAYIRALTI KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAYRAMYAZI KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOYUNCAK KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇERMİK MAH (ÇÖĞÜRLÜ KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇÖĞÜRLÜ KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇÖKELGE KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇÖKELGE MAH (ÇÖKELGE KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DİLEKYAZI KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÖŞEME MAH (ALAKOÇLU KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÜZGÖREN KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESEN MAH (KUMLUBUCAK KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GEÇİTVEREN KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÖZUCU KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜLTEPE MAH (SAMANYOLU KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜMÜŞLÜ MAH (YELTEPE KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜNDOĞDU KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜNEYSÖĞÜT KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İKİYAMAÇ KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('İNANLI MAH (SAMANYOLU KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KADO MAH (TAŞTEKER KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAĞNILI KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAĞNILI MAH (KAĞNILI KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KARAGÖZ KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KAYALIK MAH (TANYOLU KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUMLUBUCAK KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KUMLUCA KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('KÜREKLİ MAH (TANRIVERDİ KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SAMANYOLU KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SATİKOMU MAH (GÖZUCU KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('SİVRİCE MAH (YUKARIDÜZMEYDAN KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TANRIVERDİ KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TANYOLU KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('TAŞTEKER KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YANALYOL KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YANKAYA KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YARDIMCILAR KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YASSIKAYA KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAYLACIK MAH (TANRIVERDİ KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YAYLACIK MAH (TANYOLU KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YELTEPE KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YENİKÖY MAH (KUMLUCA KÖYÜ)', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARIDUMANLI KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARIDÜZMEYDAN KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARIESEN KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARITAŞLIÇAY KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('YUKARITOKLU KÖYÜ', 04802, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('15 TEMMUZ ŞEHİTLER MAH', 04800, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ADNAN MENDERES MAH', 04800, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('CUMHURİYET MAH', 04800, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HÜRRİYET MAH', 04800, 805);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ADA MAH (SOĞUKPINAR KÖYÜ)', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ADAKENT KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AHMETABAT KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKSU MAH (PALANDÖKEN KÖYÜ)', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AKYELE KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALACAHAN KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ALİHİRCO MAH (UZUNÖZ KÖYÜ)', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIKARAHALİT KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIKARGALIK KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIKÖŞKKÖY KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIKÜLECİK KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AŞAĞIÖZDEK KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATABİNDİ KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ATAKÖY KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AYDIN MAH (ÇELEBAŞI KÖYÜ)', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('AZİZLER KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAHÇE KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BATMIŞ KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BAYINDIR KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BEYDAMARLI KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BİNTOSUN KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BİŞİ KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOLAŞLI KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BOZKAŞ KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BULUTPINAR KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('BURNUBULAK KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇELEBAŞI KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇIRPILI KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇOBANOBA KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ÇUKURKONAK KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAĞLICA KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DALDALIK KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAMLAKAYA KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DAYIPINARI KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DEREKÖY KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DİBELEK KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DİKBIYIK KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DİKME KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DOĞANGÜN KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DORUKDİBİ KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÖNERTAŞ KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('DÖŞKAYA KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EDİSLER MAH (KARAAĞAÇ KÖYÜ)', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('EKİNCEK KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ERDAL KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ERGEÇİDİ KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('ESMER KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GEÇİMLİ KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜLÇİMEN MAH (AŞAĞIKÖŞKKÖY KÖYÜ)', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜLÇİMEN MAH (ÇELEBAŞI KÖYÜ)', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜLTEPE KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('GÜNEŞGÖREN KÖYÜ', 04702, 833);
INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES ('HACI ALİ KOMU MAH (ÖNDÜL KÖYÜ)', 04702, 833);
-- 4000 dahil bitti devamını ekleyeceğim


SET FOREIGN_KEY_CHECKS = 0;

-- Tablonuzu tamamen boşaltma
-- Lütfen 'your_table_name' yerine boşaltmak istediğiniz tablonuzun adını yazın.
TRUNCATE TABLE Employees;

-- Yabancı anahtar kontrollerini tekrar etkinleştirme
SET FOREIGN_KEY_CHECKS = 1;

select * from Districts