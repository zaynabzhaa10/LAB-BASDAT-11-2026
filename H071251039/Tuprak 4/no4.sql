SELECT DISTINCT reportsTo AS employeeNumber
FROM employees
WHERE reportsTo IS NOT NULL
  AND reportsTo NOT IN (
      SELECT employeeNumber
      FROM employees
      WHERE jobTitle LIKE '%VP%' 
         OR jobTitle LIKE '%President%'
  );