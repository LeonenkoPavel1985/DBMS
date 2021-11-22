CREATE VIEW seasons AS
(
SELECT 
	last_name+' '+first_name+' '+middle_name AS N'Участник',
	birth_date,
	N'студент'	AS N'Статус',
	N'Весна'	AS N'Сезон'
FROM students WHERE MONTH(birth_date) BETWEEN 3 AND 5
UNION
SELECT 
	last_name+' '+first_name+' '+middle_name AS N'Участник',
	birth_date,
	N'студент' AS N'Статус',
	N'Лето'	AS N'Сезон'
FROM students WHERE MONTH(birth_date) BETWEEN 6 AND 8
UNION
SELECT 
	last_name+' '+first_name+' '+middle_name AS N'Участник',
	birth_date,
	N'студент'	AS N'Статус',
	N'Осень'	AS N'Сезон'
FROM students WHERE MONTH(birth_date) BETWEEN 9 AND 11
UNION
SELECT 
	last_name+' '+first_name+' '+middle_name AS N'Участник',
	birth_date,
	N'студент' AS N'Статус',
	N'Зима'	AS N'Сезон'

FROM students WHERE MONTH(birth_date) IN (1,2,12)
UNION
SELECT 
	last_name+' '+first_name+' '+middle_name AS N'Участник',
	birth_date,
	N'преподаватель'	AS N'Статус',
	N'Весна'	AS N'Сезон'
FROM teachers WHERE MONTH(birth_date) BETWEEN 3 AND 5
UNION
SELECT 
	last_name+' '+first_name+' '+middle_name AS N'Участник',
	birth_date,
	N'преподаватель' AS N'Статус',
	N'Лето'	AS N'Сезон'
FROM teachers WHERE MONTH(birth_date) BETWEEN 6 AND 8
UNION
SELECT 
	last_name+' '+first_name+' '+middle_name AS N'Участник',
	birth_date,
	N'преподаватель'	AS N'Статус',
	N'Осень'	AS N'Сезон'
FROM teachers WHERE MONTH(birth_date) BETWEEN 9 AND 11
UNION
SELECT 
	last_name+' '+first_name+' '+middle_name AS N'Участник',
	birth_date,
	N'преподаватель' AS N'Статус',
	N'Зима'	AS N'Сезон'

FROM teachers WHERE MONTH(birth_date) IN (1,2,12)
)