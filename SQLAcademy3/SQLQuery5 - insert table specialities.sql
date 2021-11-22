USE SQLAcademy3;

--INSERT INTO dbo.specialities VALUES (N'Программирование');
--INSERT INTO dbo.specialities VALUES (N'Сетевые технологии');
--INSERT INTO dbo.specialities VALUES (N'Компьютерная графика и дизайн');
--INSERT INTO dbo.specialities (speciality_name) VALUES (N'GameDev');
--INSERT INTO dbo.specialities (speciality_name) VALUES (N'WebDev');

INSERT INTO dbo.groups(group_name) VALUES (N'PV_011');
INSERT INTO dbo.groups(group_name) VALUES (N'PD_011');
INSERT INTO dbo.groups(group_name) VALUES (N'BV_011');
INSERT INTO dbo.groups(group_name) VALUES (N'BD_011');

SELECT * FROM dbo.specialities;
SELECT * FROM dbo.groups;