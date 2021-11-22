USE SQLAcademy3;

SELECT
discipline_name AS 'Дисциплина',
COUNT (teacher) AS N'Количество преподавателей'
FROM  disciplines,teacher_discipline

WHERE teacher_discipline.discipline = discipline_id
GROUP BY discipline_name
