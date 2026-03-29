-- Group Sold Products By The Date

SELECT  
  sell_date, 
  COUNT(DISTINCT product) AS num_sold,
  GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products
from Activities
GROUP BY sell_date
ORDER BY sell_date;

-- https://leetcode.com/problems/group-sold-products-by-the-date/description/