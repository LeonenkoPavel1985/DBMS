USE SQLAcademy3;

SELECT MAX (birth_date) FROM teachers

SELECT COUNT (student_id)
FROM students
WHERE birth_date > (SELECT MAX (birth_date) FROM teachers)

SELECT * FROM students
ORDER BY birth_date DESC