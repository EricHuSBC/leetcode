# Write your MySQL query statement below

SELECT total.product_id, IFNULL(ROUND(SUM(total.sell)/SUM(total.units),2),0) AS average_price FROM
(SELECT A.product_id,B.units,B.units* A.price AS sell FROM Prices AS A
LEFT JOIN UnitsSold AS B ON A.product_id = B.product_id AND B.purchase_date BETWEEN A.start_date AND A.end_date) AS total
GROUP BY total.product_id
