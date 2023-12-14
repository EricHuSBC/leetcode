# Write your MySQL query statement below

SELECT customer_id FROM Customer AS A
GROUP BY customer_id
HAVING COUNT(DISTINCT A.product_key) = (SELECT COUNT(B.product_key) FROM Product AS B)