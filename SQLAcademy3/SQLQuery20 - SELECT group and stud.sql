USE SQLAcademy3;

SELECT 
last_name+' '+ first_name+' '+middle_name AS N'Студент',
group_name AS N'Группа'
FROM groups, students
WHERE
study_group = group_id AND
group_name = N'PD_011'