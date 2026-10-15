SELECT 
    orderNumber, 
    orderDate, 
    shippedDate, 
    (orderDate + INTERVAL '10 days') AS "Estimasi Kirim", 
    COALESCE(shippedDate, (orderDate + INTERVAL '10 days')) AS "Tanggal Aktual", 
    (shippedDate - orderDate) AS "Selisih Waktu"
FROM 
    orders
WHERE 
    comments ILIKE '%customer%' 
    AND EXTRACT(MONTH FROM orderDate) BETWEEN 10 AND 12 
    AND ordernumber%2 !=0
ORDER BY 
    orderDate DESC;
