--1--
CREATE TABLE Client_Master (
    Client_no   VARCHAR2(5) PRIMARY KEY CONSTRAINT CN CHECK (Client_no LIKE 'C%'),
    Name        VARCHAR2(20) NOT NULL UNIQUE,
    Address1    VARCHAR2(30),
    State       VARCHAR2(30),
    City        VARCHAR2(15) CONSTRAINT City_Check CHECK (City IN ('Delhi', 'Mumbai', 'Chennai'))
);

--1--
INSERT INTO Client_Master VALUES ('C01', 'Ivaan', 'Church Rd', 'Maharashtra', 'Mumbai');
INSERT INTO Client_Master VALUES ('C02', 'Vandana', 'St.Mary Rd', 'Tamil Nadu', 'Chennai');
INSERT INTO Client_Master VALUES ('C03', 'Pramada', 'Mall Rd', 'Maharashtra', 'Mumbai');
INSERT INTO Client_Master VALUES ('C04', 'Basu', 'Church Rd', 'Maharashtra', 'Mumbai');
INSERT INTO Client_Master VALUES ('C05', 'Ravi', 'Chandni', NULL, 'Delhi');
INSERT INTO Client_Master VALUES ('C06', 'Rukmini', 'Mall Rd', 'Maharashtra', 'Mumbai');

--b--
CREATE TABLE Sales_Order (
    S_order_no  VARCHAR2(10) PRIMARY KEY CONSTRAINT SON CHECK (S_order_no LIKE 'O%'),
    S_order_date DATE,
    Client_no   VARCHAR2(5),
    Salesman_no VARCHAR2(10) CONSTRAINT SN CHECK (Salesman_no LIKE 'S%'),
    Product_no  VARCHAR2(10),
    CONSTRAINT fk_client FOREIGN KEY (Client_no) REFERENCES Client_Master(Client_no),
    CONSTRAINT fk_product FOREIGN KEY (Product_no) REFERENCES Product_Master(Product_no)
);

INSERT INTO Sales_Order VALUES ('O19001', '12-JAN-1996', 'C01', 'S01', 'P01');
INSERT INTO Sales_Order VALUES ('O19002', '25-JAN-1996', 'C02', 'S02', 'P02');
INSERT INTO Sales_Order VALUES ('O19003', '18-FEB-1996', 'C03', 'S03', 'P03');
INSERT INTO Sales_Order VALUES ('O19004', '03-APR-1996', 'C01', 'S01', 'P04');
INSERT INTO Sales_Order VALUES ('O19005', '20-MAY-1996', 'C04', 'S02', 'P05');
INSERT INTO Sales_Order VALUES ('O19006', '24-MAY-1996', 'C05', 'S04', 'P06');


--c--
CREATE TABLE Product_Master (
    Product_no   VARCHAR2(10) CONSTRAINT pk_product PRIMARY KEY CHECK (Product_no LIKE 'P%'),
    Description  VARCHAR2(20) CONSTRAINT uq_description UNIQUE NOT NULL,
    Qty_on_hand  NUMBER(8) CHECK (Qty_on_hand > 10),
    Sell_price   NUMBER(8,2) NOT NULL,
    Cost_price   NUMBER(8,2) NOT NULL
);


INSERT INTO Product_Master 
VALUES ('P01', '1.44 Floppies', 100, 525, 500);

INSERT INTO Product_Master 
VALUES ('P02', 'Monitors', 25, 12000, 11280);

INSERT INTO Product_Master 
VALUES ('P03', 'Mouse', 20, 1050, 1000);

INSERT INTO Product_Master 
VALUES ('P04', '1.22 Floppies', 100, 525, 500);

INSERT INTO Product_Master 
VALUES ('P05', 'Keyboards', 15, 3150, 3050);

INSERT INTO Product_Master 
VALUES ('P06', 'Cd drive', 14, 5250, 5100);




--2--
ALTER TABLE Client_Master MODIFY Address1 VARCHAR2(30) NOT NULL;
desc client_master;


--3--
SELECT * FROM Client_Master WHERE Client_no IS NULL;
SELECT * FROM Sales_Order WHERE S_order_no IS NULL;
SELECT * FROM Product_Master WHERE Product_no IS NULL;


--4--
SELECT * FROM Sales_Order WHERE Client_no NOT IN (SELECT Client_no FROM Client_Master);
SELECT * FROM Sales_Order WHERE Product_no NOT IN (SELECT Product_no FROM Product_Master);

--5--
SELECT * FROM Client_Master WHERE City NOT IN ('Delhi', 'Mumbai', 'Chennai');

SELECT * FROM Product_Master WHERE Qty_on_hand <= 10;


--6--
SELECT Product_no, Description, Sell_price, Cost_price, 
       (Sell_price - Cost_price) AS Profit 
FROM Product_Master;


--7--
SELECT Product_no, Description, Qty_on_hand, Cost_price, 
       (Qty_on_hand * Cost_price) AS Total_Cost 
FROM Product_Master;


--8--
SELECT * FROM Client_Master WHERE Name LIKE 'I%';

--9--
SELECT * FROM Client_Master WHERE Name LIKE 'R%i';


--10--
SELECT * FROM Client_Master WHERE Name LIKE '__a_a%';


--11--
SELECT * FROM Client_Master WHERE Name LIKE '%aa%';


--12--
SELECT * FROM Client_Master WHERE LENGTH(Name) = 4;


--13--
SELECT * FROM Client_Master WHERE State IS NULL;

--14--
SELECT * FROM Sales_Order WHERE S_order_date > '01-JAN-1996';

--15--
UPDATE Sales_Order 
SET S_order_date = '24-JUL-96', 
    Product_no = 'P06', 
    Salesman_no = 'S04' 
WHERE Client_no = 'C01';

--16--
UPDATE Client_Master 
SET City = 'Kolkata' 
WHERE Client_no = 'C05';


--17--
ALTER TABLE Client_Master MODIFY Client_no VARCHAR2(15);
ALTER TABLE Sales_Order MODIFY Client_no VARCHAR2(15);


--18--
UPDATE Sales_Order 
SET Client_no = 'C08' 
WHERE S_order_no = 'O19001';


--19--
 ALTER TABLE Sales_Order DROP CONSTRAINT fk_product;


--20--
 ALTER TABLE Sales_Order DROP CONSTRAINT fk_client;

--21--
ALTER TABLE Product_Master DROP CONSTRAINT pk_product;

--22--
DELETE FROM Client_Master WHERE Client_no = 'C02';


--23--
DELETE FROM Product_Master WHERE Sell_price BETWEEN 1000 AND 10000;

--24--
CREATE TABLE Order_Details (
    Order_id VARCHAR2(10),
    Product_id VARCHAR2(10),
    Quantity NUMBER(5),
    PRIMARY KEY (Order_id, Product_id)
);


--25--
CREATE TABLE Shipment_Details (
    Order_id VARCHAR2(10),
    Product_id VARCHAR2(10),
    Shipment_date DATE,
    Delivery_status VARCHAR2(20),
    CONSTRAINT fk_order_product FOREIGN KEY (Order_id, Product_id) 
        REFERENCES Order_Details (Order_id, Product_id)
);
