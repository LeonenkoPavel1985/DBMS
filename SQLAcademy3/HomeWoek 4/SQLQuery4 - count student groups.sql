USE SQLAcademy3;
SELECT
group_name AS N'������������ ������',
COUNT(study_group) AS N'���������� ��������� � ������'
FROM groups,students
WHERE study_group = group_id
GROUP BY group_name