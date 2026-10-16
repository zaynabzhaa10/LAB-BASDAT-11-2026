SET search_path TO classicmodels;

--1
select 
	ordernumber, 
	upper(productcode) as "Kode Produk",
	quantityordered,
	priceeach 
from orderdetails
where ((quantityordered between 20 and 50) or (priceeach < 30)) and (productcode ilike 'S18%')
order by quantityordered desc;