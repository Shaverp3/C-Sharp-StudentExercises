--CREATE TABLE Cohorts (
--    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--    Name VARCHAR(55) NOT NULL
--);

--CREATE TABLE Instructors (
--    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--    FirstName VARCHAR(55) NOT NULL,
--    LastName VARCHAR (55) NOT NULL,
--    SlackHandle VARCHAR (55) NULL,
--    CohortId INTEGER NOT NULL,
--    Specialty VARCHAR (75) NULL,
--    CONSTRAINT FK_Instructors_Cohorts FOREIGN KEY(CohortId) REFERENCES Cohorts(Id)
--);

--CREATE TABLE Students (
--    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--    FirstName VARCHAR(55) NOT NULL,
--    LastName VARCHAR (55) NOT NULL,
--    SlackHandle VARCHAR (55) NULL,
--    CohortId INTEGER NOT NULL,
--    CONSTRAINT FK_Students_Cohorts FOREIGN KEY(CohortId) REFERENCES Cohorts(Id)
--);

--CREATE TABLE Exercises (
--    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--    Name VARCHAR(55) NOT NULL,
--    Language VARCHAR (55) NOT NULL
--);

--CREATE TABLE StudentsJoinExercises (
--    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--    StudentId INTEGER NOT NULL,
--    ExerciseId INTEGER NOT NULL,
--    CONSTRAINT FK_StudentsJoinExercises_Students FOREIGN KEY(StudentId) REFERENCES Students(Id),
--    CONSTRAINT FK_StudentsJoinExercises_Exercises FOREIGN KEY(ExerciseId) REFERENCES Exercises(Id)
--);

---- Add some data to the tables

--INSERT INTO Cohorts (Name) VALUES ('Cohort 1');
--INSERT INTO Cohorts (Name) VALUES ('Cohort 2');
--INSERT INTO Cohorts (Name) VALUES ('Cohort 3');


--INSERT INTO Exercises (Name, Language) VALUES ('Kennel', 'JavaScript');
--INSERT INTO Exercises (Name, Language) VALUES ('Nutshell', 'React.js');
--INSERT INTO Exercises (Name, Language) VALUES ('Daily Journal', 'JavaScript');
--INSERT INTO Exercises (Name, Language) VALUES ('Student Exercises', 'C Sharp');
--INSERT INTO Exercises (Name, Language) VALUES ('Chicken-Monkey', 'JavaScript');


--INSERT INTO Instructors (FirstName, LastName, SlackHandle, CohortId, Specialty) VALUES ('Jordan', 'Castelloe', 'Jordan Castelloe', 3, 'Lover of Pets');
--INSERT INTO Instructors (FirstName, LastName, SlackHandle, CohortId, Specialty) VALUES ('Tommy', 'Spurlock', 'Thomas Spurlock', 3, 'Salsa Dancing');
--INSERT INTO Instructors (FirstName, LastName, SlackHandle, CohortId, Specialty) VALUES ('Jacob', 'Perry', 'Jacob Perry', 2, 'Friend of Devin');
--INSERT INTO Instructors (FirstName, LastName, SlackHandle, CohortId, Specialty) VALUES ('Jennifer', 'Johnson', 'Jen Johnson', 2, 'Documentation');
--INSERT INTO Instructors (FirstName, LastName, SlackHandle, CohortId, Specialty) VALUES ('Janice', 'Smith', 'Jan', 1, 'Javascript');


--INSERT INTO Students (FirstName, LastName, SlackHandle, CohortId) VALUES ('Pat', 'Shaver', 'Pat Shaver', 3);
--INSERT INTO Students (FirstName, LastName, SlackHandle, CohortId) VALUES ('Sarah', 'Brooks', 'Sarah', 3);
--INSERT INTO Students (FirstName, LastName, SlackHandle, CohortId) VALUES ('Sydney', 'Wait', 'Sydney', 2);
--INSERT INTO Students (FirstName, LastName, SlackHandle, CohortId) VALUES ('Bobby', 'Fitzpatrick', 'Bobby', 2);
--INSERT INTO Students (FirstName, LastName, SlackHandle, CohortId) VALUES ('Barry', 'Griffith', 'Barry Griffith', 3);
--INSERT INTO Students (FirstName, LastName, SlackHandle, CohortId) VALUES ('Ryan', 'Clay', 'Ryan', 2);
--INSERT INTO Students (FirstName, LastName, SlackHandle, CohortId) VALUES ('David', 'Bird', 'David Bird', 1);
--INSERT INTO Students (FirstName, LastName, SlackHandle, CohortId) VALUES ('John', 'Smith', 'John Smith', 1);
--INSERT INTO Students (FirstName, LastName, SlackHandle, CohortId) VALUES ('Mandy', 'Campbell', 'Mandy', 3);
--INSERT INTO Students (FirstName, LastName, SlackHandle, CohortId) VALUES ('Devin', 'Conroy', 'Devin', 3);

--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (1, 4);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (1, 1);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (1, 2);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (2, 3);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (2, 4);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (2, 5);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (3, 1);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (4, 2);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (5, 4);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (5, 3);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (5, 1);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (6, 4);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (6, 5);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (7, 5);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (8, 4);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (8, 2);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (9, 3);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (9, 1);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (10, 4);
--INSERT INTO StudentsJoinExercises(StudentId, ExerciseId) VALUES (10, 5);


--Write a query to return student first and last names with their cohort's name only for a single cohort.

-- SELECT s.FirstName, s.LastName, c.Name AS 'Cohort Name' FROM Cohorts c LEFT JOIN Students s ON CohortId = c.Id Where CohortId = 3


--Write a query to return all instructors ordered by their last name.
--NOTE: SQL offers the ability to order by columns in a table.

--SELECT FirstName, LastName from Instructors ORDER BY LastName


--Write a query to return a list of unique instructor specialties.
--NOTE: Take a look at SQL SELECT DISTINCT Statement for some guidance.

--SELECT DISTINCT (Specialty) from Instructors


--Write a query to return a list of all student names along with the names of the exercises they have been assigned. If an exercise has not been assigned, it should not be in the result.
--NOTE: sometimes you need to join more than two tables in a query.

--SELECT s.FirstName, s.LastName, e.Name AS 'Exercise Name' FROM StudentsJoinExercises se LEFT JOIN Students s ON StudentId=s.Id
--LEFT JOIN Exercises e ON ExerciseId=e.Id


--Return a list of student names along with the count of exercises assigned to each student.
--NOTE: SQL has a group by just like LINQ does.

--SELECT s.FirstName, s.LastName, s.Id, COUNT(e.Id) AS 'Number of Assigned Exercises' FROM StudentsJoinExercises se
--LEFT JOIN Students s ON StudentId=s.Id
--LEFT JOIN Exercises e ON ExerciseId=e.Id
--GROUP BY s.Id, s.LastName, s.FirstName

