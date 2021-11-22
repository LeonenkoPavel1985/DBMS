USE SQLAcademy3;
CREATE TABLE disciplines
(
discipline_id INT NOT NULL PRIMARY KEY IDENTITY (1,1),
discipline_name NVARCHAR (100)
);

INSERT INTO disciplines (discipline_name)
VALUES
(N'Процедурное программирование на языку C++'),
(N'Объектно-ориентированное программирование на языке C++'),
(N'Hardware-PC'),
(N'Администрирование Windows'),
(N'Администрирование UNIX'),
(N'Photoshop'),
(N'Illustrator'),
(N'Коммутация в локальных сетях'),
(N'Маршрутизация в IP-сетях');

SELECT * FROM disciplines;