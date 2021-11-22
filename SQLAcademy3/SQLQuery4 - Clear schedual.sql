USE SQLAcademy3;

DECLARE @i AS INT = (SELECT MIN (lesson_id) FROM schedule);
WHILE @i <= (SELECT MAX (lesson_id) FROM schedule)
BEGIN
DELETE FROM schedule
WHERE lesson_id = @i;
SET @i = @i + 1;
END