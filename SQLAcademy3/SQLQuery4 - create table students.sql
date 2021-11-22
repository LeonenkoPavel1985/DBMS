USE SQLAcademy3;
CREATE TABLE students
(
student_id INT NOT NULL PRIMARY KEY IDENTITY,
last_name NVARCHAR (100) NOT NULL,
first_name NVARCHAR (100) NOT NULL,
middle_name NVARCHAR (100) NOT NULL,
birth_date DATE NOT NULL,
year_of_study INT NOT NULL CONSTRAINT year_check CHECK (year_of_study >= 1 AND year_of_study <= 5),
rating REAL CONSTRAINT rating_check CHECK (rating >=0 AND rating <= 100),
attendance INT CONSTRAINT attendance_check CHECK (attendance >=0 AND attendance <= 100),
speciality INT FOREIGN KEY  REFERENCES dbo.specialities(speciality_id),
stady_group INT FOREIGN KEY  REFERENCES dbo.groups(group_id)
);

SELECT * FROM INFORMATION_SCHEMA.TABLES;