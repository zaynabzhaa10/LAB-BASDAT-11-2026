SET search_path TO classicmodels;

--2
select
	customernumber,
	customername,
	country,
	creditlimit,
	concat(contactfirstname, ' ', contactlastname) as "Nama Kontak",
	creditlimit - 10000 as "Selisih Kredit"
from customers
where country in ('USA', 'Canada', 'France') and creditlimit > 30000
order by creditlimit desc;