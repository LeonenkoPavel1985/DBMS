USE SQLAcademy3;

ALTER TABLE students
DROP CONSTRAINT FK__students__specia__3B75D760;
GO
ALTER TABLE students
DROP COLUMN speciality;
GO