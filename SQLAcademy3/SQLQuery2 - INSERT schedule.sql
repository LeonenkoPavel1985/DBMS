USE SQLAcademy3;

DECLARE @i AS INT = 0;

WHILE (@i < 100)
BEGIN
INSERT INTO dbo.schedule ([lesson-time],[group], discipline, teacher)
VALUES 
(CAST('2021-10-25 16:00' AS DATETIME) + @i, 2, 1, 4),
(CAST('2021-10-25 17:30' AS DATETIME) + @i, 2, 3, 1);
SET @i = @i + 2 -- ������� �� ������������ �� �����

INSERT INTO dbo.schedule ([lesson-time],[group], discipline, teacher)
VALUES 
(CAST('2021-10-25 16:00' AS DATETIME) + @i, 2, 1, 4),
(CAST('2021-10-25 17:30' AS DATETIME) + @i, 2, 3, 1);
SET @i = @i + 2 -- ������� �� ����� �� �������

INSERT INTO dbo.schedule ([lesson-time],[group], discipline, teacher)
VALUES 
(CAST('2021-10-25 16:00' AS DATETIME) + @i, 2, 1, 4),
(CAST('2021-10-25 17:30' AS DATETIME) + @i, 2, 3, 1);
SET @i = @i + 3 -- ������� �� ������� �� ������������
END

