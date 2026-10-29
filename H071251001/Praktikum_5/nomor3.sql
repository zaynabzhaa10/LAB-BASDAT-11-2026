SET search_path = classicmodels, public;

SELECT
    c.customerName,
    COUNT(DISTINCT o.orderNumber) AS total_order,
    ROUND(AVG(od.quantityOrdered)::numeric, 2) AS avg_quantity_per_order
FROM customers c
JOIN orders o
    ON c.customerNumber = o.customerNumber
JOIN orderdetails od
    ON o.orderNumber = od.orderNumber
GROUP BY
    c.customerNumber,
    c.customerName
HAVING COUNT(DISTINCT o.orderNumber) > 3
   AND AVG(od.quantityOrdered) > 35
ORDER BY
    total_order DESC,
    avg_quantity_per_order DESC;