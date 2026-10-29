SELECT 
    c.customerName,
    SUM(od.quantityOrdered * od.priceEach) AS total_transaksi,
    COUNT(DISTINCT CASE WHEN o.status = 'Shipped' THEN o.orderNumber END) AS total_shipped_orders,
    ROUND(SUM(od.quantityOrdered * od.priceEach) / COUNT(DISTINCT o.orderNumber), 2) AS avg_transaction_per_order
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY c.customerNumber, c.customerName
HAVING COUNT(DISTINCT YEAR(o.orderDate)) > 1
ORDER BY total_transaksi DESC
LIMIT 5;