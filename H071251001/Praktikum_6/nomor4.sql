ROLLBACK;

SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_schema IN ('classicmodels', 'public')
ORDER BY table_schema, table_name;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'classicmodels'
  AND table_name = 'orders'
ORDER BY ordinal_position;

SELECT ordernumber, status
FROM classicmodels.orders
ORDER BY ordernumber
LIMIT 5;




BEGIN;

UPDATE classicmodels.orders
SET status = 'Pengiriman'
WHERE ordernumber = 10100;

SAVEPOINT status_pengiriman;

UPDATE classicmodels.orders
SET status = 'Batal'
WHERE ordernumber = 10100;

ROLLBACK TO SAVEPOINT status_pengiriman;

COMMIT;



SELECT ordernumber, status
FROM classicmodels.orders
WHERE ordernumber = 10100;
