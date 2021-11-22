USE SQLAcademy3;
SELECT 
--dbo.students.last_name AS N'�������', 
--dbo.students.first_name AS N'���', 
--dbo.students.middle_name AS N'��������' 
-------------------------------------------
--t.last_name AS N'�������', 
--t.first_name AS N'���', 
--t.middle_name AS N'��������' 
-------------------------------------------
t.last_name + ' '+  t.first_name +' ' + t.middle_name AS N'           �.�.�. ��������',
t.birth_date           AS N'���� ��������',
specs.speciality_name  AS N'�������������',
groups.group_name      AS N'������',
t.attendance           AS N'������������',
t.rating               AS N'������������'
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
--AND (specs.speciality_name = N'����������������' OR specs.speciality_name = N'������������ ������� � ������')
AND specs.speciality_name NOT IN (N'����������������',N'������������ ������� � ������')
---------------------------------------------------------------------------------------------------------------
/*LIKE
%
_
[...]
^
*/
--AND t.first_name = N'����'
AND t.last_name NOT LIKE N'%��'
--ORDER BY N'           �.�.�. ��������' DESC;
--ORDER BY column [ASC|DESC]