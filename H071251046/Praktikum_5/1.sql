SET search_path TO classicmodels;

--1
SELECT
    c.contactFirstName,
    c.customerName,
    o.city AS office_city,
    CONCAT(e.firstName, ' ', e.lastName) AS sales_rep_name
FROM customers c
JOIN employees e
ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN offices o
ON e.officeCode = o.officeCode
WHERE c.contactFirstName ILIKE 'a%' AND o.city != 'NYC'
ORDER BY c.customerName;