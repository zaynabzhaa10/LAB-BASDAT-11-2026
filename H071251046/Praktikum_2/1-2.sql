insert into prodi(nama_prodi)
values 
	('Sistem Informasi'),
	('Matematika'),
	('Aktuaria');

--1

insert into mahasiswa (nim, nama, email, id_prodi)
values
	('H071251018', 'Muhammad Farhan Nurrahmat', 'FarhanNur@gmail.com', 1),
	('H071251031', 'Muhammad Alief Nur Afanni Arfan', 'MuhAlief@gmail.com', 1),
	('H071251046', 'Heindro Paksi Hidayat', null, 1),
	('H011251125', 'Muhammad Abrar', null, 2);

select * from mahasiswa;