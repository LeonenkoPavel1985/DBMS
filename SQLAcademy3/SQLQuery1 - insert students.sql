USE SQLAcademy3;
INSERT INTO dbo.students(last_name, first_name, middle_name,birth_date, speciality, stady_group, year_of_study, rating,attendance)
VALUES 
(N'�����������',N'���������', N'��������������','1992.11.12', 1, 4, 2, 84, 93),
(N'��������',N'������', N'�����������','1997.12.11', 2, 2, 1, 32, 22),
(N'��������',N'��������', N'��������','1993.05.10', 3, 2, 1, 72, 27),
(N'���������',N'���������', N'���������','2000.11.16', 1, 4, 2, 98, 99);
SELECT * FROM students;