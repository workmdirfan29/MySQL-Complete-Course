------------------------------*******Joins and Relationships*******----------------------

--1. INNER
--2. LEFT
--3. RIGHT
--4. FULL

------------------------------**************----------------------

CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);


CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers (customer_id, name)
VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

------------------------------**************----------------------


-- 1. INNER JOIN

SELECT Customers.name, Orders.product
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;

------------------------------**************----------------------


--2. LEFT JOIN
SELECT Customers.name, Orders.product
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

------------------------------**************----------------------


-- 3. RIGHT JOIN 

SELECT Customers.name, Orders.product
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;

------------------------------**************----------------------

-- 4. FULL JOIN 

SELECT Customers.name, Orders.product
FROM Customers
FULL OUTER JOIN Orders ON Customers.customer_id = Orders.customer_id;
