select * from payment;

-- SOAL1
CREATE TABLE cabang_gudang(
	id_cabang INT PRIMARY KEY,
	kota_cabang VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE paket_kiriman(
	no_resi VARCHAR(12) PRIMARY KEY,
	nama_penerima VARCHAR(100) NOT NULL,
	tgl_kirim DATE NOT NULL,
	ongkir DECIMAL(10,2) DEFAULT 10000.00 CHECK( ongkir>= 0),
	id_cabang INT,
FOREIGN KEY (id_cabang) REFERENCES cabang_gudang (id_cabang)
);


-- SOAL2
INSERT INTO cabang_gudang
VALUES
(1, 'Makassar'),
(2, 'Surabaya'),
(3, 'Bandung');

INSERT INTO paket_kiriman
(no_resi, nama_penerima, tgl_kirim, ongkir, id_cabang)
VALUES
('RESI-001', 'Hendra Wijaya', '2026-10-01', 45000.00, 1),
('RESI-002', 'Laila Sari', '2026-10-02', 25000.00, 2),
('RESI-003', 'Dimas Anggara', '2026-10-02', 60000.00, 1),
('RESI-005', 'Tono Sudirjo', '2026-10-04', 35000.00, 2);



INSERT INTO paket_kiriman
(no_resi, nama_penerima, tgl_kirim, id_cabang)
VALUES
('RESI-004', 'Rina Nose', '2026-10-03', 3);

SELECT * FROM cabang_gudang;

SELECT * FROM paket_kiriman;



-- SOAL 3
ALTER TABLE paket_kiriman
ADD COLUMN status_pengiriman VARCHAR(30)
DEFAULT 'Dalam Perjalanan'
NOT NULL;


UPDATE paket_kiriman
SET ongkir = 50000
WHERE no_resi = 'RESI-001';


SELECT
    no_resi,
    nama_penerima,
    ongkir,
    status_pengiriman
FROM paket_kiriman
WHERE ongkir = 30000
ORDER BY ongkir DESC
LIMIT 3;


DROP TABLE paket_kiriman;

DROP TABLE cabang_gudang;


