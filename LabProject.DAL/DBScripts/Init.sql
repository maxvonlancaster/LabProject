--DROP DATABASE Employees_DB;

CREATE DATABASE Employees_DB;

CREATE TABLE Employees
(
Id int PRIMARY KEY,
FirstName nvarchar,
LastName nvarchar,
Surname nvarchar,
PositionId int,
Adress nvarchar,
Characteristics nvarchar,
);

CREATE TABLE Projects
(
Id int PRIMARY KEY,
ProjectName nvarchar,
ProjectDescription nvarchar,
StartDate Date,
EndDate Date,
);

CREATE TABLE Positions
(
Id int PRIMARY KEY,
Position nvarchar,
Salary float,
);

CREATE TABLE ProjectEmployee
(
Id int PRIMARY KEY,
EmployeeId int,
ProjectId int,
DaysOnProject int,
);

ALTER TABLE ProjectEmployee
ADD FOREIGN KEY (EmployeeId) REFERENCES Employees2(Id);

ALTER TABLE ProjectEmployee
ADD FOREIGN KEY (ProjectId) REFERENCES Projects(Id);

ALTER TABLE Employees
ADD FOREIGN KEY (PositionId) REFERENCES Positions(Id);