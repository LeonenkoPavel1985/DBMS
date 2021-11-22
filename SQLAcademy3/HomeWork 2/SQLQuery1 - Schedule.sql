USE SQLAcademy3;
INSERT INTO schedule ([lesson-time],group, discipline,teacher)
VALUES
(N'2021-10-01 16:00', N'1', N'1', N'4'),
(N'2021-10-03 16:00', N'2', N'2', N'4'),
(N'2021-10-05 16:00', N'3', N'4', N'1'),
(N'2021-10-07 16:00', N'4', N'5', N'1');

SELECT * FROM schedule;