USE SQLAcademy3;
CREATE TABLE Disciplines
(
discipline_id INT NOT NULL PRIMARY KEY IDENTITY,
discipline_name NVARCHAR(200)NOT NULL
);

SELECT * FROM INFORMATION_SCHEMA.TABLES;

INSERT INTO dbo.Disciplines VALUES (N'������ ���������������� �� C++');
INSERT INTO dbo.Disciplines VALUES (N'��������� Microsoft .NET � ���� ���������������� C#');
INSERT INTO dbo.Disciplines VALUES (N'��������-��������������� ���������������� � �������������� ����� C++');
INSERT INTO dbo.Disciplines VALUES (N'������ ��� ������. ���������������� MS SQL Server');
INSERT INTO dbo.Disciplines VALUES (N'���������������� Windows 10');
INSERT INTO dbo.Disciplines VALUES (N'������ ���������� ���������� � �������������� Windows Forms � WPF');
INSERT INTO dbo.Disciplines VALUES (N'���������� ������� � ����� ������ ADO.NET');

SELECT*FROM dbo.Disciplines

