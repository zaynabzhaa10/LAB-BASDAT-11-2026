SELECT
	EXTRACT (MONTH FROM orderdate) AS bulan,
	COUNT (ordernumber) AS jumlah_pesanan
	FROM orders
WHERE EXTRACT (YEAR FROM orderdate) = 2004
GROUP BY EXTRACT (MONTH FROM orderdate)
HAVING COUNT(ordernumber) > 5
ORDER BY EXTRACT (MONTH FROM orderdate);
