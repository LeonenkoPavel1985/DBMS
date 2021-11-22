USE SQLAcademy3;

--SELECT CAST(RAND()*100 AS INT)%13;

DECLARE @i AS INT = (SELECT MIN(lesson_id) FROM schedule);
DECLARE @start_date AS DATE = (SELECT MIN([lesson-time]) FROM schedule);
DECLARE @and_date AS DATE = DATEADD(month,1, @start_date);

WHILE (@start_date + @i <= @and_date)
BEGIN
INSERT INTO grades (grade1, grade2,)
END
