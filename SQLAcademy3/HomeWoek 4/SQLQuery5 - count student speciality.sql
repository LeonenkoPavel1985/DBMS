USE SQLAcademy3
SELECT 
speciality_name AS N'������������ �������������',
COUNT(study_group) AS N'���������� ���������'
FROM students, specialities
WHERE study_group = speciality_id
GROUP BY speciality_name