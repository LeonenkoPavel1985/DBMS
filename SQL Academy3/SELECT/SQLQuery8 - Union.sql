USE SQLAcademy3;

SELECT
last_name + ' ' + first_name + ' ' + middle_name AS name,
DATEDIFF (year, CAST (birth_date AS DATETIME), GETDATE()) AS N'�������',
N'Teacher' AS N'������' 
FROM teachers
UNION ALL
SELECT
last_name + ' ' +first_name + ' ' + middle_name AS name,
--birth_date AS N'�������', 
DATEDIFF (year, CAST (birth_date AS DATETIME), GETDATE()) AS N'�������',
N'Students' AS N'������ ' 
FROM students
WHERE DATEDIFF (year, CAST (birth_date AS DATETIME), GETDATE()) BETWEEN 20 AND 30
--DATEDIFF (year, CAST (birth_date AS DATETIME), GETDATE()) >= 20 
--AND  DATEDIFF (year, CAST (birth_date AS DATETIME), GETDATE()) <= 30
ORDER BY N'�������' 