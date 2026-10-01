INSERT INTO mahasiswa (nim, nama, ipk, email, id_prodi)
VALUES
('H071251017', 'Raikhan', 3.50, 'Raikhan@gmail.com', 1),
('H071251074', 'Arda', 3.50, 'Arda@gmail.com', 2),
('H071251090', 'Bellingham', 3.50, 'Bellingham@gmail.com', 1);

UPDATE mahasiswa
SET ipk = 3.75
WHERE ipk = 3.50;
RETURNING*;

DELETE FROM mahasiswa
WHERE email IS NULL;
RETURNING*;

SELECT * FROM mahasiswa;