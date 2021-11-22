USE SQLAcademy3
SELECT  * FROM teachers t
JOIN teacher_discipline td ON
t.teacher_id = td.teacher
JOIN disciplines d ON 
td.discipline = d.discipline_id
WHERE 
discipline_name = N'Процедурное программирование на языку C++'