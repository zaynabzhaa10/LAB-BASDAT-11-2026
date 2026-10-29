SET search_path = classicmodels, public;

SELECT
	c.customerName,
	c.city AS customer_city,
	CONCAT(e.firstName, ' ', e.lastName) AS sales_rep_name
FROM customers c
JOIN employees e
	ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN offices o 
	ON e.officeCode = o.officecode
WHERE c.contactFirstName NOT ILIKE '%a%'
AND o.city <> 'NYC'
ORDER BY c.customerName ASC;