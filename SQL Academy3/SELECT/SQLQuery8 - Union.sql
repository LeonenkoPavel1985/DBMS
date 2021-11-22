USE SQLAcademy3;

SELECT
last_name + ' ' + first_name + ' ' + middle_name AS name,
DATEDIFF (year, CAST (birth_date AS DATETIME), GETDATE()) AS N'Возраст',
N'Teacher' AS N'Статус' 
FROM teachers
UNION ALL
SELECT
last_name + ' ' +first_name + ' ' + middle_name AS name,
--birth_date AS N'Возраст', 
DATEDIFF (year, CAST (birth_date AS DATETIME), GETDATE()) AS N'Возраст',
N'Students' AS N'Статус ' 
FROM students
WHERE DATEDIFF (year, CAST (birth_date AS DATETIME), GETDATE()) BETWEEN 20 AND 30
--DATEDIFF (year, CAST (birth_date AS DATETIME), GETDATE()) >= 20 
--AND  DATEDIFF (year, CAST (birth_date AS DATETIME), GETDATE()) <= 30
ORDER BY N'Возраст' 