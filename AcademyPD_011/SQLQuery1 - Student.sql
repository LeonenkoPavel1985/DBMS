USE SQLAcademy2
SELECT student_last_name AS N'�������', student_first_name AS N'���',  student_birth_date AS N'���� ��������',
dbo.Speciality.speciality_name AS N'�������������',
dbo.groups.group_name AS '������'
FROM students, Speciality,groups 
WHERE dbo.students.speciality = dbo.Speciality.speciality_id AND dbo.students.[group] = dbo.groups.group_id
ORDER BY student_last_name
;