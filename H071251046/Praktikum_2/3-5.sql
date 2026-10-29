SET search_path TO classicmodels;

--3
select 
	customernumber as "Nomor Pelanggan",
	customername as "Nama Pelanggan",
	phone as "Telepon",
	country as "Negara" 
from customers;

--4
select productcode, productname, buyprice from products
where buyprice > 50
order by buyprice
limit 7;

--5
select distinct country as "Negara Pelanggan" from customers
order by country
limit 5
offset 5;