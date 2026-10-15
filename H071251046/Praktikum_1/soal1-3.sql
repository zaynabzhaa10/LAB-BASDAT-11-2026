--1
CREATE TABLE poliklinik (
	id_poli SERIAL PRIMARY KEY,
	nama_poli VARCHAR(50) NOT NULL UNIQUE,
	gedung VARCHAR(50) NOT NULL
);

CREATE TABLE pasien (
	id_pasien SERIAL PRIMARY KEY,
	nik VARCHAR(16) NOT NULL UNIQUE,
	nama_pasien VARCHAR(150) NOT NULL,
	jenis_kelamin VARCHAR(1) CHECK (jenis_kelamin='L' OR jenis_kelamin='P')
);

CREATE TABLE dokter (
	id_dokter SERIAL PRIMARY KEY,
	nama_dokter VARCHAR(150) NOT NULL,
	no_izin_praktek VARCHAR(30) UNIQUE,
	pengalaman_tahun INTEGER DEFAULT 0 CHECK (pengalaman_tahun >= 0),
	id_poli_dokter INT,
	CONSTRAINT fk_dokter
		FOREIGN KEY (id_poli_dokter)
		REFERENCES poliklinik(id_poli)
);

CREATE TABLE rekam_medis (
	id_rm SERIAL PRIMARY KEY,
	keluhan TEXT NOT NULL,
	biaya_pemeriksaan NUMERIC DEFAULT 150000,
	id_pasien_rm INT,
	CONSTRAINT fk_pasien_rm
		FOREIGN KEY (id_pasien_rm)
		REFERENCES pasien(id_pasien),
	id_dokter_rm INT,
	CONSTRAINT fk_dokter_rm
		FOREIGN KEY (id_dokter_rm)
		REFERENCES dokter(id_dokter)
);

CREATE TABLE resep_obat (
	id_resep SERIAL PRIMARY KEY,
	nama_obat VARCHAR(100) NOT NULL,
	jumlah INTEGER CHECK (jumlah > 0),
	id_rm_obat INT,
	CONSTRAINT fk_rm_obat
		FOREIGN KEY (id_rm_obat)
		REFERENCES rekam_medis(id_rm)
);

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';

SELECT column_name, data_type, character_maximum_length, is_nullable
FROM information_schema.columns
WHERE table_name = 'dokter';

--2
ALTER TABLE pasien
ADD COLUMN gol_darah VARCHAR(2);

ALTER TABLE resep_obat
ALTER COLUMN nama_obat TYPE TEXT;

ALTER TABLE poliklinik
DROP COLUMN gedung;

--3
DROP TABLE resep_obat;

DROP TABLE rekam_medis;

DROP TABLE dokter;