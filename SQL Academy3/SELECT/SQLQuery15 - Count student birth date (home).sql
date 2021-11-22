USE SQLAcademy3;

SELECT 'Spring' AS Seasons, COUNT (*)
AS [Number of students]
FROM students
WHERE MONTH (birth_date) BETWEEN 3 AND 5
UNION ALL
SELECT 'Summer', COUNT(*)
FROM students
WHERE MONTH(birth_date) BETWEEN 6 AND 8
UNION ALL
SELECT 'Autumn', COUNT(*)
FROM students
WHERE MONTH(birth_date) BETWEEN 9 AND 11
UNION ALL
SELECT 'Winter', COUNT(*)
FROM students
WHERE MONTH(birth_date) IN (1, 2, 12)