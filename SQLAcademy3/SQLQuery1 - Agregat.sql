USE SQLAcademy3;
SELECT 
--[last_name] + ' ' + [first_name] + ' ' + [middle_name] AS [N 'Ф.И.О. студента'],
--[birth_date] AS [N 'Дата рождения'],
--[year_of_study] AS [N 'Год обучения'],
--[rating] AS [N 'Успеваемость'],
--[attendance] AS [N 'Посещаемость'],
[speciality_name] AS [N 'Специальность'],
[group_name] AS [N 'Группа']
FROM [students],[groups], [specialities] 
WHERE [speciality] = [speciality_id] AND [stady_group] = [group_id]
--ORDER BY [N 'Ф.И.О. студента']
GROUP BY [group_name], [speciality_name];
--ORDER BY [speciality_name];
--SELECT COUNT (*) AS [Количество записей в таблицу Students] 
--FROM [students];
--SELECT COUNT (DISTINCT first_name) AS [Количество записей] 
--FROM [students];
--SELECT ROUND (AVG (rating),4) AS [Среднее значение успеваемости] FROM [students];
--SELECT CAST(ROUND (AVG(DATEDIFF(dd, birth_date, GETDATE())/365.25),0,0) AS INT) AS [Средний возрвст студента] FROM [students];
--SELECT MIN ([last_name]) AS [Первая фамилия] FROM [students];
--SELECT MAX ([last_name]) AS [Последняя фамилия] FROM [students];
