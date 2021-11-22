USE SQLAcademy3;
SELECT
lesson_id AS N'ID занятия',
[lesson-time] AS N'Время занятия',
(FORMAT([lesson-time], 'dddd', 'ru-RU')) AS 'День недели',
group_name AS N'Группа',
discipline_name AS N'Дисциплина',
teachers.last_name + ' ' + teachers.first_name + ' ' + teachers.middle_name  AS N'Преподаватель'
FROM schedule,[groups], teachers, disciplines

WHERE
schedule.[group] = [groups].group_id AND
schedule.discipline = disciplines.discipline_id AND
schedule.teacher = teachers.teacher_id;