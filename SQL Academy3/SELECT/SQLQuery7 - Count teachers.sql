USE SQLAcademy3;

SELECT
discipline_name AS '����������',
COUNT (teacher) AS N'���������� ��������������'
FROM  disciplines,teacher_discipline

WHERE teacher_discipline.discipline = discipline_id
GROUP BY discipline_name
