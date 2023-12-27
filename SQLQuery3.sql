
-- Identity Column
-- Syntax: Identity(seed,increment) //here seed = starting value and increment = incrementing by what value

CREATE TABLE Sports
(
SportsID INT IDENTITY(100,1) NOT NULL,
SportsName VARCHAR(50) NOT NULL,
EnrolledStudentId INT
);

INSERT INTO Sports(SportsName,EnrolledStudentId) VALUES('Football',1);
INSERT INTO Sports(SportsName,EnrolledStudentId) VALUES('Cricket',2);
INSERT INTO Sports(SportsName,EnrolledStudentId) VALUES('Basket Ball',3);
INSERT INTO Sports(SportsName,EnrolledStudentId) VALUES('Badminton',4);

-- DELETE 
-- Syntax: DELETE FROM tableName filter
DELETE FROM Sports
WHERE SportsID=102;

-- Trucate
-- Syntax: TRUNCATE TABLE tableName;
TRUNCATE TABLE Sports;

--Drop
-- Syntax: DROP TABLE tableName;
DROP TABLE Sports;


SELECT * FROM Sports;

