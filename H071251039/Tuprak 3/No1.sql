SELECT 
    orderNumber, 
    UPPER(productCode) AS "Kode Produk", 
    quantityOrdered, 
    priceEach
FROM 
    orderdetails
WHERE 
    (quantityOrdered BETWEEN 20 AND 50 OR priceEach < 30)
    AND LEFT(productCode, 3) = 'S18'
ORDER BY 
    quantityOrdered DESC;