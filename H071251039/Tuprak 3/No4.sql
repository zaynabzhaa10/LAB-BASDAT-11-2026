SELECT 
    orderNumber, 
    orderDate, 
    shippedDate, 
    EXTRACT(YEAR FROM orderDate) AS "Tahun", 
    EXTRACT(MONTH FROM orderDate) AS "Bulan", 
    EXTRACT(DAY FROM (shippedDate - orderDate)) AS "Lama Pengiriman", 
    (shippedDate - orderDate) AS "Interval Pengiriman", 
    CURRENT_DATE AS "Tanggal Laporan", 
    CURRENT_TIME AS "Waktu Laporan"
FROM 
    orders
WHERE 
    shippedDate IS NOT NULL;
