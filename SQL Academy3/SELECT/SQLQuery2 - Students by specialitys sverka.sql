USE SQLAcademy3;

SELECT last_name + ' ' + first_name + ' ' + middle_name AS N'Программисты',
speciality_name AS N'Специальность',
group_name AS N'Группа'
FROM students, groups, specialities
WHERE study_group = group_id
AND groups.speciality = specialities.speciality_id
ORDER BY speciality_name