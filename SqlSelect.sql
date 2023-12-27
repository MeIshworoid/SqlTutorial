
CREATE TABLE AllStudents
(
StudentId INT CONSTRAINT pkAllStudentId PRIMARY KEY NOT NULL,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50),
Branch VARCHAR(70) NOT NULL,
Email VARCHAR(60) CONSTRAINT unqAllEmail UNIQUE,
PhoneNo VARCHAR(20),
MarksObtained INT
);

-- eutai query le multiple row insert garnu xa vane following method use garne
-- INSERT INTO tableName(yaha hami column name ni specify garna sakxau) VALUES
-- (row1-val),
-- (row2-val),
-- (row3-val),
-- (rown-val);


INSERT INTO AllStudents VALUES
    (1, 'John', 'Doe', 'Computer Science', 'john.doe@email.com', '123-456-7890', 85),
    (2, 'Jane', 'Smith', 'Electrical Engineering', 'jane.smith@email.com', '987-654-3210', 92),
    (3, 'Michael', 'Johnson', 'Mechanical Engineering', 'michael.johnson@email.com', '555-123-4567', 78),
    (4, 'Emily', 'Davis', 'Computer Science', 'emily.davis@email.com', '333-789-0123', 91),
    (5, 'Brian', 'Taylor', 'Electrical Engineering', 'brian.taylor@email.com', '456-789-0123', 76),
    (6, 'Sarah', 'Anderson', 'Mechanical Engineering', 'sarah.anderson@email.com', '789-012-3456', 88),
    (7, 'David', 'Miller', 'Computer Science', 'david.miller@email.com', '012-345-6789', 94),
    (8, 'Melissa', 'Wilson', 'Electrical Engineering', 'melissa.wilson@email.com', '321-098-7654', 82),
    (9, 'James', 'Brown', 'Mechanical Engineering', 'james.brown@email.com', '111-222-3333', 89),
    (10, 'Emma', 'Martinez', 'Computer Science', 'emma.martinez@email.com', '444-555-6666', 77),
    (11, 'Daniel', 'Rodriguez', 'Electrical Engineering', 'daniel.rodriguez@email.com', '555-666-7777', 95),
    (12, 'Olivia', 'Lee', 'Mechanical Engineering', 'olivia.lee@email.com', '666-777-8888', 83),
    (13, 'Ethan', 'Hernandez', 'Computer Science', 'ethan.hernandez@email.com', '777-888-9999', 90),
    (14, 'Ava', 'Kim', 'Electrical Engineering', 'ava.kim@email.com', '888-999-0000', 79),
    (15, 'Benjamin', 'Nguyen', 'Mechanical Engineering', 'benjamin.nguyen@email.com', '999-000-1111', 86),
    (16, 'Mia', 'Patel', 'Computer Science', 'mia.patel@email.com', '000-111-2222', 80),
    (17, 'Noah', 'Gupta', 'Electrical Engineering', 'noah.gupta@email.com', '111-222-3333', 93),
    (18, 'Sophia', 'Smith', 'Mechanical Engineering', 'sophia.smith@email.com', '222-333-4444', 75),
    (19, 'Elijah', 'Davis', 'Computer Science', 'elijah.davis@email.com', '333-444-5555', 87),
    (20, 'Isabella', 'Patel', 'Electrical Engineering', 'isabella.patel@email.com', '444-555-6666', 84);

SP_HELP AllStudents;

SELECT *
FROM AllStudents;

SELECT StudentId,FirstName,Branch,MarksObtained
FROM AllStudents;

SELECT DISTINCT Branch
FROM AllStudents;