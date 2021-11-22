USE SQLAcademy3;
CREATE TABLE schedule
(
[lesson_id] INT NOT NULL PRIMARY KEY IDENTITY (1,1),
[lesson-time] DATETIME,
[group] INT FOREIGN KEY REFERENCES [groups] (group_id),
[discipline] INT FOREIGN KEY REFERENCES [disciplines] (discipline_id),
[teacher] INT FOREIGN KEY REFERENCES [teachers] (teacher_id)
);