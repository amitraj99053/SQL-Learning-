-- Biggest Single Number

WITH single_number AS (
    SELECT num, COUNT(num) AS num_count
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
)

SELECT MAX(num) AS num
FROM single_number;

-- https://leetcode.com/problems/biggest-single-number/