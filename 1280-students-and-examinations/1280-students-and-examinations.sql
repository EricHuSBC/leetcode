# Write your MySQL query statement below
SELECT A.student_id, A.student_name, B.subject_name, COALESCE(C.attended_exams,0) AS attended_exams
FROM Students AS A
JOIN Subjects AS B
LEFT JOIN 
(SELECT student_id, subject_name, COUNT(subject_name) AS attended_exams FROM Examinations
GROUP BY student_id, subject_name) AS C ON A.student_id = C.student_id AND B.subject_name = C.subject_name
ORDER BY A.student_id, B.subject_name

