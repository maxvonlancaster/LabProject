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






















































-- It was Coney Island. They called Coney Island, "the playground of the world." There was no place like it, in the whole world, like Coney Island when I was a youngster. No place in the world like it, and it was so fabulous. Now it's shrunk down to almost nothing, you see. And, uh, I still remember in my mind how things used to be, and uh, you know, I feel very bad. But people from all over the world came here. From all over the world, it was the playground -- they called it the playground of the world, over here. Anyways, uh, I... uh... you know... I even got -- when I was very small, I even got lost at Coney Island, but they found me. On the, on the beach. And we used to sleep on the beach here, sleep overnight. They don't do that anymore. Things changed, you see. They don't sleep anymore on the beach...
