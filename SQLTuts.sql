
--1. Creating database
-- Syntax: CREATE DATABASE databaseName;
CREATE DATABASE CollegeDb;

-- other databases (no differnce if we use captial or small words)
create database temp1;

create database temp2;

CREATE DATABASE College;

-- 2. Drop database (delete database)
-- Syntax: DROP DATABASE databaseName;
DROP DATABASE CollegeDb;


-- 3. Using database
-- Syntax: USE databaseName;
USE College;

--4. Creating table (define schema)
-- Syntax: CREATE TABLE tableName(
-- col1 datatype1 constraint,
-- col2 datatype2 constraint,
-- col3 datatype3 constraint
--);
CREATE TABLE students(
StudentId INT,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Branch VARCHAR(25),
Semester INT
);

-- 8. altering table
-- syntax: ALTER TABLE tableName //common for everything
-- ADD col1 datatype1,
-- ADD col2 datatype2;
ALTER TABLE students
ADD Email VARCHAR(50),
Address VARCHAR(60);

ALTER TABLE students
DROP COLUMN Semester

ALTER TABLE students
ALTER COLUMN Branch VARCHAR(40);

--6. Inserting data
--syntax INSERT INTO tableName VALUES(val1,val2,....);
--for specific column then we use
-- INSERT INTO tableName(col1,col2) VALUES(val1,val2);
-- here not defined column name have null value by default
INSERT INTO students VALUES(100,'Ram','Tamang','BCA',3);
INSERT INTO students VALUES(101,'Manoj','Basnet','CSIT',6);
INSERT INTO students VALUES(102,'Bibek','Karki','BIT',4);
INSERT INTO students VALUES(103,'Yubaraj','Sapkota','CSIT',8);

INSERT INTO students VALUES(105,'Shyam'); --it throws an error

INSERT INTO students(StudentId,FirstName,Semester) VALUES(104, 'Saroj',5);


-- 9. updating table value
-- syntax: UPDATE tableName
-- SET colname1 = colval1, colname2 = colval2
-- WHERE this = this // here where is used to filterout the table value to change.
UPDATE students
SET LastName = 'Karki'
WHERE StudentId = 104;

UPDATE students 
SET Email  = 'abc@gmail.com', FirstName = 'Hari'
WHERE LastName = 'Karki';

UPDATE students 
SET Email  = 'saroj@gmail.com', FirstName = 'Saroj', LastName = 'Tamang'
WHERE StudentId = 104;


-- 10. CONSTRAINT nameOfTheConstraint //syntax for writting Constraint //eg: pkColumnName general practise for Constraint name
CREATE TABLE Student(
StudentId INT CONSTRAINT pkStudentId PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50),
BranchId INT CONSTRAINT fkBranchId FOREIGN KEY REFERENCES Branch(BranchId),
Email VARCHAR(60) CONSTRAINT unqEmail UNIQUE 
);

-- Testing Student table
INSERT INTO Student VALUES(1,'Manav','Sharma',100,'manish@test.com');
INSERT INTO Student VALUES(2,'Bobby','Pal',102,'manav@test.com');
INSERT INTO Student VALUES(3,'Manish','Mehta',104,'bobby@test.com');
--INSERT INTO Student VALUES(1,'Manav','Sharma',103,'manish@test.com');
INSERT INTO Student(StudentId,FirstName,BranchId)VALUES(4,'Raju',102);
INSERT INTO Student(StudentId,FirstName,BranchId,Email)VALUES(5,'Shyam',104,'shyam@test.com');

UPDATE Student
SET LastName='Dhungana' 
WHERE StudentId=5;

CREATE TABLE Branch(
BranchId INT CONSTRAINT pkBranchId PRIMARY KEY,
BranchName VARCHAR(20),
Capacity INT CONSTRAINT defCapacity DEFAULT 200 
);

-- 11. ALTER TABLE TO ADD CONSTRAINT
ALTER TABLE Branch
ADD CONSTRAINT chkBranchName CHECK (BranchName IN ('EE','CSE','ECE','ME','IT'));

-- Testing Branch table
INSERT INTO Branch VALUES(100,'EE',200);
INSERT INTO Branch VALUES(101,'CSE',200);
INSERT INTO Branch VALUES(102,'ECE',150);
INSERT INTO Branch VALUES(103,'ME',150);

INSERT INTO Branch(BranchId,BranchName) VALUES(104,'IT');

--INSERT INTO Branch VALUES(105,'AI',140);











DELETE FROM Branch WHERE BranchId=104;
DELETE FROM Student WHERE StudentId=2;

SELECT * FROM Branch;


-- 7. select query
-- syntax: SELECT * FROM tableName; retrive all data from table
-- syntax: SELECT clo1,col2 FROM tableName; retrive specific column data
-- syntax : SELECT * FROM tableName WHERE id = 2; retrive specific row data
SELECT * FROM Student;


-- 5. Check the schema
--syntax SP_HELP tableName
SP_HELP Student;


--DROP TABLE Student;


