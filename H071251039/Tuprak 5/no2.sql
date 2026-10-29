SELECT 
    c.customerName,
    SUM(p.amount) AS total_payment,
    MAX(p.amount) AS max_single_payment
FROM customers c
JOIN payments p ON c.customerNumber = p.customerNumber
GROUP BY c.customerNumber, c.customerName
HAVING SUM(p.amount) > 50000
ORDER BY total_payment DESC;