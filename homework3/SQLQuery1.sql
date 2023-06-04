select t.FirstName , t.LastName , count(g.Grade) as Grades
from Teacher t
join Grade g on t.Id = g.TeacherID
group by t.Id , t.FirstName , t.LastName
go

select s.FirstName , s.LastName ,count(g.Grade) as Grades
from Teacher t
join Grade g on t.Id = g.TeacherID
join Student s on g.StudentID = s.Id
where s.Id <= 100
group by s.Id , s.FirstName , s.LastName
go

select StudentID, max(Grade) as MaxGrade,avg(Grade) as AverageGrade
From Grade
group by studentID
go


select t.FirstName as Teacher , count(*) as GradeCount
from Grade g
join Teacher t ON t.Id = g.TeacherID
group by t.FirstName
having count(*) > 200
GO

select s.FirstName,count(g.Grade) as GradeCount , avg(g.Grade) as AverageGrade , max(g.Grade) as GradeMax
from Grade g
JOIN Student s On s.Id = g.StudentID
group by s.FirstName
having max(g.Grade) = avg(g.Grade)
GO

select s.FirstName,count(g.Grade) as GradeCount , avg(g.Grade) as AverageGrade , max(g.Grade) as GradeMax
from Grade g
JOIN Student s On s.Id = g.StudentID
group by s.FirstName ,s.LastName
having max(g.Grade) = max(g.Grade)
GO

Create or Alter View vv_StudentGrades
as
select StudentID , count(Grade) as Gradecount
from Grade
Group by StudentID
go

select * from vv_StudentGrades
go

Create or Alter View vv_StudentsFullName
AS
SELECT s.FirstName , s.LastName , count(*) AS GradeCount
FROM Grade g
JOIN Student s ON s.Id = g.StudentID
GROUP BY s.Id , s.FirstName , s.LastName
Go

select * from vv_StudentsFullName
GO

select * from vv_StudentsFullName
order by GradeCount desc
Go
