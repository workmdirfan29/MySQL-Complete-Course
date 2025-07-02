----------------------------********FILTERING DATA********--------------------------

-- 1. WHERE clause
-- 2. Logical Operators (AND, OR, NOT) 

-- 1. Filtering (used for selecting specific rows based on conditions)
-- WHERE clause: This is used to filter the data based on certain conditions. It decides which rows you want to see based on the criteria you define.

-- Create a new database called CompanyDB
CREATE DATABASE CompanyDB;

-- Use the newly created database
USE CompanyDB;

-- Create the Employees table
CREATE TABLE Employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,                    
    department VARCHAR(50),
    salary DECIMAL(10, 2)        
);

-- Insert sample data into Employees table
INSERT INTO Employees (name, age, department, salary) 
VALUES 
('Talish Raza', 32, 'IT', 75000),
('Haider Ali', 28, 'HR', 62000),
('Md Rizwan Khan', 45, 'CEO', 88000),
('Rizwan Akhter', 38, 'Business Analysis', 95000),
('Mosharib Hussain', 29, 'Data Analytics', 54000),
('Mizan Ahsan', 40, 'Backend', 120000);

-- Retrieve Data

SELECT * FROM Employees
WHERE age > 30;

----------------------------*********************-------------------------------------

--  Logical Operators in SQL:
-- Logical operators allow you to combine multiple conditions in the WHERE clause. The three most commonly used logical operators are:

-- 1. AND
-- 2. OR
-- 3. NOT

-------------------------------**********************--------------------------

-- Using AND: Retrieves employees older than 30 and in the 'Sales' department
-- However, there is no 'Sales' department in your data, so change it to one that exists in your data (e.g., 'IT', 'HR', etc.)

SELECT * FROM Employees
WHERE age > 30 AND department = 'IT';  

-------------------------------**********************--------------------------

-- OR Operator: Retrieves employees either in the 'Sales' department or who have 'Active' status
-- There is no 'Sales' department or 'status' column, so I'll change it to work with the existing data

SELECT * FROM Employees
WHERE department = 'IT' OR salary > 70000;  

-------------------------------**********************--------------------------

-- Using NOT Operator: Exclude employees from the 'HR' department

SELECT * FROM Employees
WHERE NOT department = 'HR';

-------------------------------**********************--------------------------

