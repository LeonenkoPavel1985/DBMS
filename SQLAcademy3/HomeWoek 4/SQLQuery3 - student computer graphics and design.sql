USE SQLAcademy3
SELECT
last_name+ ' ' +first_name+ ' ' + middle_name AS N'Студент',
speciality_name AS N'Название специальности'
FROM students,specialities
WHERE
study_group = speciality_id AND
speciality_name = N'Компьютерная графика и дизайн'