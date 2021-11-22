USE SQLAcademy3;
GO

SELECT 
last_name + ' ' + first_name + ' ' + middle_name AS N'Программисты'
FROM students, groups, specialities
WHERE study_group = group_id
AND groups.speciality = specialities.speciality_id
AND speciality_name = N'Программирование'