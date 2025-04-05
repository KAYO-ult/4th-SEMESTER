-- 1. Display existing employees table
SELECT * FROM employees; -- If using Oracle default HR schema

-- 2. Display structure of the employees table
DESC employees;

-- 3. Create "Student_class_roll" table
CREATE TABLE Student_class_roll (
    Roll_Number NUMBER(5) PRIMARY KEY,
    Name VARCHAR2(30),
    Age NUMBER(5),
    Course VARCHAR2(5),
    Math NUMBER(6,2),
    Physics NUMBER(6,2),
    Computer NUMBER(6,2),
    Birthday DATE
);

-- 4. Create "MSc" table with the same structure as Student_class_roll but without data
CREATE TABLE MSc AS 
SELECT * FROM Student_class_roll WHERE 1=2;

-- 5. Display structure of MSc table
DESC MSc;

-- 6. Create "MCA" table from Student_class_roll, renaming Course to Department and Name to First_Name
CREATE TABLE MCA AS 
SELECT Roll_Number, Name AS First_Name, Age, Course AS Department, Math, Physics, Computer, Birthday 
FROM Student_class_roll 
WHERE 1=2;

-- 7. Display structure of MCA table
DESC MCA;

-- 8. Insert records into Student_class_roll table
INSERT INTO Student_class_roll VALUES (1, 'Rahul', 22, 'BCA', 79.5, 67, 89, '15-jun-93');
INSERT INTO Student_class_roll VALUES (2, 'Kunal', 24, 'BCA', 68, 76, 59.5, '16-aug-91');
INSERT INTO Student_class_roll VALUES (3, 'Aditi', 23, 'MSc', 90, 73, 56, '20-sep-92');
INSERT INTO Student_class_roll VALUES (4, 'Sumit', 24, 'MCA', 57.5, 78, 81, '07-dec-91');
INSERT INTO Student_class_roll VALUES (5, 'Anirban', 21, 'MCA', 80, 68, 63, '15-sep-94');
INSERT INTO Student_class_roll VALUES (6, 'Kumkum', 20, 'BCA', 72, 54.5, 60, '08-feb-95');
INSERT INTO Student_class_roll VALUES (7, 'Suman', 21, 'BCA', 91.5, 32, 61, '10-mar-94');
INSERT INTO Student_class_roll VALUES (8, 'Rohit', 23, 'MSc', 85, 76, 92, '19-apr-92');
INSERT INTO Student_class_roll VALUES (9, 'Manas', 21, 'MCA', 95, 90.92, 89, '19-sep-94');
INSERT INTO Student_class_roll VALUES (10, 'Avijit', 22, 'MSc', 85, 80, 65, '19-jul-93');
INSERT INTO Student_class_roll VALUES (11, 'Rex', 19, 'BCA', 94, 56, 78, '10-jan-96');
INSERT INTO Student_class_roll VALUES (12, 'Ram', 20, 'BCA', 85, 86, 87, '15-jul-95');
INSERT INTO Student_class_roll VALUES (13, 'Roshan', 19, 'BCA', 85, 96, 78, '15-jan-96');
INSERT INTO Student_class_roll VALUES (14, 'Aditya', 22, 'MSc', 76, 89, 97, '18-aug-93');
INSERT INTO Student_class_roll VALUES (15, 'Kashyap', 24, 'MCA', 56, 78, 45, '17-oct-91';

-- 9. Display all students' details from Student_class_roll table
SELECT * FROM Student_class_roll;

-- 10. Display roll, name, and marks of all subjects for all students
SELECT Roll_Number, Name, Math, Physics, Computer FROM Student_class_roll;
