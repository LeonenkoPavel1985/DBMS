USE SQLAcademy3;
CREATE TABLE Grades
(
grade_id INT NOT NULL PRIMARY KEY IDENTITY,
grade_given INT NOT NULL CONSTRAINT grade_check CHECK (grade_given >= 1 AND grade_given <= 12),
);
SELECT * FROM INFORMATION_SCHEMA.TABLES;

INSERT INTO  dbo.Grades (grade_given) VALUES (N'12');
INSERT INTO  dbo.Grades (grade_given) VALUES (N'10');
INSERT INTO  dbo.Grades (grade_given) VALUES (N'9');
INSERT INTO  dbo.Grades (grade_given) VALUES (N'5');
INSERT INTO  dbo.Grades (grade_given) VALUES (N'7');
INSERT INTO  dbo.Grades (grade_given) VALUES (N'12');

SELECT * FROM dbo.Grades;
