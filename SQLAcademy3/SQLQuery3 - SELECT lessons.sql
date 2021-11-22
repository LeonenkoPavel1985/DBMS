USE SQLAcademy3;
SELECT
lesson_id AS N'ID �������',
[lesson-time] AS N'����� �������',
(FORMAT([lesson-time], 'dddd', 'ru-RU')) AS '���� ������',
group_name AS N'������',
discipline_name AS N'����������',
teachers.last_name + ' ' + teachers.first_name + ' ' + teachers.middle_name  AS N'�������������'
FROM schedule,[groups], teachers, disciplines

WHERE
schedule.[group] = [groups].group_id AND
schedule.discipline = disciplines.discipline_id AND
schedule.teacher = teachers.teacher_id;