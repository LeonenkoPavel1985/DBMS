USE SQLAcademy3;

ALTER TABLE [groups]
ADD speciality INT 
CONSTRAINT FK_group_speciality FOREIGN KEY REFERENCES specialities (speciality_id)