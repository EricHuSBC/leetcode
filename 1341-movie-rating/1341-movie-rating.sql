# Write your MySQL query statement below

(SELECT name AS results FROM MovieRating m
LEFT JOIN Users u ON m.user_id = u.user_id
GROUP BY m.user_id
ORDER BY  COUNT(m.user_id) DESC,results ASC
LIMIT 1)

UNION ALL

(SELECT title AS results FROM MovieRating mr
LEFT JOIN Movies ms ON mr.movie_id = ms.movie_id
WHERE EXTRACT(YEAR_MONTH FROM created_at) = 202002
GROUP BY mr.movie_id 
ORDER BY  AVG(mr.rating) DESC,results
LIMIT 1);

