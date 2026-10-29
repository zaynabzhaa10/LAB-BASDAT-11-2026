SET search_path = classicmodels, public;

SELECT
    od.productCode AS kode_produk,
    SUM(od.quantityOrdered) AS total_unit_terjual,
    COUNT(DISTINCT od.orderNumber) AS jumlah_pesanan
FROM orderdetails AS od
GROUP BY od.productCode
HAVING
    SUM(od.quantityOrdered) > (
        SELECT AVG(quantityOrdered)
        FROM orderdetails
    )
    AND COUNT(DISTINCT od.orderNumber) > 10
ORDER BY total_unit_terjual DESC;