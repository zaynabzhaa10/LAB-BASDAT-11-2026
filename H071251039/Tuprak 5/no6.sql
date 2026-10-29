SELECT 
    c.customerName,
    c.city AS customer_city,
    ofc.city AS office_city,
    SUM(od.quantityOrdered) AS total_unit_terjual,
    ROUND(SUM(od.quantityOrdered * od.priceEach) / COUNT(DISTINCT o.orderNumber), 2) AS avg_nilai_per_order
FROM customers c
JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN offices ofc ON e.officeCode = ofc.officeCode
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
WHERE ofc.territory = 'EMEA'
GROUP BY c.customerNumber, c.customerName, c.city, ofc.city
HAVING COUNT(DISTINCT YEAR(o.orderDate)) > 2
   AND SUM(od.quantityOrdered) > 1000
   AND (SUM(od.quantityOrdered * od.priceEach) / COUNT(DISTINCT o.orderNumber)) > 10000
ORDER BY avg_nilai_per_order DESC;