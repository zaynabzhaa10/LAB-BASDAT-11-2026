-- 2. Soal 2 --
alter table pasien
	add column gol_darah varchar(2);

alter table resep_obat
	alter column nama_obat type text;
