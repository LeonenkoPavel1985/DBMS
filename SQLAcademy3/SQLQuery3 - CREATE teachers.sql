USE SQLAcademy3;
CREATE TABLE teachers
(
[teacher_id] INT NOT NULL PRIMARY KEY IDENTITY (1,1),
[last_name] NVARCHAR(100) NOT NULL,
[first_name] NVARCHAR(100) NOT NULL,
[middle_name] NVARCHAR(100) NOT NULL,
[birth_date] DATE NOT NULL,
[experience] INT
);

INSERT INTO teachers (last_name, first_name, middle_name,birth_date, experience)
VALUES
(N'Свищей' , N'Алексей',N'Викторович',N'1990-05-10',5),
(N'Кобылинский' , N'Андрей',N'Анатольевич',N'1980-02-18',15),
(N'Лобинцева' , N'Валерия',N'Олеговна',N'1992-06-30',8),
(N'Ковтун', N'Олег',N'Анатольевич',N'1985-01-16',11);

SELECT * FROM teachers;