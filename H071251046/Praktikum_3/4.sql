SET search_path TO classicmodels;

--4
select
	ordernumber,
	orderdate,
	shippeddate,
	extract(year from orderdate) as "Tahun",
	extract(month from orderdate) as "Bulan",
	shippeddate - orderdate as "Lama Pengiriman",
    AGE(shippeddate, orderdate) as "Interval Pengiriman",
    current_date as "Tanggal Laporan",
    current_time as "Waktu Laporan"
from orders
where shippeddate is not null;