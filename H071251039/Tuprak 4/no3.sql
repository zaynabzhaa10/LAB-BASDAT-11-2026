SELECT 
    productLine,
    COUNT(productCode) AS ragam_produk,
    ROUND(AVG(MSRP), 2) AS rata_rata_msrp,
    GROUP_CONCAT(productName ORDER BY productName SEPARATOR ', ') AS daftar_produk
FROM products
GROUP BY productLine
HAVING COUNT(productCode) > 10;