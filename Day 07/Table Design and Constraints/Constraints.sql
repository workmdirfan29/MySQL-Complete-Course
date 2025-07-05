------------------------------*******Table Design and Constraints*******----------------------

--Constraints in SQL

-- 1. PRIMARY KEY
-- 2. FOREIGN KEY
-- 3. NOT NULL
-- 4. UNIQUE

--------------------------------*******************-----------------------------

-- 1. PRIMARY KEY

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50)
);

-- 2. FOREIGN KEY

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- 3. NOT NULL

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- 4. UNIQUE

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL
);

-----------------------------------------*****************-----------------------------------

