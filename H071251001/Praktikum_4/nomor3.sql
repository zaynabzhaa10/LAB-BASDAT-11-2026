SET search_path = classicmodels, public;

SELECT
    productLine,
    COUNT(*) AS jumlah_produk,
    ROUND(AVG(MSRP)::numeric, 2) AS rata_rata_msrp,
    STRING_AGG(productName, ', ' ORDER BY productName) AS daftar_produk
FROM products
GROUP BY productLine
HAVING COUNT(DISTINCT productCode) > 10;


