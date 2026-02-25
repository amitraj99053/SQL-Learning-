-- Swap Sex of Employees

UPDATE Salary
SET sex = CASE
            WHEN sex = 'm' THEN 'f'
            ELSE 'm'
        END;

-- https://leetcode.com/problems/swap-sex-of-employees/