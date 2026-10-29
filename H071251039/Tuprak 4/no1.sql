SELECT 
    customerNumber,
    SUM(amount) AS total_setoran,
    COUNT(checkNumber) AS frekuensi_setoran,
    MAX(amount) AS setoran_terbesar
FROM payments
GROUP BY customerNumber
HAVING COUNT(checkNumber) > 4 
   AND AVG(amount) > 20000;