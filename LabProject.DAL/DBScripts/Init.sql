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






















































-- It was Coney Island. They called Coney Island, "the playground of the world." There was no place like it, in the whole world, like Coney Island when I was a youngster. No place in the world like it, and it was so fabulous. Now it's shrunk down to almost nothing, you see. And, uh, I still remember in my mind how things used to be, and uh, you know, I feel very bad. But people from all over the world came here. From all over the world, it was the playground -- they called it the playground of the world, over here. Anyways, uh, I... uh... you know... I even got -- when I was very small, I even got lost at Coney Island, but they found me. On the, on the beach. And we used to sleep on the beach here, sleep overnight. They don't do that anymore. Things changed, you see. They don't sleep anymore on the beach...
