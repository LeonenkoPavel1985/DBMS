USE SQLAcademy3
SELECT 
speciality_name AS N'Наименование специальности',
COUNT(study_group) AS N'Количество студентов'
FROM students, specialities
WHERE study_group = speciality_id
GROUP BY speciality_name