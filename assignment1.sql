use employee;
CREATE TABLE SalesPeople
(
s_num INT PRIMARY KEY,
s_num VARCHAR(30),
city VARCHAR(50),
comm INT
);
SELECT * FROM Salespeople;
CREATE TABLE  Customers
(
c_num INT PRIMARY KEY,
c_name VARCHAR(50),
city VARCHAR(30)NOT NULL,
s_num INT,
FOREIGN KEY(s_num) REFERENCES Salespeople(s_num));
SELECT * FROM Customers;
INSERT into Customers values(2007,'Pereira', 'Rome', 1004);

CREATE TABLE Orders
(
o_num INT,
amt INT,
o_date INT,
c_num INT,
s_num INT,
PRIMARY KEY (o_num, c_num , s_num),
FOREIGN KEY(c_num) REFERENCES Customers(c_num),
FOREIGN KEY(s_num) REFERENCES Salespeople(s_num)
);
SELECT * FROM Orders;
INSERT INTO Orders values(3005 ,5160.45 ,3-10-1990, 2003 ,1002),(3006,1098.16,3-10-1990, 2008,1007),(3009,1713.23, 4-10-1990, 2002, 1003),(3007,75.75, 4-10-1990,2004,1002),(3008,4273.00,5-10-1990,2006,1001),(3010,1309.95,6-10-1990,2004 ,1002),(3011,9891.88, 6-10-1990, 2006, 1001);


-- Count the number of Salesperson whose name begin with ‘a’/’A’.
SELECT * FROM Salespeople
WHERE s_name like 'A%';
-- all the Salesperson whose all orders worth is more than Rs. 2000.-- 
SELECT  s_name, amt FROM Salespeople s 
JOIN Orders o ON s.s_num = o.s_num;
check amt>2000;

-- Count the number of Salesperson belonging to Newyork.
SELECT COUNT(*), CITY FROM Salespeople s
where city = 'newyork';
-- the number of Salespeople belonging to London and belonging to Paris.
SELECT count(*), city from Salespeople s 
join Customers c ON c.s_num = c.s_num
where city = 'london';


-- Display the number of orders taken by each Salesperson and their date of orders.
SELECT o_num, o_date,s_name FROM Salespeople s
Join Orders o ON o.s_num= s.s_num;








