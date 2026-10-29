-- -- alter table pasien
-- -- 	alter column jenis_kelamin varchar(1) check('L' or 'P') not null;
-- 1. Soal 1 --
create table pasien (
	id_pasien int generated always as identity primary key,
	nik varchar(16) not null unique,
	nama_pasien varchar(150) not null,
	jenis_kelamin varchar(1) default 'L'
);

create table dokter (
	id_dokter int generated always as identity primary key,
	nama_dokter varchar(150) not null,
	nama_izin_praktek varchar(30) unique,
	pengalaman_tahun int default 0 check(pengalaman_tahun >= 0),
	id_poli int,
	constraint fk_poli
		foreign key (id_poli)
		references poliklinik(id_poli)
);

create table rekam_medis (
	id_rm int generated always as identity primary key,
	keluhan text not null,
	biaya_pemeriksaan double precision default 150000,
	id_pasien int,
	id_dokter int,
	CONSTRAINT fk_pasien
		foreign key (id_pasien)
		references pasien(id_pasien),
	constraint fk_dokter
		foreign key (id_dokter)
		references dokter(id_dokter)
);

create table resep_obat (
	id_resep int generated always as identity primary key,
	nama_obat varchar(100) not null,
	jumlah int check(jumlah > 0),
	id_rm int,
	constraint fk_rekam_medis
		foreign key (id_rm)
		references rekam_medis(id_rm)
);
 