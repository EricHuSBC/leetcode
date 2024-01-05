# Write your MySQL query statement below

SELECT b.product_name, a.unit FROM 
(SELECT product_id, SUM(unit) AS unit FROM Orders
WHERE MONTH(order_date) = 2 AND YEAR(order_date) = 2020
GROUP BY product_id
HAVING SUM(unit) >= 100) AS a 
LEFT JOIN Products AS b ON a.product_id = b.product_id