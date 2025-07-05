------------------------------*******Data Manipulation*******----------------------

--1. UPDATE
--2. DELETE
--3. BEGIN
--4. COMMIT
--5. ROLLBACK

------------------------------********************************----------------------

-- Create Employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY, 
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);

-- Create Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT CHECK (stock_quantity >= 0)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    employee_id INT,
    product_id INT,
    order_date DATE DEFAULT CURRENT_DATE,
    quantity INT CHECK (quantity > 0),
    total_amount DECIMAL(10, 2) AS (price * quantity) STORED,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Inserting Employees data
INSERT INTO Employees (employee_id, name, email, salary)
VALUES
(1, 'John Doe', 'johndoe@example.com', 50000.00),
(2, 'Jane Smith', 'janesmith@example.com', 55000.00);

-- Inserting Products data
INSERT INTO Products (product_id, product_name, price, stock_quantity)
VALUES
(1, 'Laptop', 1000.00, 50),
(2, 'Headphones', 150.00, 100);

-- Inserting Orders data
INSERT INTO Orders (order_id, customer_name, employee_id, product_id, quantity)
VALUES
(1, 'Alice Johnson', 1, 1, 2),
(2, 'Bob Brown', 2, 2, 1);


------------------------------------------*************************---------------------------

-- 1. UPDATE

-- Begin the transaction
BEGIN;

-- Update the salary of employee 1
UPDATE Employees
SET salary = 60000
WHERE employee_id = 1;

-- Update the stock_quantity of product 1 (Laptop)
UPDATE Products
SET stock_quantity = 45
WHERE product_id = 1;

-- If both updates are successful, commit the changes
COMMIT;

----------------------------------------******************************---------------------------------


-- 2. DELETE

-- Begin the transaction
BEGIN;

-- Delete the order where customer is 'Alice Johnson'
DELETE FROM Orders
WHERE order_id = 1;

-- If deletion is successful, commit the changes
COMMIT;

----------------------------------------******************************---------------------------------

-- 3. BEGIN, COMMIT, and ROLLBACK

-- Begin the transaction
BEGIN;

-- Step 1: Update the salary of employee 2 (Jane Smith)
UPDATE Employees
SET salary = 60000
WHERE employee_id = 2;

-- Step 2: Try to delete a product (Assume the product has orders or foreign keys preventing deletion)
DELETE FROM Products
WHERE product_id = 2;

-- If both operations succeed, commit the transaction
COMMIT;

-- If there is an error (e.g., a foreign key constraint error), we will rollback
-- For demonstration purposes, let's assume an error occurred and we call ROLLBACK
ROLLBACK;

----------------------------------------******************************---------------------------------


