SET search_path TO classicmodels;

--5
select
	ordernumber,
	orderdate,
	shippeddate,
	orderdate + interval '10 days' as "Estimasi Kirim",
	coalesce(shippeddate, orderdate + interval '10 days') as "Tanggal Aktual",
	age(shippeddate, orderdate) as "Selisih Waktu"
from orders
where comments ilike '%customer%' and (extract(month from orderdate) between 10 and 12) and ordernumber % 2 = 1
order by  orderdate desc;