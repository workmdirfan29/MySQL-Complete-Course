------------------------------*******Aggregate Functions *******----------------------

-- 1.COUNT
-- 2.SUM
-- 3.AVG
-- 4.MIN
-- 5.MAX

------------------------------*********************************----------------------------

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

--------------------------------**************************---------------------------------

-- 🔹 Aggregate Functions Queries

--1.COUNT

-- Count total number of employees
SELECT COUNT(*) AS total_employees FROM Employees;

--------------------------------******************------------------------------

-- 2.SUM

-- Calculate the total salary of all employees
SELECT SUM(salary) AS total_salary FROM Employees;

--------------------------------******************------------------------------

-- 3.AVG

-- Calculate average salary
SELECT AVG(salary) AS average_salary FROM Employees;

--------------------------------******************------------------------------

-- 4.MIN

-- Find minimum age
SELECT MIN(age) AS youngest_employee FROM Employees;

--------------------------------******************------------------------------

-- 5.MAX

-- Find maximum salary
SELECT MAX(salary) AS highest_salary FROM Employees;

--------------------------------******************------------------------------

