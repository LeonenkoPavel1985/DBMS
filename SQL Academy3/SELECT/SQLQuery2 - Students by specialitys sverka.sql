USE SQLAcademy3;

SELECT last_name + ' ' + first_name + ' ' + middle_name AS N'������������',
speciality_name AS N'�������������',
group_name AS N'������'
FROM students, groups, specialities
WHERE study_group = group_id
AND groups.speciality = specialities.speciality_id
ORDER BY speciality_name