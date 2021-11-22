USE SQLAcademy3;

SELECT
group_name AS N'Группа',
COUNT(study_group) AS N'Количество студентов'

FROM students, groups
WHERE study_group = group_id
GROUP BY group_name
