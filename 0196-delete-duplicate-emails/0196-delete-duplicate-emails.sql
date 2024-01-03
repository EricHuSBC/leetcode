# Write your MySQL query statement below

DELETE FROM Person
WHERE (id, email) NOT IN (
    SELECT * FROM (
        SELECT MIN(id) as min_id, email
        FROM Person
        GROUP BY email
    ) AS tempTable
);