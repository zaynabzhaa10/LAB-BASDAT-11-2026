-- soal 1

CREATE TABLE cabang_gudang (
id_cabang int generated always as identity primary key,
kota_cabang varchar(50) not null unique 
);

create table paket_kiriman (
no_resi varchar(12) primary key, 
nama_penerima varchar(100) not null, 
tgl_kirim date not null,
ongkir numeric (10,2) default 10000.00 check (ongkir >= 0),
id_cabang int, 
foreign key (id_cabang)
references cabang_gudang(id_cabang)
);


-- soal 2
insert into cabang_gudang (kota_cabang) values
('Makassar'),
('Surabaya'),
('Bandung');


insert into paket_kiriman (no_resi, nama_penerima, tgl_kirim, ongkir, id_cabang)
values

('RESI-001', 'Hendra Wijaya', '2026-10-01', 45000.00, 1),
('RESI-002', 'Laila Sari', '2026-10-02', 25000.00, 2),
('RESI-003', 'Dimas Anggara', '2026-10-02', 60000.00, 1),
('RESI-004', 'Rina Nose', '2026-10-03', Default, 3),
('RESI-005', 'Tono Sudirjo', '2026-10-04', 35000.00, 2);


select p.no_resi, p.nama_penerima, p.tgl_kirim, p.ongkir, c.kota_cabang
from paket_kiriman p
join cabang_gudang c
on p.id_cabang = c.id_cabang
order by p.no_resi;

-- soal 3
alter table paket_kiriman
add column status_pengiriman varchar(30)
default 'Dalam Perjalanan';

update paket_kiriman 
set ongkir = 50000.00
where no_resi = 'RESI-001'

select no_resi, nama_penerima, ongkir, status_pengiriman
from paket_kiriman 
where ongkir = 30000.00
order by ongkir desc
limit 3;

drop table paket_pengiriman;

drop cabang_gudang;



