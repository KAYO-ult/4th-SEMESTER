-- 1. Create EMP table 
CREATE TABLE EMP_6061 (
    E_ID INT PRIMARY KEY,
    FNAME VARCHAR(50) NOT NULL,
    LNAME VARCHAR(50) NOT NULL,
    JOB_ID VARCHAR(50) NOT NULL,
    SAL INT NOT NULL CHECK (SAL >= 10),
    DEPT_ID INT NOT NULL,
    HIRE_DATE DATE NOT NULL
);

-- Insert Data into EMP_6061 Table
INSERT INTO EMP_6061 VALUES(198, 'Donald', 'Connell', 'SH_CLERK', 2600, 50, TO_DATE('21-06-1999', 'DD-MM-YYYY'));
INSERT INTO EMP_6061 VALUES(199, 'Douglas', 'Grant', 'SH_CLERK', 3000, 50, TO_DATE('13-01-1998', 'DD-MM-YYYY'));
INSERT INTO EMP_6061 VALUES(200, 'Jennifer', 'Whalen', 'AD_ASST', 4400, 10, TO_DATE('17-09-1987', 'DD-MM-YYYY'));
INSERT INTO EMP_6061 VALUES(201, 'Michael', 'Hartstein', 'IT_PROG', 6000, 20, TO_DATE('19-01-1999', 'DD-MM-YYYY'));
INSERT INTO EMP_6061 VALUES(202, 'Pat', 'Fay', 'AC_MGR', 6500, 20, TO_DATE('25-10-1989', 'DD-MM-YYYY'));
INSERT INTO EMP_6061 VALUES(203, 'Susan', 'Mavris', 'AD_VP', 7500, 40, TO_DATE('26-11-1976', 'DD-MM-YYYY'));
INSERT INTO EMP_6061 VALUES(204, 'Hermann', 'Baer', 'AD_PRES', 9500, 90, TO_DATE('23-08-1995', 'DD-MM-YYYY'));
INSERT INTO EMP_6061 VALUES(205, 'Shelley', 'Higgins', 'AC_MGR', 2300, 60, TO_DATE('24-02-1998', 'DD-MM-YYYY'));
INSERT INTO EMP_6061 VALUES(206, 'William', 'Gitz', 'IT_PROG', 5000, 60, TO_DATE('12-03-2001', 'DD-MM-YYYY'));
INSERT INTO EMP_6061 VALUES(100, 'Steven', 'King', 'AD_ASST', 8956, 100, TO_DATE('15-06-2002', 'DD-MM-YYYY'));
INSERT INTO EMP_6061 VALUES(101, 'Neena', 'Kochar', 'SH_CLERK', 3400, 30, TO_DATE('10-07-2003', 'DD-MM-YYYY'));

-- 2. Display first names in ascending order with alias 'Employee Name'
SELECT FNAME AS "Employee Name" FROM EMP_6061 ORDER BY FNAME ASC;

-- 3. Display first names in descending order with alias 'Employee Name'
SELECT FNAME AS "Employee Name" FROM EMP_6061 ORDER BY FNAME DESC;

-- 4. Display hire dates in ascending order
SELECT HIRE_DATE FROM EMP_6061 ORDER BY HIRE_DATE ASC;

-- 5. Display employee details where fname starts with J or M, sorted by LNAME
SELECT * FROM EMP_6061 WHERE FNAME LIKE 'J%' OR FNAME LIKE 'M%' ORDER BY LNAME ASC;

-- 6. Find max, min, avg, sum of salary
SELECT MAX(SAL) AS "Max", MIN(SAL) AS "Min", AVG(SAL) AS "Avg", SUM(SAL) AS "Sum" FROM EMP_6061;

-- 7. Find max, min, avg, sum of salary for each job type
SELECT JOB_ID, MAX(SAL) AS "Max", MIN(SAL) AS "Min", AVG(SAL) AS "Avg", SUM(SAL) AS "Sum" FROM EMP_6061 GROUP BY JOB_ID;

-- 8. Display the number of people under each job
SELECT JOB_ID, COUNT(*) AS "Employee Count" FROM EMP_6061 GROUP BY JOB_ID;

-- 9. Display the number of managers (assuming managers have '_MGR' or 'VP' in JOB_ID)
SELECT COUNT(*) AS "Total Managers" FROM EMP_6061 WHERE JOB_ID LIKE '%_MGR%' OR JOB_ID LIKE '%VP%';

-- 10. Find the difference between highest and lowest salaries
SELECT MAX(SAL) - MIN(SAL) AS "Salary Difference" FROM EMP_6061;

-- 11. Display max and avg salary of engineers (assuming 'IT_PROG' as engineer role)
SELECT MAX(SAL) AS "Max Salary", AVG(SAL) AS "Avg Salary" FROM EMP_6061 WHERE JOB_ID = 'IT_PROG';

-- 12. Display first and last fname in alphabetical order
SELECT MIN(FNAME) AS "First Employee", MAX(FNAME) AS "Last Employee" FROM EMP_6061;

-- 13. Display first and last hire dates
SELECT MIN(HIRE_DATE) AS "First Hire_Date", MAX(HIRE_DATE) AS "Last Hire_Date" FROM EMP_6061;

-- 14. Display max and avg salary of clerks (assuming JOB_ID contains 'CLERK')
SELECT MAX(SAL) AS "Max Salary", AVG(SAL) AS "Avg Salary" FROM EMP_6061 WHERE JOB_ID LIKE '%CLERK%';

-- 15. Display dept no. and min salary for each dept
SELECT DEPT_ID, MIN(SAL) AS "Min Salary" FROM EMP_6061 GROUP BY DEPT_ID;

-- 16. Display dept no. and min salary, excluding min salaries <= 3000, sorted desc
SELECT DEPT_ID, MIN(SAL) AS "Min Salary" FROM EMP_6061 GROUP BY DEPT_ID HAVING MIN(SAL) > 3000 ORDER BY "Min Salary" DESC;

-- 17. Display sentence for all employees
SELECT FNAME || ' whose designation is ' || JOB_ID || ' gets ' || SAL || ' but wants to earn ' || (SAL * 3) AS "Salary Statement"
FROM EMP_6061;

-- 18. Display all employee details in the given format
SELECT E_ID || ', ' || FNAME || ', ' || LNAME || ', ' || TO_CHAR(HIRE_DATE, 'DD-MM-YYYY') || ', ' || JOB_ID || ', ' || SAL || ', ' || DEPT_ID AS "Employee Details"
FROM EMP_6061;

-- 19. Drop domain constraint (check constraint on SAL)
SELECT CONSTRAINT_NAME 
FROM USER_CONSTRAINTS 
WHERE TABLE_NAME = 'EMP_6061' AND CONSTRAINT_TYPE = 'C';
ALTER TABLE EMP_6061 DROP CONSTRAINT <SYS_C004165>;


-- 20. Drop primary key
ALTER TABLE EMP_6061 DROP PRIMARY KEY;
