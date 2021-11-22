USE SQLAcademy3;
GO

CREATE TABLE teacher_discipline
(
relation_id INT NOT NULL PRIMARY KEY IDENTITY (1,1),
teacher INT CONSTRAINT FK__teacher FOREIGN KEY REFERENCES  teachers (teacher_id),
discipline INT CONSTRAINT FK__discipline FOREIGN KEY REFERENCES disciplines (discipline_id)
)