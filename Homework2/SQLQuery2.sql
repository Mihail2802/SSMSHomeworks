SELECT *
FROM dbo.Student
WHERE FirstName = 'Antonio'
go

Select *
from dbo.Student
where DateOfBirth > '01.01.1999'
go

select *
from Student
where LastName like 'J%' and EnrolledDate like '1998-01%'
go

select * from Student
order by FirstName 
go

select s.LastName as StudentLastname,t.LastName as TeacherLastName
from Teacher as t ,Student as s 
go

Alter table dbo.Grade
ADD CONSTRAINT FK_StudentID FOREIGN KEY (StudentID) REFERENCES dbo.Student (Id)
go

Alter table dbo.Grade
ADD CONSTRAINT FK_CourseID FOREIGN KEY (CourseID) REFERENCES dbo.Course (Id)
go

Alter table dbo.Grade
ADD CONSTRAINT FK_TeacherID FOREIGN KEY (TeacherID) REFERENCES dbo.Teacher (Id)
go

Alter table dbo.GradeDetails
ADD CONSTRAINT FK_Grade FOREIGN KEY (GradeID) REFERENCES dbo.Grade (Id)
go

Alter table dbo.GradeDetails
ADD CONSTRAINT FK_AchievementTypeID FOREIGN KEY (AchievementTypeID) REFERENCES dbo.AchievementType(Id)
go

SELECT c.Name AS Course , a.Name AS Achievement
FROM Course c
CROSS JOIN AchievementType a;
go

SELECT *
FROM Teacher t
LEFT JOIN Grade g ON t.Id = g.TeacherID
WHERE g.TeacherID is null;
GO



