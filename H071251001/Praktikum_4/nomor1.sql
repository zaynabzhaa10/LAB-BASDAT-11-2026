SET search_path = classicmodels, public;

SELECT
	customerNumber,
	SUM(amount) AS total_pembayaran,
	COUNT(DISTINCT checkNumber) AS frekuensi_setoran,
	MAX(amount) AS setoran_terbesar
FROM payments
GROUP BY customerNumber
HAVING COUNT(DISTINCT checkNumber) >4
AND AVG(amount) > 20000;