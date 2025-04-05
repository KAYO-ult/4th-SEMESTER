CREATE TABLE Examination_27_28 (En_Roll number(5),
Full_Name varchar2(30),
Age number(5),
Course varchar2(5),
Math number(6,2),
Physics number(6,2),
Computer number(6,2),
Birthday date);

CREATE TABLE MSc_Examination AS SELECT * FROM Examination_27_28;
DESC MSc_Examination;
CREATE TABLE MCA_Examination AS SELECT * FROM Examination_27_28;
DESC MCA_Examination;

INSERT INTO Examination_27_28 VALUES (1, 'Rahul Saha', 22, 'BCA', 79.5, 67, 89, '06-15-1993');
INSERT INTO Examination_27_28 VALUES (2, 'Kunal Mukherjee', 24, 'BCA', 68, 76, 59.5, '08-16-1991');
INSERT INTO Examination_27_28 VALUES (3, 'Aditi Das', 23, 'MSc', 90, 73, 56, '09-20-1992');
INSERT INTO Examination_27_28 VALUES (4, 'Sumit Vyas', 24, 'MCA', 57.5, 78, 81, '12-07-1991');
INSERT INTO Examination_27_28 VALUES (5, 'Anirban Das', 21, 'MCA', 80, 68, 63, '09-15-1994');
INSERT INTO Examination_27_28 VALUES (6, 'Kumkum Roy', 20, 'BCA', 72, 54.5, 60, '08-02-1995');
INSERT INTO Examination_27_28 VALUES (7, 'Suman Mondal', 21, 'BCA', 91.5, 32, 61, '10-03-1994');
INSERT INTO Examination_27_28 VALUES (8, 'Rohit Sharma', 23, 'MSc', 85, 76, 92, '04-19-1992');
INSERT INTO Examination_27_28 VALUES (9, 'Manas Das', 21, 'MCA', 95, 90, 92, '09-19-1994');
INSERT INTO Examination_27_28 VALUES (10, 'Avijit Ghosh', 22, 'MSc', 85, 80, 65, '07-19-1993');
INSERT INTO Examination_27_28 VALUES (11, 'Rex Joseph', 19, 'BCA', 94, 56, 78, '10-01-1996');
INSERT INTO Examination_27_28 VALUES (12, 'Ram Sharma', 20, 'BCA', 85, 86, 87, '07-15-1995');
INSERT INTO Examination_27_28 VALUES (13, 'Roshan Kumar', 19, 'BCA', 85, 96, 78, '01-15-1996');
INSERT INTO Examination_27_28 VALUES (14, 'Aditya Shaw', 22, 'MSc', 76, 89, 97, '08-18-1993');
INSERT INTO Examination_27_28 VALUES (15, 'Kashyap Roy', 24, 'MCA', 56, 78, 45, '10-17-1991');

INSERT INTO Examination_27_28 VALUES (16, 'Arya Kumar', 25, 'MCA', NULL, NULL, NULL, '06-16-1990');
INSERT INTO Examination_27_28 VALUES (17, 'Navin Shah', NULL, 'BCA', 45, 55, 62, NULL);

SELECT * FROM Examination_27_28;



SELECT En_Roll, Full_Name, Math, Physics, Computer FROM Examination_27_28;
SELECT Course, En_Roll, Full_Name, Age, Math, Physics, Computer, Birthday FROM Examination_27_28;
SELECT * FROM Examination_27_28 WHERE En_Roll = 5;
SELECT * FROM Examination_27_28 WHERE Course = 'BCA';                   #17

INSERT INTO MCA_Examination SELECT * FROM Examination_27_28 WHERE Course = 'MCA';
SELECT * FROM MCA_Examination;
DESC MCA_Examination;

INSERT INTO MSc_Examination SELECT * FROM Examination_27_28 WHERE Course = 'MCA';
SELECT * FROM MSc_Examination;
DESC MSc_Examination;

UPDATE Examination_27_28 SET Math = 95 WHERE En_Roll = 7;
UPDATE Examination_27_28 SET Full_Name = 'Sumitava' WHERE En_Roll = 4;

UPDATE Examination_27_28 SET Birthday = '02-15-1996' WHERE Full_Name = 'Roshan Kumar';               #24

DELETE FROM Examination_27_28 WHERE En_Roll = 2;
DELETE FROM Examination_27_28 WHERE En_Roll = 5;

DELETE FROM Examination_27_28 WHERE Course = 'MSc';
DELETE FROM Examination_27_28 WHERE Course = 'MCA';

DELETE FROM Examination_27_28;

DROP TABLE Examination_27_28;















INSERT INTO Examination_27_28 VALUES (1, 'Rahul Saha', 22, 'BCA', 79.5, 67, 89, '15-jun-93');
INSERT INTO Examination_27_28 VALUES (2, 'Kunal Mukherjee', 24, 'BCA', 68, 76, 59.5, '16-aug-91');
INSERT INTO Examination_27_28 VALUES (3, 'Aditi Das', 23, 'MSc', 90, 73, 56, '20-sep-92');
INSERT INTO Examination_27_28 VALUES (4, 'Sumit Vyas', 24, 'MCA', 57.5, 78, 81, '07-dec-91');
INSERT INTO Examination_27_28 VALUES (5, 'Anirban Das', 21, 'MCA', 80, 68, 63, '15-sep-94');
INSERT INTO Examination_27_28 VALUES (6, 'Kumkum Roy', 20, 'BCA', 72, 54.5, 60, '08-feb-95');
INSERT INTO Examination_27_28 VALUES (7, 'Suman Mondal', 21, 'BCA', 91.5, 32, 61, '10-mar-94');
INSERT INTO Examination_27_28 VALUES (8, 'Rohit Sharma', 23, 'MSc', 85, 76, 92, '19-apr-92');
INSERT INTO Examination_27_28 VALUES (9, 'Manas Das', 21, 'MCA', 95, 90, 92, '19-sep-94');
INSERT INTO Examination_27_28 VALUES (10, 'Avijit Ghosh', 22, 'MSc', 85, 80, 65, '19-july-93');
INSERT INTO Examination_27_28 VALUES (11, 'Rex Joseph', 19, 'BCA', 94, 56, 78, '10-jan-96');
INSERT INTO Examination_27_28 VALUES (12, 'Ram Sharma', 20, 'BCA', 85, 86, 87, '15-july-95');
INSERT INTO Examination_27_28 VALUES (13, 'Roshan Kumar', 19, 'BCA', 85, 96, 78, '15-jan-96');
INSERT INTO Examination_27_28 VALUES (14, 'Aditya Shaw', 22, 'MSc', 76, 89, 97, '18-aug-93');
INSERT INTO Examination_27_28 VALUES (15, 'Kashyap Roy', 24, 'MCA', 56, 78, 45, '17-oct-91');

INSERT INTO Examination_27_28 VALUES (16, 'Arya Kumar', 25, 'MCA', NULL, NULL, NULL, '16-jun-90');
INSERT INTO Examination_27_28 VALUES (17, 'Navin Shah', NULL, 'BCA', 45, 55, 62, NULL);



