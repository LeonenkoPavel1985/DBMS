USE SQLAcademy3;
CREATE TABLE groups
(
--group_id INT NOT NULL PRIMARY KEY IDENTITY,
--group_name NVARCHAR (50) NOT NULL,
[speciality] INT FOREIGN KEY REFERENCES [specialities] (speciality_id),
);

SELECT * FROM INFORMATION_SCHEMA.TABLES;