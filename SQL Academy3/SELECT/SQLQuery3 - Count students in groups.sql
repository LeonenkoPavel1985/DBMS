USE SQLAcademy3;

SELECT
group_name,
COUNT(study_group) AS N'���������� ���������'
FROM students, groups
WHERE study_group = group_id
GROUP BY group_name