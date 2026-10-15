SELECT DISTINCT
    c.customerNumber
FROM customers c
WHERE c.creditLimit > 80000
  AND EXISTS (
      SELECT 1
      FROM orders o
      WHERE o.customerNumber = c.customerNumber
        AND o.status IN ('Cancelled', 'On Hold')
  )
  AND COALESCE((
      SELECT SUM(p.amount)
      FROM payments p
      WHERE p.customerNumber = c.customerNumber
  ), 0) <= 100000;
