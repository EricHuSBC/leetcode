# Write your MySQL query statement below
SELECT person_name FROM
(SELECT person_id, SUM(weight) OVER(ORDER BY turn) AS CUMM,person_name, turn FROM Queue ORDER BY turn) AS T WHERE T.CUMM <=1000 ORDER BY turn DESC LIMIT 1
