CREATE DATABASE Student;
USE Student;

CREATE TABLE Student_class_roll (
    Roll numeric(5),
    Name varchar(30),
    Age numeric(5),
    Course varchar(5),
    Math numeric(6, 2),
    Physics numeric(6, 2),
    Computer numeric(6, 2),
    Birthday date
);

INSERT INTO Student_class_roll (Roll, Name, Age, Course, Math, Physics, Computer, Birthday)
VALUES
(1, 'Rahul', 22, 'BCA', 79.5, 67, 89, null),
(2, 'Kunal', 24, 'BCA', 68, 76, 59.5, null),
(3, 'Aditi', 23, 'MSc', 90, 73, 56, null),
(4, 'Sumit', 24, 'MCA', 57.5, 78, 81, null),
(5, 'Anirban', 21, 'MCA', 80, 68, 63, null),
(6, 'Kumkum', 20, 'BCA', 72, 54.5, 60, null),
(7, 'Suman', 21, 'BCA', 91.5, 32, 61, null),
(8, 'Rohit', 23, 'MSc', 85, 76, 92, null),
(9, 'Manas', 21, 'MCA', 95, 90.92, null, null),
(10, 'Avijit', 22, 'MSc', 85, 80, 65, null),
(11, 'Rex', 19, 'BCA', 94, 56, 78, null),
(12, 'Ram', 20, 'BCA', 85, 86, 87, null),
(13, 'Roshan', 19, 'BCA', 85, 96, 78, null),
(14, 'Aditya', 22, 'MSc', 76, 89, 97, null),
(15, 'Kashyap', 24, 'MCA', 56, 78, 45, null);

SELECT * FROM Student_class_roll;

CREATE TABLE MSc AS
SELECT * FROM Student_class_roll
WHERE Course = 'MSc';

SELECT * FROM MSc;

CREATE TABLE MCA AS
SELECT * FROM Student_class_roll
WHERE Course = 'MCA';

SELECT * FROM MCA;
