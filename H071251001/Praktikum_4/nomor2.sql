SET search_path = classicmodels, public;

SELECT customerNumber,
	SUM(amount) AS total_restoran
FROM payments
GROUP BY customerNumber
HAVING SUM(amount) > 80000
ORDER BY total_restoran DESC;


