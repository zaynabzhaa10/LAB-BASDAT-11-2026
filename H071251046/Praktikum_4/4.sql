SET search_path TO classicmodels;

--4
SELECT DISTINCT reportsTo AS employeeNumber
FROM employees
WHERE reportsTo IS NOT NULL

EXCEPT

SELECT employeeNumber
FROM employees
WHERE jobTitle LIKE '%VP%'
   OR jobTitle LIKE '%President%';
