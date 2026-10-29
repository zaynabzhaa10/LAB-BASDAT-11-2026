
SELECT 
    customerNumber,
    SUM(amount) AS total_setoran
FROM payments
GROUP BY customerNumber
HAVING SUM(amount) > 80000
ORDER BY total_setoran DESC;