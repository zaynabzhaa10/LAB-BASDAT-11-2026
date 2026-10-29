SELECT 
    c.customerNumber,
    c.customerName,
    p.amount AS jumlah_pembayaran
FROM customers c
JOIN payments p ON c.customerNumber = p.customerNumber
WHERE p.amount > 6000 
  AND p.amount < 15000
ORDER BY p.amount DESC;