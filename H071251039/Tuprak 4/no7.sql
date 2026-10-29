SELECT c.customerNumber
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
WHERE c.creditLimit > 80000
  AND o.status IN ('Cancelled', 'On Hold')
  AND c.customerNumber NOT IN (
      SELECT customerNumber
      FROM payments
      GROUP BY customerNumber
      HAVING SUM(amount) > 100000
  )
GROUP BY c.customerNumber;