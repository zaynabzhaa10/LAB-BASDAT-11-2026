BEGIN;

-- mengubah status pesanan menjadi pengiriman
UPDATE orders
SET status = 'Shipped'
WHERE orderNumber = 10100;

-- membuat savepoint
SAVEPOINT status_pengiriman;

-- mengubah status pesanan menjadi batal
UPDATE orders
SET status = 'Batal'
WHERE orderNumber = 10100;

-- membatalkan perubahan setelah savepoint
ROLLBACK TO SAVEPOINT status_pengiriman;

-- menyimpan perubahan yang dipertahankan
COMMIT;


SELECT orderNumber, status
FROM orders
WHERE orderNumber = 10100;