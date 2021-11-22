USE SQLAcademy3;
SELECT 
--dbo.students.last_name AS N'Фамилия', 
--dbo.students.first_name AS N'Имя', 
--dbo.students.middle_name AS N'Отчество' 
-------------------------------------------
--t.last_name AS N'Фамилия', 
--t.first_name AS N'Имя', 
--t.middle_name AS N'Отчество' 
-------------------------------------------
t.last_name + ' '+  t.first_name +' ' + t.middle_name AS N'           Ф.И.О. студента',
t.birth_date           AS N'Дата рождения',
specs.speciality_name  AS N'Специальность',
groups.group_name      AS N'Группа',
t.attendance           AS N'Посещаемость',
t.rating               AS N'Успеваемость'
FROM 
dbo.students AS t,
dbo.specialities AS specs,
dbo.groups AS groups
WHERE t.speciality = specs.speciality_id AND t.stady_group = groups.group_id 
---------------------------------------------------------------------------------------------------------------
--AND t.attendance IS NULL
--AND t.attendance > 50 AND t.attendance < 90
--AND t.attendance BETWEEN 50 AND 90
---------------------------------------------------------------------------------------------------------------
--AND (specs.speciality_name = N'Программирование' OR specs.speciality_name = N'Компьютерная графика и дизайн')
AND specs.speciality_name NOT IN (N'Программирование',N'Компьютерная графика и дизайн')
---------------------------------------------------------------------------------------------------------------
/*LIKE
%
_
[...]
^
*/
--AND t.first_name = N'Иван'
AND t.last_name NOT LIKE N'%ко'
--ORDER BY N'           Ф.И.О. студента' DESC;
--ORDER BY column [ASC|DESC]