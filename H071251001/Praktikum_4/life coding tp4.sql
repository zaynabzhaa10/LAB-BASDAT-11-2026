SET search_path = classicmodels, public;

SELECT country, COUNT(*) AS jumlah_pelanggan
FROM customers
GROUP BY country
HAVING COUNT(*) >= 5
ORDER BY jumlah_pelanggan;



