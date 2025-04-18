-- 1. Create table EMP_YourClassRoll
CREATE TABLE EMP_YourClassRoll (
    ID INT PRIMARY KEY,
    Name VARCHAR2(25),
    Basic INT,
    Designation VARCHAR2(20),
    Age INT
);

-- 2. Change data type of Basic from INT to FLOAT
ALTER TABLE EMP_YourClassRoll MODIFY Basic FLOAT(10);

-- 3. Increase field size of Name column by 5
ALTER TABLE EMP_YourClassRoll MODIFY Name VARCHAR2(30);

-- 4. Decrease field size of Designation column by 1 (if possible)
ALTER TABLE EMP_YourClassRoll MODIFY Designation VARCHAR2(19);

-- 5. Create EMP_trainee table with the same structure and rename ID to Emp_id
CREATE TABLE EMP_trainee AS 
SELECT ID AS Emp_id, Name, Basic, Designation, Age 
FROM EMP_YourClassRoll 
WHERE 1=2;


-- 6. Insert data into EMP_YourClassRoll
INSERT INTO EMP_YourClassRoll VALUES (1, 'Rohit', 6700, 'Manager', 24);
INSERT INTO EMP_YourClassRoll VALUES (2, 'Sunil', 6200, 'Engineer', 27);
INSERT INTO EMP_YourClassRoll VALUES (3, 'Payal', 6300, 'Engineer', 25);
INSERT INTO EMP_YourClassRoll VALUES (4, 'Kunal', 6700, 'Trainee', 28);
INSERT INTO EMP_YourClassRoll VALUES (5, 'Sunita', 6230, 'Trainee', 26);
INSERT INTO EMP_YourClassRoll VALUES (6, 'Bimal', 7000, 'Trainee', 25);

-- 7. Insert trainees into EMP_trainee
INSERT INTO EMP_trainee (Emp_id, Name, Basic, Designation, Age)
SELECT ID, Name, Basic, Designation, Age FROM EMP_YourClassRoll WHERE Designation = 'Trainee';

INSERT INTO EMP_trainee 
SELECT * FROM EMP_YourClassRoll WHERE Designation = 'Trainee';

-- 8. Display table structure
DESC EMP_YourClassRoll;
DESC EMP_trainee;

-- 9. Add columns Skills and DOJ
ALTER TABLE EMP_YourClassRoll ADD (Skills VARCHAR2(10), DOJ DATE);
    UPDATE EMP_YourClassRoll SET Skills = 'IT' WHERE ID = 1;
    UPDATE EMP_YourClassRoll SET Skills = 'HR' WHERE ID = 2;
    UPDATE EMP_YourClassRoll SET Skills = 'Pornstar', DOJ = '04-17-2005' WHERE ID = 3;
    UPDATE EMP_YourClassRoll SET Skills = 'Gay' , DOJ = '04-17-2005' WHERE ID = 4;

select * from EMP_YourClassRoll;

-- 10. Change designation of all trainees in EMP_trainee
UPDATE EMP_trainee SET Designation = 'Programmer_Trainee' WHERE Designation = 'Trainee';

select * from EMP_trainee ;


-- 11. Display ID and Name of Engineers
SELECT ID, Name FROM EMP_YourClassRoll WHERE Designation = 'Engineer';

-- 12. Update multiple rows in one query
UPDATE EMP_YourClassRoll 
SET Basic = Basic + 500 
WHERE Designation IN ('Engineer', 'Manager');

-- 13. Change ID data type to VARCHAR2 and increase size to 5
ALTER TABLE EMP_YourClassRoll MODIFY ID number(3);
ALTER TABLE EMP_YourClassRoll MODIFY ID VARCHAR2(5);

-- 14. Display both tables
SELECT * FROM EMP_YourClassRoll;
SELECT * FROM EMP_trainee;

-- 15. Rename Age column to Age_in_Years
ALTER TABLE EMP_YourClassRoll RENAME COLUMN Age TO Age_in_Years;

-- 16. Employees with 6-letter names
SELECT * FROM EMP_YourClassRoll WHERE LENGTH(Name) = 6;

-- 17. Employees whose name starts with 'S'
SELECT * FROM EMP_YourClassRoll WHERE Name LIKE 'S%';

-- 18. Employees whose name starts with 'P' and ends with 'l'
SELECT * FROM EMP_YourClassRoll WHERE Name LIKE 'P%l';

-- 19. Employees whose name contains 'a'
SELECT * FROM EMP_YourClassRoll WHERE Name LIKE '%a%';

-- 20. Employees whose name contains two 'a's
SELECT * FROM EMP_YourClassRoll WHERE Name LIKE '%a%a%';

-- 21. Delete all trainees (soft delete by copying to another table)
CREATE TABLE EMP_Deleted_Trainees AS
SELECT * FROM EMP_YourClassRoll WHERE Designation = 'Trainee';

DELETE FROM EMP_YourClassRoll WHERE Designation = 'Trainee';

select * from EMP_YourClassRoll;

-- 22. Recover deleted data
INSERT INTO EMP_YourClassRoll SELECT * FROM EMP_Deleted_Trainees;   -----------

-- 23. Drop Age column from EMP_trainee
ALTER TABLE EMP_trainee DROP (Age);

ALTER TABLE EMP_trainee ADD (Age number(3));

select * from EMP_trainee ;


-- 24. Drop two columns in one query
ALTER TABLE EMP_YourClassRoll DROP (Basic, Skills);

-- 25. Rename EMP_YourClassRoll to EMP_Mgr_Engr
ALTER TABLE EMP_YourClassRoll RENAME TO EMP_Mgr_Engr;

-- 26. Drop EMP_trainee table
DROP TABLE EMP_trainee;

-- 27. Truncate EMP_Mgr_Engr table
TRUNCATE TABLE EMP_Mgr_Engr;

rollback;

-- 28. Recover truncated data (if possible, but TRUNCATE can't be undone)
INSERT INTO EMP_Mgr_Engr SELECT * FROM EMP_Deleted_Trainees;

-- 29. Create a custom table
CREATE TABLE CUSTOM_EMP (
    EmpCode INT PRIMARY KEY,
    EmpName VARCHAR2(30),
    Salary FLOAT(10,2),
    Dept VARCHAR2(20),
    DOJ DATE
);

-- 30. Insert at least 5 rows
INSERT INTO CUSTOM_EMP VALUES (101, 'Amit', 7500.50, 'IT', '2023-01-15');
INSERT INTO CUSTOM_EMP VALUES (102, 'Neha', 7200.75, 'HR', '2023-02-20');
INSERT INTO CUSTOM_EMP VALUES (103, 'Raj', 8000.25, 'Finance', '2023-03-25');
INSERT INTO CUSTOM_EMP VALUES (104, 'Priya', 6800.90, 'Marketing', '2023-04-30');
INSERT INTO CUSTOM_EMP VALUES (105, 'Suresh', 7700.65, 'Admin', '2023-05-10');

-- Display final data
SELECT * FROM CUSTOM_EMP;