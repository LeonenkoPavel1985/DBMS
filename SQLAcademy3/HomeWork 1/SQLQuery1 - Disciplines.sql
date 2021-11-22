USE SQLAcademy3;
CREATE TABLE Disciplines
(
discipline_id INT NOT NULL PRIMARY KEY IDENTITY,
discipline_name NVARCHAR(200)NOT NULL
);

SELECT * FROM INFORMATION_SCHEMA.TABLES;

INSERT INTO dbo.Disciplines VALUES (N'Основы программирования на C++');
INSERT INTO dbo.Disciplines VALUES (N'Платформа Microsoft .NET и язык программирования C#');
INSERT INTO dbo.Disciplines VALUES (N'Объектно-ориентированное программирование с использованием языка C++');
INSERT INTO dbo.Disciplines VALUES (N'Теория баз данных. Программирование MS SQL Server');
INSERT INTO dbo.Disciplines VALUES (N'Конфигурирование Windows 10');
INSERT INTO dbo.Disciplines VALUES (N'Основы разработки приложений с использованием Windows Forms и WPF');
INSERT INTO dbo.Disciplines VALUES (N'Технология доступа к базам данных ADO.NET');

SELECT*FROM dbo.Disciplines

