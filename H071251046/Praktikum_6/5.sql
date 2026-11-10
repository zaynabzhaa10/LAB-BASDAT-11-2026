CREATE TABLE anggota (
    id SERIAL PRIMARY KEY,
    nama_anggota VARCHAR(50) NOT NULL,
    kota_domisili VARCHAR(20) NOT NULL
);

CREATE TABLE buku (
    id SERIAL PRIMARY KEY,
    judul_buku VARCHAR(100) NOT NULL,
    genre VARCHAR(20) NOT NULL,
    stok INTEGER DEFAULT 1
);

CREATE TABLE peminjaman (
    id SERIAL PRIMARY KEY,
    id_anggota INTEGER REFERENCES anggota(id),
    id_buku INTEGER REFERENCES buku(id),
    tanggal_pinjam DATE NOT NULL,
    tanggal_kembali DATE,
    denda INTEGER DEFAULT 0
);

CREATE INDEX index_buku_genre
ON buku(genre);

CREATE INDEX index_anggota_kota
ON anggota(kota_domisili);