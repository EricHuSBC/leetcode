# Write your MySQL query statement below

# SELECT DISTINCT p.product_id, (CASE WHEN u.price IS NULL THEN 10 ELSE u.price END) AS price FROM Products AS p
# # LEFT JOIN (
# SELECT product_id, new_price AS price, ROW_NUMBER() OVER(PARTITION BY product_id ORDER BY change_date) AS row_number FROM Products 
# WHERE change_date <= '2019-08-16' 
# ) AS u ON p.product_id = u.product_id
SELECT DISTINCT p.product_id, (CASE WHEN u.price IS NULL THEN 10 ELSE u.price END) AS price FROM Products AS p
LEFT JOIN (SELECT product_id, new_price AS price FROM Products
WHERE (product_id, change_date) IN (SELECT product_id, MAX(change_date) FROM Products WHERE change_date <= '2019-08-16'
GROUP BY product_id)) AS u ON p.product_id = u.product_id