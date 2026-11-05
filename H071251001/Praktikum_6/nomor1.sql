SET search_path = classicmodels, public;

SELECT
    productCode AS kode_produk,
    productName AS nama_produk,
    MSRP AS harga_jual,
    quantityInStock AS jumlah_stok,
    CASE
        WHEN MSRP < 50 AND quantityInStock > 500
            THEN 'Ekonomis - Stok Tinggi'
        WHEN MSRP < 50 AND quantityInStock <= 500
            THEN 'Ekonomis - Stok Rendah'
        WHEN MSRP BETWEEN 50 AND 100
            THEN 'Harga Menengah'
        ELSE 'Harga Premium'
    END AS kategori
FROM products
ORDER BY MSRP DESC;