
CREATE TABLE Student (
    Id INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    EnrolledDate DATE,
    NationalIDNumber VARCHAR(20),
    Gender VARCHAR(10),
    StudentCardNumber VARCHAR(20)
);
GO

CREATE TABLE Teacher (
    Id INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    AcademicRank VARCHAR(50),
    HireDate DATE
);

CREATE TABLE Grade (
    Id INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    TeacherID INT,
    Grade INT,
    Comment VARCHAR(500),
    CreatedDate DATETIME
);
GO

CREATE TABLE Course (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Credit INT,
    AcademicYear INT,
    Semester VARCHAR(20)
);
GO

CREATE TABLE GradeDetails (
    ID INT PRIMARY KEY,
    GradeID INT,
    AchievementTypeID INT,
    AchievementPoints DECIMAL(5, 2),
    AchievementMaxPoints DECIMAL(5, 2),
    AchievementDate DATE
);


CREATE TABLE AchievementType (
    Id INT PRIMARY KEY,
    AchievementName Varchar(50),
	AchievementDescription Varchar(max),
	ParticipationRate INT,
);
GO
