CREATE TABLE Customer12 (
    Cust_id VARCHAR(10) PRIMARY KEY,
    Fname VARCHAR(50) NOT NULL,
    Lname VARCHAR(50) NOT NULL,
    Area VARCHAR(50),
    Phone VARCHAR(15)
);

Movie Table

CREATE TABLE Movie12 (
    My_no INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Type VARCHAR(50) NOT NULL,
    Star VARCHAR(50) NOT NULL,
    Price INT NOT NULL
);

Invoice Table

CREATE TABLE Invoice12 (
    Inv_no VARCHAR(10) PRIMARY KEY,
    My_no INT,
    Cust_id VARCHAR(10) NOT NULL,
    Issue_date DATE NOT NULL,
    Return_date DATE,
    FOREIGN KEY (My_no) REFERENCES Movie12(My_no),
    FOREIGN KEY (Cust_id) REFERENCES Customer12(Cust_id)
);

Insert Data Queries:

Insert Data into Customer Table

INSERT INTO Customer12 (Cust_id, Fname, Lname, Area, Phone) VALUES('A01', 'Ivan', 'Bayross', 'SA', '6125467');
INSERT INTO Customer12 (Cust_id, Fname, Lname, Area, Phone) VALUES('A02', 'Vandana', 'Saiteal', 'MU', '5560379');
INSERT INTO Customer12 (Cust_id, Fname, Lname, Area, Phone) VALUES('A03', 'Pramada', 'Jauguste', 'DA', '4560389');
INSERT INTO Customer12 (Cust_id, Fname, Lname, Area, Phone) VALUES('A04', 'Basu', 'Navindi', 'BA', '6125401');
INSERT INTO Customer12 (Cust_id, Fname, Lname, Area, Phone) VALUES('A05', 'Ravi', 'Shreedhar', 'NA', NULL);
INSERT INTO Customer12 (Cust_id, Fname, Lname, Area, Phone) VALUES('A06', 'Rukmini', 'Mondal', 'GH', '5125274');

Insert Data into Movie Table

INSERT INTO Movie12 (My_no, Title, Type, Star, Price) VALUES(1, 'Bloody', 'Action', 'JC', 181);
INSERT INTO Movie12 (My_no, Title, Type, Star, Price) VALUES(2, 'The Firm', 'Thriller', 'TC', 200);
INSERT INTO Movie12 (My_no, Title, Type, Star, Price) VALUES(3, 'Pretty Woman', 'Romance', 'RG', 150);
INSERT INTO Movie12 (My_no, Title, Type, Star, Price) VALUES(4, 'Home Alone', 'Comedy', 'MC', 150);
INSERT INTO Movie12 (My_no, Title, Type, Star, Price) VALUES(5, 'The Fugitive', 'Thriller', 'MF', 200);
INSERT INTO Movie12 (My_no, Title, Type, Star, Price) VALUES(6, 'Coma', 'Suspense', 'MD', 100);
INSERT INTO Movie12 (My_no, Title, Type, Star, Price) VALUES(7, 'Dracula', 'Horror', 'GO', 150);
INSERT INTO Movie12 (My_no, Title, Type, Star, Price) VALUES(8, 'Quick Change', 'Comedy', 'BM', 100);
INSERT INTO Movie12 (My_no, Title, Type, Star, Price) VALUES(9, 'Gone with the Wind', 'Action', 'CB', 200);
INSERT INTO Movie12 (My_no, Title, Type, Star, Price) VALUES(10, 'Carry on Doctor', 'Comedy', 'LP', 100);

Insert Data into Invoice Table

INSERT INTO Invoice12 (Inv_no, My_no, Cust_id, Issue_date, Return_date) VALUES('I01', 4, 'A03', '23-jul-93', '25-jul-95');
INSERT INTO Invoice12 (Inv_no, My_no, Cust_id, Issue_date, Return_date) VALUES('I02', 3, 'A02', '12-aug-93', '15-aug-93');
INSERT INTO Invoice12 (Inv_no, My_no, Cust_id, Issue_date, Return_date) VALUES('I03', 1, 'A02', '15-aug-93', '18-aug-93');
INSERT INTO Invoice12 (Inv_no, My_no, Cust_id, Issue_date, Return_date) VALUES('I04', 6, 'A03', '10-sep-93', '13-sep-93');
INSERT INTO Invoice12 (Inv_no, My_no, Cust_id, Issue_date, Return_date) VALUES('I05', 7, 'A04', '05-aug-93', '08-aug-93');
INSERT INTO Invoice12 (Inv_no, My_no, Cust_id, Issue_date, Return_date) VALUES('I06', 2, 'A04', '18-sep-93', '21-sep-93');
INSERT INTO Invoice12 (Inv_no, My_no, Cust_id, Issue_date, Return_date) VALUES('I07', 9, 'A05', '07-jul-93', '10-jul-93');
INSERT INTO Invoice12 (Inv_no, My_no, Cust_id, Issue_date, Return_date) VALUES('I08', 1, 'A01', '11-aug-93', '14-aug-93');
INSERT INTO Invoice12 (Inv_no, My_no, Cust_id, Issue_date, Return_date) VALUES('I09', 5, 'A04', '06-jul-93', '09-jul-93');
INSERT INTO Invoice12 (Inv_no, My_no, Cust_id, Issue_date, Return_date) VALUES('I10', 8, 'A06', '03-sep-93', '06-sep-93');

SQL Queries for Questions:
2.

SELECT DISTINCT C.Fname, C.Lname, I.My_no
FROM Customer12 C
JOIN Invoice12 I ON C.Cust_id = I.Cust_id;

3.

SELECT M.My_no, M.Title
FROM Movie12 M
JOIN Invoice12 I ON M.My_no = I.My_no
JOIN Customer12 C ON I.Cust_id = C.Cust_id
WHERE C.Fname = 'Ivan';

4.

SELECT M.Title, I.Cust_id, I.My_no
FROM Movie12 M
JOIN Invoice12 I ON M.My_no = I.My_no;

5.

SELECT M.Title, M.Type
FROM Movie12 M
JOIN Invoice12 I ON M.My_no = I.My_no
JOIN Customer12 C ON I.Cust_id = C.Cust_id
WHERE C.Fname = 'Vandana';

6.

SELECT DISTINCT C.Fname, C.Lname
FROM Customer12 C
JOIN Invoice12 I ON C.Cust_id = I.Cust_id
JOIN Movie12 M ON I.My_no = M.My_no
WHERE M.Type = 'Action';

7.

SELECT M.My_no, M.Title, C.Fname, C.Lname
FROM Movie12 M
JOIN Invoice12 I ON M.My_no = I.My_no
JOIN Customer12 C ON I.Cust_id = C.Cust_id
WHERE M.My_no > 3;

8.

SELECT C.Fname, C.Lname
FROM Customer12 C
JOIN Invoice12 I ON C.Cust_id = I.Cust_id
WHERE I.Inv_no = 'I10';

9.

SELECT C.Fname, C.Lname, C.Phone, C.Area
FROM Customer12 C
JOIN Invoice12 I ON C.Cust_id = I.Cust_id
WHERE I.Issue_date < '01-aug-93';

10.

SELECT M.My_no, M.Title
FROM Movie12 M
JOIN Invoice12 I ON M.My_no = I.My_no
JOIN Customer12 C ON I.Cust_id = C.Cust_id
WHERE C.Fname IN ('Ivan', 'Vandana', 'Ravi');

11.

SELECT I.My_no, M.Title
FROM Invoice12 I
JOIN Movie12 M ON I.My_no = M.My_no;

12.

SELECT M.Type, M.My_no
FROM Movie12 M
JOIN Invoice12 I ON M.My_no = I.My_no
WHERE I.Cust_id IN ('A01', 'A02');

13.

SELECT I.Cust_id
FROM Invoice12 I
JOIN Movie12 M ON I.My_no = M.My_no
WHERE M.Star = 'Tom Cruise';

14.

SELECT C.Fname, C.Lname
FROM Customer12 C
JOIN Invoice12 I ON C.Cust_id = I.Cust_id;

15.

SELECT M.My_no
FROM Movie12 M
LEFT JOIN Invoice12 I ON M.My_no = I.My_no
WHERE I.My_no IS NULL;



16.

SELECT el.employee_id,
el.first_name ||''||el.last_name AS employee_name,
el.manager_id,
e2.first_name || ' ' || e2.last_name AS manager_name
FROM employees el
LEFT JOIN employees e2 ON el.manager_id=e2.employee_id;

17.
SELECT el.first_name || '' || el.last_name AS employee_name,
el.manager_id,
e2.first_name ||''|| e2.last_name AS manager_name,
e2.manager_id AS manager_of_manager_id,
e3.first_name ||''|| e3.last_name AS manager_of_manager_name
FROM employees el
LEFT JOIN employees e2 ON el.manager_id = e2.employee_id
LEFT JOIN employees e3 ON e2.manager_id=e3.employee_id;