# Write your MySQL query statement below

SELECT A.name, B.bonus FROM Employee AS A
LEFT JOIN Bonus AS B ON A.empId = B.empId
WHERE bonus < 1000 OR bonus IS NULL