USE SQLAcademy3;
CREATE TABLE Teachers
(
teacher_id INT NOT NULL PRIMARY KEY IDENTITY,
last_name NVARCHAR (100) NOT NULL,
first_name NVARCHAR (100) NOT NULL,
experience INT NOT NULL,
discipline INT FOREIGN KEY REFERENCES dbo.Disciplines(discipline_id),
grades INT FOREIGN KEY REFERENCES dbo.Grades(grade_id),
schedule INT FOREIGN KEY REFERENCES dbo.Schedule(schedule_id),
);
SELECT * FROM INFORMATION_SCHEMA.TABLES;

INSERT Teachers (last_name,first_name,experience,discipline,grades,schedule)
VALUES (N'Ковтун',N'Олег',N'10',N'1',N'1',N'1')
INSERT Teachers (last_name,first_name,experience,discipline,grades,schedule)
VALUES (N'Старинин',N'Андрей',N'4',N'2',N'4',N'2')
INSERT Teachers (last_name,first_name,experience,discipline,grades,schedule)
VALUES (N'Свалов',N'Андрей',N'7',N'5',N'6',N'3')
INSERT Teachers (last_name,first_name,experience,discipline,grades,schedule)
VALUES (N'Шалюпа',N'Наталья',N'3',N'3',N'2',N'4')
INSERT Teachers (last_name,first_name,experience,discipline,grades,schedule)
VALUES (N'Старинин',N'Андрей',N'4',N'6',N'3',N'5')
INSERT Teachers (last_name,first_name,experience,discipline,grades,schedule)
VALUES (N'Ковтун',N'Олег',N'10',N'4',N'5',N'6')

SELECT * FROM dbo.Teachers;