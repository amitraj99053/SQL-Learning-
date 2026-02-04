-- Find all employees whose salary is greater than average salary

SELECT * FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
