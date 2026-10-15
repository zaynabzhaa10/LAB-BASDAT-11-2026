SELECT
    productLine,
    COUNT(*) AS jumlah_produk,
    ROUND(AVG(MSRP), 2) AS rata_rata_harga,
    STRING_AGG(productName, ', ' ORDER BY productName) AS daftar_produk
FROM products
GROUP BY productLine
HAVING COUNT(*) > 10;
