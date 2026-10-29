SELECT customerNumber
FROM orders
WHERE YEAR(orderDate) = 2004

INTERSECT

SELECT customerNumber
FROM payments
WHERE amount > 5000;