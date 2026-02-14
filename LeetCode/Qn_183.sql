-- Customers Who Never Order

SELECT c.name AS Customers
FROM Customers c
WHERE c.id NOT IN (SELECT customerId FROM Orders);

-- https://leetcode.com/problems/customers-who-never-order/