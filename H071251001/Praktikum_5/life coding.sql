SET search_path = classicmodels, public;

SELECT 
	CONCAT(e.firstName, ' ', e.lastName) AS nama_sales,
	e.jobTitle,
	c.customerName
FROM employees e
LEFT JOIN customers c
	ON e.employeeNumber = c.salesRepEmployeeNumber
WHERE e.jobTitle = 'Sales Rep'
ORDER BY e.firstName ASC
LIMIT 10 OFFSET 0;

	