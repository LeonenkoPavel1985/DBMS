USE SQLAcademy3;
CREATE TABLE disciplines
(
--discipline_id INT NOT NULL PRIMARY KEY IDENTITY (1,1),
--discipline_name NVARCHAR (100),
[speciality] INT FOREIGN KEY REFERENCES [specialities] (speciality_id),
[teacher] INT FOREIGN KEY REFERENCES [teachers] (teacher_id)
);

--INSERT INTO disciplines (discipline_name)
--VALUES
--(N'����������� ���������������� �� ����� C++'),
--(N'��������-��������������� ���������������� �� ����� C++'),
--(N'Hardware-PC'),
--(N'����������������� Windows'),
--(N'����������������� UNIX'),
--(N'Photoshop'),
--(N'Illustrator'),
--(N'���������� � ��������� �����'),
--(N'������������� � IP-�����');

--SELECT * FROM disciplines;