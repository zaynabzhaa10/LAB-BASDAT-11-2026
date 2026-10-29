SELECT 
    productCode,
    SUM(quantityOrdered) AS total_unit,
    SUM(quantityOrdered * priceEach) AS estimasi_pendapatan_kotor,
    ROUND(AVG(priceEach), 2) AS rata_rata_harga,
    (MAX(priceEach) - MIN(priceEach)) AS rentang_volatilitas
FROM orderdetails
WHERE quantityOrdered > 20
GROUP BY productCode
HAVING SUM(quantityOrdered * priceEach) > 50000
ORDER BY estimasi_pendapatan_kotor DESC;