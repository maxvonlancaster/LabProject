--DROP DATABASE Employees_DB;

CREATE DATABASE Employees_DB;

CREATE TABLE Employees
(
Id int PRIMARY KEY IDENTITY(1,1),
FirstName nvarchar(max),
LastName nvarchar(max),
Surname nvarchar(max),
PositionId int,
Adress nvarchar(max),
Characteristics nvarchar(max),
);

CREATE TABLE Projects
(
Id int PRIMARY KEY IDENTITY(1,1),
ProjectName nvarchar(max),
ProjectDescription nvarchar(max),
StartDate Date,
EndDate Date,
);

CREATE TABLE Positions
(
Id int PRIMARY KEY IDENTITY(1,1),
Position nvarchar(max),
Salary int,
);

CREATE TABLE ProjectEmployee
(
Id int PRIMARY KEY IDENTITY(1,1),
EmployeeId int,
ProjectId int,
DaysOnProject int,
);

ALTER TABLE ProjectEmployee
ADD FOREIGN KEY (EmployeeId) REFERENCES Employees(Id);

ALTER TABLE ProjectEmployee
ADD FOREIGN KEY (ProjectId) REFERENCES Projects(Id);

ALTER TABLE Employees
ADD FOREIGN KEY (PositionId) REFERENCES Positions(Id);