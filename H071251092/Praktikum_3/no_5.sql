SELECT ordernumber,
	orderdate,
	shippeddate,
	orderdate + INTERVAL '10 DAYS' AS "Estimasi Kirim", 
	COALESCE(shippeddate, orderdate + INTERVAL '10 DAYS') AS "Tanggal Aktual",
	AGE(shippeddate,orderdate) AS "Selisih Waktu"
FROM orders
WHERE comments ILIKE '%customer%' AND
	EXTRACT(MONTH FROM orderdate) BETWEEN 10 AND 12 AND
	ordernumber % 2 = 1
ORDER BY orderdate DESC;