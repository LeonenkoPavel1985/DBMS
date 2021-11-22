USE SQLAcademy3;

DECLARE @i AS INT = 0;
--DECLARE @start_date AS DATETIME = GETDATE(); -- �� DATE, ��������� � DATE ������ ���������� INT, ��� ��� ���� �� ����������
DECLARE @start_date AS DATE = GETDATE();
DECLARE @and_date AS DATE = DATEADD(month, 3, @start_date)

WHILE (DATEADD(DAY,@i,@start_date) < @and_date)
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