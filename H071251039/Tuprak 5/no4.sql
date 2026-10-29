SELECT 
    p.productLine,
    SUM(od.quantityOrdered) AS total_terjual,
    ROUND(AVG(od.priceEach), 2) AS rata_rata_harga,
    ROUND(AVG(((p.MSRP - od.priceEach) / p.MSRP) * 100), 2) AS avg_discount_percentage
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.productLine
HAVING SUM(od.quantityOrdered) > 3000 
   AND AVG(od.priceEach) > 80
ORDER BY total_terjual DESC;