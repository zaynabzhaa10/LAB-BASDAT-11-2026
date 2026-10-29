CREATE TABLE prodi (
	id_prodi INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	nama_prodi VARCHAR(100) NOT NULL
)

CREATE TABLE mahasiswa (
	nim CHAR(10) NOT NULL,
	nama VARCHAR(100) NOT NULL,
	ipk NUMERIC(3, 2) DEFAULT 0.00,
	email VARCHAR(150) UNIQUE,
	id_prodi INT,
	CONSTRAINT fk_mahasiswa_prodi
		FOREIGN KEY (id_prodi)
		REFERENCES prodi(id_prodi)
);


INSERT INTO prodi (nama_prodi)
VALUES ('Sistem Informasi');

INSERT INTO prodi(nama_prodi)
VALUES 
	('Ilmu Aktuaria'), 
	('Matematika'), 
	('Biologi'), 
	('Fisika'), 
	('Kimia'), 
	('Geofisika'), 
	('Statistika');

INSERT INTO mahasiswa
VALUES 
	('H071251048', 'Heindro Pakhsi Hidayat', 4.00),
	('H071251018', 'Muhammad Farhan Nurrahmat Latif', 4.00),
	('H071251052', 'Ilmi Ahmad Alfaridzi', 4.00);

INSERT INTO mahasiswa
VALUES (
'H071251031', 'Muh. Alief Nur Afanni Arfan', 4.00
)

UPDATE mahasiswa
SET id_prodi = 1
WHERE nim = 'H071251031';

UPDATE mahasiswa
SET email = 'aliefnurarfan@gmail.com'
WHERE nim = 'H071251031';

DELETE FROM mahasiswa
WHERE nim = 'HO71251031';

DELETE FROM mahasiswa
WHERE email IS NULL;


SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';

SELECT * FROM mahasiswa;
SELECT * FROM prodi;

-- soal 1
INSERT INTO mahasiswa
VALUES 
	('H071251048', 'Heindro Pakhsi Hidayat', null, null, 1),
	('H071251018', 'Muhammad Farhan Nurrahmat Latif', null, 'farhan.nurrahmat@gmail.com', 1),
	('H071251052', 'Ilmi Ahmad Alfaridzi', null, 'i.aalfaridzi@gmail.com', 1);
SELECT * FROM mahasiswa;

-- soal 2
UPDATE mahasiswa
SET ipk = 3.50
WHERE id_prodi = 1;

UPDATE mahasiswa
SET ipk = 3.75
WHERE ipk = 3.50;

DELETE FROM mahasiswa
WHERE email IS NULL;
SELECT * FROM mahasiswa;