
-- Identity Column
-- Syntax: Identity(seed,increment) //here seed = starting value and increment = incrementing by what value

CREATE TABLE Sports(
SportsID INT IDENTITY(100,1) NOT NULL,
SportsName VARCHAR(50) NOT NULL,
EnrolledStudentId INT
);