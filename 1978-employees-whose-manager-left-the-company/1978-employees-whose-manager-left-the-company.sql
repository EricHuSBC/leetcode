# Write your MySQL query statement below

SELECT e.employee_id FROM Employees AS e
LEFT JOIN Employees AS t ON e.manager_id = t.employee_id
WHERE e.salary < 30000 AND e.manager_id IS NOT NULL AND t.employee_id IS NULL
ORDER BY e.employee_id