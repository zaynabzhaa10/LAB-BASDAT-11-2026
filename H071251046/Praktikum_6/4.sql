SET search_path TO classicmodels;

BEGIN;

UPDATE classicmodels.orders
SET status = 'Pengiriman'
WHERE orderNumber = 10100;

SAVEPOINT status_pengiriman;

UPDATE classicmodels.orders
SET status = 'Batal'
WHERE orderNumber = 10100;

ROLLBACK TO SAVEPOINT status_pengiriman;

COMMIT;

SELECT orderNumber, status
FROM classicmodels.orders
WHERE orderNumber = 10100;
