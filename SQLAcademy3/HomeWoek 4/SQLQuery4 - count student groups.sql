USE SQLAcademy3;
SELECT
group_name AS N'Наименование группы',
COUNT(study_group) AS N'Количество студентов в группе'
FROM groups,students
WHERE study_group = group_id
GROUP BY group_name