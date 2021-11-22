USE SQLAcademy3;
SELECT 
--[last_name] + ' ' + [first_name] + ' ' + [middle_name] AS [N '�.�.�. ��������'],
--[birth_date] AS [N '���� ��������'],
--[year_of_study] AS [N '��� ��������'],
--[rating] AS [N '������������'],
--[attendance] AS [N '������������'],
[speciality_name] AS [N '�������������'],
[group_name] AS [N '������']
FROM [students],[groups], [specialities] 
WHERE [speciality] = [speciality_id] AND [stady_group] = [group_id]
--ORDER BY [N '�.�.�. ��������']
GROUP BY [group_name], [speciality_name];
--ORDER BY [speciality_name];
--SELECT COUNT (*) AS [���������� ������� � ������� Students] 
--FROM [students];
--SELECT COUNT (DISTINCT first_name) AS [���������� �������] 
--FROM [students];
--SELECT ROUND (AVG (rating),4) AS [������� �������� ������������] FROM [students];
--SELECT CAST(ROUND (AVG(DATEDIFF(dd, birth_date, GETDATE())/365.25),0,0) AS INT) AS [������� ������� ��������] FROM [students];
--SELECT MIN ([last_name]) AS [������ �������] FROM [students];
--SELECT MAX ([last_name]) AS [��������� �������] FROM [students];
