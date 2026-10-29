SELECT
    productCode,
    SUM(quantityOrdered) AS total_terjual,
    COUNT(DISTINCT orderNumber) AS jumlah_pesanan
FROM orderdetails
GROUP BY productCode
HAVING SUM(quantityOrdered) > (SELECT AVG(quantityOrdered) FROM orderdetails)
   AND COUNT(DISTINCT orderNumber) > 10
ORDER BY total_terjual DESC;
