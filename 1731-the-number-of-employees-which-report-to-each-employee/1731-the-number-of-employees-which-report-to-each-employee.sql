# Write your MySQL query statement below

SELECT b.employee_id, b.name,COUNT(a.reports_to) AS reports_count,ROUND(AVG(a.age)) AS average_age FROM Employees AS a
LEFT JOIN Employees AS b ON a.reports_to = b.employee_id
WHERE a.reports_to IS NOT NULL
GROUP BY a.reports_to
ORDER BY b.employee_id
