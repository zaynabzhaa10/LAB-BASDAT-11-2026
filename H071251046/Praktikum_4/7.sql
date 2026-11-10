SET search_path TO classicmodels;

--7
SELECT customerNumber
FROM customers
WHERE creditLimit > 80000

INTERSECT

SELECT customerNumber
FROM orders
WHERE status IN ('Cancelled', 'On Hold')

EXCEPT

SELECT customerNumber
FROM payments
GROUP BY customerNumber
HAVING SUM(amount) > 100000;
