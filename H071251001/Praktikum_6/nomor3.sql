SET search_path = classicmodels, public;

SELECT
    productCode AS kode_produk,
    productName AS nama_produk,
    quantityInStock AS jumlah_stok,
    MSRP AS harga_jual
FROM products
WHERE
    quantityInStock > (
        SELECT AVG(quantityInStock)
        FROM products
    )
    AND MSRP > (
        SELECT AVG(MSRP)
        FROM products
    )
ORDER BY quantityInStock DESC;