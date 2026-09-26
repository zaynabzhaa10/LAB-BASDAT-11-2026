SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY table_name;

SOAL 1
CREATE TABLE poliklinik (
    id_poli SERIAL PRIMARY KEY,
    nama_poli VARCHAR(50) NOT NULL UNIQUE,
    gedung VARCHAR(50) NOT NULL
);

CREATE TABLE pasien (
    id_pasien SERIAL PRIMARY KEY,
    nik VARCHAR(16) NOT NULL UNIQUE,
    nama_pasien VARCHAR(150) NOT NULL,
    jenis_kelamin CHAR(1)
        CHECK (jenis_kelamin IN ('L', 'P'))
);

CREATE TABLE doktor (
    id_dokter SERIAL PRIMARY KEY,
    nama_dokter VARCHAR(150) NOT NULL,
    no_izin_praktek VARCHAR(30) UNIQUE,
    pengalaman_tahun INTEGER DEFAULT 0
        CHECK (pengalaman_tahun >= 0),
    id_poli INTEGER,

    CONSTRAINT fk_doktor_poli
        FOREIGN KEY (id_poli)
        REFERENCES poliklinik(id_poli)
);

CREATE TABLE rekam_medis (
    id_rm SERIAL PRIMARY KEY,
    keluhan TEXT NOT NULL,
    biaya_pemeriksaan NUMERIC(15,2) DEFAULT 150000,
    id_pasien INTEGER,
    id_dokter INTEGER,

    CONSTRAINT fk_rm_pasien
        FOREIGN KEY (id_pasien)
        REFERENCES pasien(id_pasien),

    CONSTRAINT fk_rm_dokter
        FOREIGN KEY (id_dokter)
        REFERENCES doktor(id_dokter)
);

CREATE TABLE resep_obat (
    id_resep SERIAL PRIMARY KEY,
    nama_obat VARCHAR(100) NOT NULL,
    jumlah INTEGER CHECK (jumlah > 0),
    id_rm INTEGER,

    CONSTRAINT fk_resep_rm
        FOREIGN KEY (id_rm)
        REFERENCES rekam_medis(id_rm)
);

 SOAL 2
ALTER TABLE pasien
ADD COLUMN gol_darah VARCHAR(2);

ALTER TABLE resep_obat
ALTER COLUMN nama_obat TYPE TEXT;

ALTER TABLE poliklinik
DROP COLUMN gedung;

 SOAL 3
DROP TABLE resep_obat;

DROP TABLE rekam_medis;