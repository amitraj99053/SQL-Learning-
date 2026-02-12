-- Duplicate Emails

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;

-- https://leetcode.com/problems/duplicate-emails/