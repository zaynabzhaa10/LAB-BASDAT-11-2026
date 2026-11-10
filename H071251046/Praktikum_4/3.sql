SET search_path TO classicmodels;

--3
SELECT
    productLine,
    COUNT(productCode) AS jumlah_produk,
    ROUND(AVG(MSRP), 2) AS rata_rata_msrp,
    STRING_AGG(productName, ', ' ORDER BY productName) AS daftar_produk
FROM products
GROUP BY productLine
HAVING COUNT(productCode) > 10;
