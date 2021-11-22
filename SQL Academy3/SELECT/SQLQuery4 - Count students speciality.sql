USE SQLAcademy3;

SELECT
speciality_name AS N'Специальность',
COUNT(student_id) AS N'Количество студентов'
FROM students, specialities,groups
WHERE study_group = group_id
AND groups.speciality = specialities.speciality_id
GROUP BY speciality_name