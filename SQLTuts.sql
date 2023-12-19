
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

-- 6. altering table
-- syntax: ALTER TABLE tableName
-- ADD col1 datatype1,
-- ADD col2 datatype2;
ALTER TABLE students
ADD Email VARCHAR(50),
Address VARCHAR(60);



-- 5. Check the schema
--syntax SP_HELP tableName
SP_HELP students;

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


-- select query
-- syntax: SELECT * FROM tableName; retrive all data from table
-- syntax: SELECT clo1,col2 FROM tableName; retrive specific column data
-- syntax : SELECT * FROM tableName WHERE id = 2; retrive specific row data
SELECT * FROM students;



