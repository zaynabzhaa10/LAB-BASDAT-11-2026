SET search_path TO classicmodels;

--soal tambahan live coding
select
	upper(productname) as "Nama Produk",
	msrp as "Harga Retail"
from products
where productline ilike '%car%' and msrp > 60
order by msrp desc;