USE SQLAcademy3;

SELECT
last_name + ' ' + first_name + ' ' + middle_name AS N'Участник',
birth_date,
N'студент' AS N'Статус'

FROM students
WHERE MONTH (birth_date) > 5 AND MONTH (birth_date) < 9
UNION
SELECT
last_name + ' ' + first_name + ' ' + middle_name AS N'Участник',
birth_date,
N'преподаватель' AS N'Статус'
FROM teachers
WHERE MONTH (birth_date) BETWEEN 6 AND 8