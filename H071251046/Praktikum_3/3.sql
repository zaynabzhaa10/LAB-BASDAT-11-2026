SET search_path TO classicmodels;

--3
select
	productcode,
	productname,
	buyprice,
	msrp,
	greatest(buyprice, msrp) as "Harga Tertinggi",
	least(buyprice, msrp) as "Harga Terrendah"
from products
where productname ilike '%car%';