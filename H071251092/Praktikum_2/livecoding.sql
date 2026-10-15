SELECT 
	productName,
	quantityInStock,
	msrp
FROM products
WHERE quantityInStock < 500
AND productLine = 'Classic Cars'
ORDER BY quantityInStock;