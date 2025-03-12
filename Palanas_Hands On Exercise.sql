
-- 1. Create a table for Students

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Course VARCHAR(100) NOT NULL
);

-- 2. Insert five records into the Students table

INSERT INTO Students (StudentID, Name, Email, Course) VALUES
(1, 'John Doe', 'johndoe@example.com', 'Computer Science'),
(2, 'Jane Smith', 'janesmith@example.com', 'Information Technology'),
(3, 'Alice Johnson', 'alicejohnson@example.com', 'Computer Science'),
(4, 'Bob Brown', 'bobbrown@example.com', 'Data Science'),
(5, 'Charlie White', 'charliewhite@example.com', 'Information Technology');


-- 3. Retrieve all students enrolled in a specific course (e.g., 'Computer Science')

SELECT * FROM Students WHERE Course = 'Computer Science';


-- 4. Update the email of a student with a specific StudentID (e.g., StudentID = 3)

UPDATE Students 
SET Email = 'alice.newemail@example.com' 
WHERE StudentID = 3;


-- 5. Delete a student record based on their StudentID (e.g., StudentID = 4)

DELETE FROM Students WHERE StudentID = 4;
