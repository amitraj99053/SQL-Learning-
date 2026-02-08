-- Replace Employee ID With The Unique Identifier

SELECT eu.unique_id AS unique_id, e.name AS name
FROM Employees e
LEFT JOIN EmployeeUNI eu
ON e.id = eu.id;

-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/