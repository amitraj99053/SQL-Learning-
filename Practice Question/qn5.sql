-- Remove duplicate rows

DELETE FROM employees
WHERE id NOT IN (
    SELECT MIN(id) 
    FROM employees
    GROUP BY email
); 