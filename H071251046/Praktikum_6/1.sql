SET search_path TO classicmodels;
SELECT
    productCode,
    productName,
    MSRP,
    quantityInStock,
    CASE
        WHEN MSRP < 50 AND quantityInStock > 500
            THEN 'Ekonomis - Stok Tinggi'

        WHEN MSRP < 50 AND quantityInStock <= 500
            THEN 'Ekonomis - Stok Rendah'

        WHEN MSRP BETWEEN 50 AND 100 AND quantityInStock > 500
            THEN 'Harga Menengah - Stok Tinggi'

		WHEN MSRP BETWEEN 50 AND 100 AND quantityInStock <= 500
            THEN 'Harga Menengah - Stok Rendah'

        WHEN MSRP > 100 AND quantityInStock > 500
            THEN 'Harga Premium - Stok Tinggi'

		WHEN MSRP > 100 AND quantityInStock <= 500
            THEN 'Harga Premium - Stok Rendah'
    END AS kategori_produk
FROM products
ORDER BY MSRP DESC;
