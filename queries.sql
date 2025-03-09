-- Sorgu 1: Hasta bilgileri ile fatura bilgilerini hasta_tc sütunu üzerinden birleştirir.
-- Bu sorgu, her hastanın TC kimlik numarası, adı, soyadı ve toplam fatura tutarını getirir.
-- 'hb' alias'ı Hasta_bilgileri tablosu için kullanılmıştır.
-- 'f' alias'ı Fatura tablosu için kullanılmıştır.
SELECT 
    hb.hasta_tc,
    hb.ad,
    hb.soyad,
    f.toplam_tutar
FROM 
    Hasta_bilgileri hb
INNER JOIN 
    Fatura f ON hb.hasta_tc = f.hasta_tc;

-- Sorgu 2: Randevu bilgileri ile poliklinik bilgilerini poliklinik_id sütunu üzerinden birleştirir.
-- Bu sorgu, her randevunun ID'si, hastanın TC kimlik numarası, randevu tarihi ve poliklinik adını getirir.
-- 'r' alias'ı Reçete tablosu için kullanılmıştır.
-- 'p' alias'ı Poliklinik tablosu için kullanılmıştır.
SELECT 
    r.randevu_id,
    r.hasta_tc,
    r.tarih,
    p.poliklinik_ad
FROM 
    Randevu r
INNER JOIN 
    Poliklinik p ON r.poliklinik_id = p.poliklinik_id;
