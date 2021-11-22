USE SQLAcademy3;

SELECT
last_name + ' ' + first_name + ' ' + middle_name 
AS name,birth_date
FROM students
WHERE
MONTH (birth_date) > 2
AND MONTH (birth_date) < 6
UNION
SELECT 
last_name + ' ' + first_name + ' ' + middle_name 
AS name,birth_date
FROM teachers
WHERE
MONTH (birth_date) > 2
AND MONTH (birth_date) < 6
ORDER BY birth_date;