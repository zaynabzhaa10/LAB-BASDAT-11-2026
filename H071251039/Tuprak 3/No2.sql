SELECT 
    customerNumber, 
    customerName, 
    country, 
    creditLimit, 
    CONCAT(contactFirstName, ' ', contactLastName) AS "Nama Kontak", 
    (creditLimit - 10000) AS "Selisih Kredit"
FROM 
    customers
WHERE 
    country IN ('USA', 'Canada', 'France') 
    AND creditLimit > 30000
ORDER BY 
    creditLimit DESC;
