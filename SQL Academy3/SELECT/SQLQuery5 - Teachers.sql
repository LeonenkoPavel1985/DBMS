USE SQLAcademy3;

SELECT
last_name + ' ' + first_name + ' ' + middle_name AS N'�������������',
discipline_name AS N'����������'
FROM teachers, disciplines, teacher_discipline
WHERE teacher_discipline.teacher = teacher_id
AND teacher_discipline.discipline = discipline_id