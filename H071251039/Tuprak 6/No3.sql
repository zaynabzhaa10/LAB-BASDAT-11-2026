SELECT
    productCode,
    productName,
    quantityInStock,
    MSRP
FROM products
WHERE quantityInStock > (SELECT AVG(quantityInStock) FROM products)
  AND MSRP > (SELECT AVG(MSRP) FROM products)
ORDER BY quantityInStock DESC;