# 🏥 Sağlık Ocağı Yönetim Sistemi (SQL Database)

Bu proje, bir sağlık ocağındaki **hasta kayıtları, doktor bilgileri, randevular ve reçete işlemlerini** yönetmek için tasarlanmış bir SQL veritabanıdır. Sağlık verilerini düzenli ve erişilebilir bir şekilde yönetmek amacıyla geliştirilmiştir.

## 📂 Proje İçeriği

- **schema.sql** → Veritabanı şeması, tablolar ve ilişkileri içerir.
- **queries.sql** → Hasta ekleme, randevu alma, reçete oluşturma gibi işlemleri içeren SQL sorguları.

## 🛠️ Kullanılan Teknolojiler

Bu veritabanı, aşağıdaki veritabanı yönetim sistemlerinden biriyle kullanılabilir:
- **PostgreSQL** / **MySQL** / **MSSQL**  

## ⚙️ Kurulum ve Kullanım

1️⃣ **Veritabanını oluştur**  
Kendi veritabanını oluşturmak için aşağıdaki adımları takip edebilirsin:  

```sql
CREATE DATABASE saglik_ocagi;
2️⃣ Şemayı içe aktar
mysql -u kullanici_adi -p saglik_ocagi < schema.sql

3️⃣ Örnek sorguları çalıştır
SELECT * FROM hastalar;

📊 Veritabanı Şeması
Aşağıda temel tabloların yapısını gösteren örnek bir açıklama bulunmaktadır:

hastalar (id, ad, soyad, dogum_tarihi, telefon, adres)
doktorlar (id, ad, soyad, uzmanlik_alani, telefon)
randevular (id, hasta_id, doktor_id, tarih, saat, durum)
receteler (id, hasta_id, doktor_id, ilac_adi, dozaj, tarih)

🔍 Örnek SQL Sorguları
-Yeni Hasta Ekleme
INSERT INTO hastalar (ad, soyad, dogum_tarihi, telefon, adres)  
VALUES ('Ali', 'Yılmaz', '1990-05-12', '05551234567', 'İstanbul, Türkiye');

-Doktorlara Göre Randevu Listesi
SELECT doktorlar.ad, doktorlar.soyad, randevular.tarih, randevular.saat  
FROM randevular  
JOIN doktorlar ON randevular.doktor_id = doktorlar.id  
ORDER BY randevular.tarih;

