USE SQLAcademy3;

SELECT
last_name + ' ' + first_name + ' ' + middle_name 
AS name,birth_date
FROM students
WHERE
MONTH (birth_date) > 5
AND MONTH (birth_date) < 9
UNION
SELECT 
last_name + ' ' + first_name + ' ' + middle_name 
AS name,birth_date
FROM teachers
WHERE
MONTH (birth_date) > 5
AND MONTH (birth_date) < 9
ORDER BY birth_date;