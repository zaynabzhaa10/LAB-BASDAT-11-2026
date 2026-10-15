INSERT INTO mahasiswa (nim, nama, email, id_prodi)
VALUES
('070507', 'Brahim Diaz', 'brahimd@gmail.com', 1),
('231006', 'Valverde', NULL, 1),
('060607', 'Vini', 'vini@gmail.com', 2)
RETURNING*;

SELECT * FROM mahasiswa;

SELECT * FROM prodi;
INSERT INTO prodi (nama_prodi)
VALUES
('Sistem Informasi'),
('Ilmu Komunikasi'),
('Manajemen');
