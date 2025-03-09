CREATE TABLE Hasta_bilgileri (
    hasta_tc VARCHAR(11) PRIMARY KEY,
    ad VARCHAR(30) NOT NULL,
    soyad VARCHAR(30) NOT NULL,
    yas INT(150) NOT NULL,
    cinsiyet VARCHAR(10) NOT NULL,
    tel_no VARCHAR(11) NOT NULL
);

CREATE TABLE Recete (
    recete_id INT(50) PRIMARY KEY,
    hasta_tc VARCHAR(11),
    ilac_adi VARCHAR(50),
    doz VARCHAR(50),
    siklik VARCHAR(50),
    yontem VARCHAR(20),
    FOREIGN KEY (hasta_tc) REFERENCES Hasta_bilgileri(hasta_tc)
);

CREATE TABLE Fatura (
    fatura_id INT(50) PRIMARY KEY,
    hasta_tc VARCHAR(11),
    toplam_tutar INT,
    odenen_tutar INT,
    kalan_tutar INT,
    FOREIGN KEY (hasta_tc) REFERENCES Hasta_bilgileri(hasta_tc)
);

CREATE TABLE Doktor (
    doktor_id INT(50) PRIMARY KEY,
    doktor_ad VARCHAR(30),
    doktor_soyad VARCHAR(30),
    doktor_oda_no INT
);

CREATE TABLE Poliklinik (
    poliklinik_id INT(50) PRIMARY KEY,
    poliklinik_ad VARCHAR(50),
    doktor_id INT(50),
    FOREIGN KEY (doktor_id) REFERENCES Doktor(doktor_id)
);

CREATE TABLE Randevu (
    randevu_id INT(50) PRIMARY KEY,
    hasta_tc VARCHAR(11),
    tarih DATETIME,
    durum VARCHAR(20),
    poliklinik_id INT(50),
    FOREIGN KEY (hasta_tc) REFERENCES Hasta_bilgileri(hasta_tc),
    FOREIGN KEY (poliklinik_id) REFERENCES Poliklinik(poliklinik_id)
);
