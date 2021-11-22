USE SQLAcademy2
SELECT student_last_name AS N'Фамилия', student_first_name AS N'Имя',  student_birth_date AS N'Дата рождения',
dbo.Speciality.speciality_name AS N'Специальность',
dbo.groups.group_name AS 'Группа'
FROM students, Speciality,groups 
WHERE dbo.students.speciality = dbo.Speciality.speciality_id AND dbo.students.[group] = dbo.groups.group_id
ORDER BY student_last_name
;