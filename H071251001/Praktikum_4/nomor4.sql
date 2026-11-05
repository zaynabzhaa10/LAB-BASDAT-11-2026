SET search_path = classicmodels, public;

SELECT DISTINCT reportsTo AS employeeNumber
FROM employees
WHERE reportsTo IS NOT NULL

EXCEPT

SELECT employeeNumber
FROM employees
WHERE jobTitle ILIKE '%VP%'
   OR jobTitle ILIKE '%President%';

   