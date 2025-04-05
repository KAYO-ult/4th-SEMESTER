CREATE TABLE Customer_2856 (
    Cust_id VARCHAR(10) PRIMARY KEY,
    Fname VARCHAR(50) NOT NULL,
    Lname VARCHAR(50) NOT NULL,
    Area VARCHAR(50) NOT NULL,
    Phone VARCHAR(15)
);

INSERT INTO Customer_2856 VALUES('A01', 'Ivan','Ross', 'SA', '6125467');
INSERT INTO Customer_2856 VALUES('A02', 'Vandana','Ray', 'MU', '5560379');
INSERT INTO Customer_2856 VALUES('A03', 'Pramada','Jauguste', 'DA', '4560389');
INSERT INTO Customer_2856 VALUES('A04', 'Basu', 'Navindi', 'BA', '6125401');
INSERT INTO Customer_2856 VALUES('A05', 'Ravi', 'Shridhar', 'NA', null);
INSERT INTO Customer_2856 VALUES('A06', 'Rukmini', 'Aiyer', 'GH', '5125274');

CREATE TABLE Movie_2856 (
    Mv_no INT PRIMARY KEY,
    Cust_id VARCHAR(10) NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Star VARCHAR(50),
    Price INT CHECK (Price BETWEEN 100 AND 250),
    FOREIGN KEY (Cust_id) REFERENCES Customer_2856(Cust_id)
);

INSERT INTO Movie_2856 VALUES(1,'A02', 'Bloody', 'JC', 181);
INSERT INTO Movie_2856 VALUES(2,'A04', 'The Firm', 'TC',200);
INSERT INTO Movie_2856 VALUES(3,'A01', 'Pretty Woman', 'RG',151);
INSERT INTO Movie_2856 VALUES(4,'A06', 'Home Alone', 'MC',150);
INSERT INTO Movie_2856 VALUES(5,'A05', 'The Fugitive', 'MF',200);
INSERT INTO Movie_2856 VALUES(6,'A03', 'Coma', 'MD', 100);
INSERT INTO Movie_2856 VALUES(7,'A02', 'Dracula', 'GO',150);
INSERT INTO Movie_2856 VALUES(8,'A06', 'Quick Change', 'BM', 100);
INSERT INTO Movie_2856 VALUES(9,'A03', 'Gone with the Wind', 'CB',200);
INSERT INTO Movie_2856 VALUES(10,'A05', 'Carry on Doctor', 'LP',100);


SELECT COUNT(*) FROM Customer_2856 WHERE Cust_id IS NULL;
SELECT COUNT(*) FROM Movie_2856 WHERE Mv_no IS NULL;


SELECT Mv_no FROM Movie_2856 WHERE Cust_id NOT IN (SELECT Cust_id FROM Customer_2856);


SELECT * FROM Movie_2856 WHERE Price < 100 OR Price > 250;


SELECT Title FROM Movie_2856 WHERE Price > 100 AND Price < 200;


SELECT DISTINCT Cust_id FROM Movie_2856 WHERE Star IN ('JC', 'TC', 'MC');


SELECT * FROM Customer_2856 WHERE Area LIKE '%A%';


SELECT Title FROM Movie_2856 WHERE LENGTH(Title) = 6 AND Price <= 180;


SELECT Fname FROM Customer_2856 WHERE LENGTH(Fname) = 4;


SELECT Fname FROM Customer_2856 WHERE Fname LIKE 'R%i';


SELECT Title, Price FROM Movie_2856 WHERE Title LIKE '%The%';


INSERT INTO Customer_2856 VALUES('A01', 'Ivan','Ross', 'SA', '6125467');
INSERT INTO Customer_2856 VALUES('A02', 'Vandana','Ray', 'MU', '5560379');
INSERT INTO Customer_2856 VALUES('A03', 'Pramada','Jauguste', 'DA', '4560389');
INSERT INTO Customer_2856 VALUES('A04', 'Basu', 'Navindi', 'BA', '6125401');
INSERT INTO Customer_2856 VALUES('A05', 'Ravi', 'Shridhar', 'NA', null);
INSERT INTO Customer_2856 VALUES('A06', 'Rukmini', 'Aiyer', 'GH', '5125274');


SELECT Title, Price, Price * 1.1 AS Increased_Price FROM Movie_2856;


SELECT 
    Fname || ' ' || Lname || ' stays in ' || Area || ' and his phone number is ' || Phone || '.' 
    AS Customer_Details 
FROM Customer_2856;


DESCRIBE Customer_2856;


SELECT Fname, Lname FROM Customer_2856 WHERE Phone IS NULL;


SELECT Fname FROM Customer_2856 WHERE Fname NOT LIKE '%a%';


UPDATE Customer_2856 SET Phone = '9998887777' WHERE Cust_id = 'A06';


SELECT DISTINCT Cust_id FROM Movie_2856;


DESC Movie_2856;


DELETE FROM Customer_2856 WHERE Cust_id = 'A06';


DELETE FROM Movie_2856 WHERE Mv_no = 10;


DROP TABLE Customer_2856;


DROP TABLE Movie_2856;