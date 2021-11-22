USE SQLAcademy3;
CREATE TABLE grades
(
[grades_id] INT NOT NULL PRIMARY KEY IDENTITY (1,1),
[grade] INT NOT NULL CONSTRAINT grade_check CHECK (grade_given >= 1 AND grade_given <= 12),
[student] INT FOREIGN KEY REFERENCES [students] (student_id),
[discipline] INT FOREIGN KEY REFERENCES [disciplines] (discipline_id),
[teacher] INT FOREIGN KEY REFERENCES [teachers] (teacher_id)
);

INSERT INTO grades (grade, student,discipline ,teacher)
VALUES
(N'12', N'1',N'1',N'4',N'1'),
(N'10', N'2',N'1',N'5',N'2'),

SELECT * FROM grades;