USE SQLAcademy3;

SELECT
last_name + ' ' + first_name + ' ' + middle_name AS N'��������',
birth_date,
N'�������' AS N'������'

FROM students
WHERE MONTH (birth_date) > 5 AND MONTH (birth_date) < 9
UNION
SELECT
last_name + ' ' + first_name + ' ' + middle_name AS N'��������',
birth_date,
N'�������������' AS N'������'
FROM teachers
WHERE MONTH (birth_date) BETWEEN 6 AND 8