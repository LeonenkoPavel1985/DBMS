USE SQLAcademy3;

CREATE TABLE grades
(
grade_id INT NOT NULL PRIMARY KEY IDENTITY (1,1),
grade1 INT CHECK (grade1 > 0 AND grade1 <= 12),
grade2 INT CHECK (grade2 > 0 AND grade2 <= 12),
student INT FOREIGN KEY REFERENCES dbo.students (student_id),
lesson INT FOREIGN KEY REFERENCES dbo.schedule (lesson_id)
);