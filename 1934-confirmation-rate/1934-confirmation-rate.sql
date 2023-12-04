# Write your MySQL query statement below


SELECT A.user_id, COALESCE(ROUND(B.conf_count/A.act_count, 2),0) AS confirmation_rate FROM 
(SELECT S.user_id,COUNT(S.user_id) AS act_count FROM Signups AS S
LEFT JOIN Confirmations AS C ON S.user_id = C.user_id
GROUP BY S.user_id) AS A
LEFT JOIN 
(SELECT user_id, COUNT(user_id) AS conf_count FROM Confirmations
 WHERE action = 'confirmed'
 GROUP BY user_id
) AS B ON A.user_id = B.user_id