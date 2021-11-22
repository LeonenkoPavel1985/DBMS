USE SQLAcademy3;
CREATE TABLE Schedule
(
schedule_id INT NOT NULL PRIMARY KEY IDENTITY,
schedule_date DATE NOT NULL,
);
SELECT * FROM INFORMATION_SCHEMA.TABLES;

INSERT INTO dbo.Schedule(schedule_date) VALUES (N'2021-10-10');
INSERT INTO dbo.Schedule(schedule_date) VALUES (N'2021-10-12');
INSERT INTO dbo.Schedule(schedule_date) VALUES (N'2021-10-14');
INSERT INTO dbo.Schedule(schedule_date) VALUES (N'2021-10-16');
INSERT INTO dbo.Schedule(schedule_date) VALUES (N'2021-10-18');
INSERT INTO dbo.Schedule(schedule_date) VALUES (N'2021-10-20');

SELECT * FROM dbo.Schedule;