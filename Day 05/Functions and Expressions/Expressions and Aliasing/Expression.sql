----------------------******* Expressions and Aliasing*******----------------------

--Aliasing with AS
--Arithmetic operations in SELECT

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

-- Use the CompanyDB database
USE CompanyDB;

-- Rename columns using alias
SELECT name AS Employee_Name, salary AS Monthly_Salary FROM Employees;

-- Add a fixed bonus of 5000 to each employee's salary
SELECT name, salary, salary + 5000 AS salary_with_bonus FROM Employees;

-- Calculate yearly salary (monthly salary × 12)
SELECT name, salary, salary * 12 AS yearly_salary FROM Employees;

-- Calculate 10% tax on salary
SELECT name, salary, salary * 0.10 AS tax_amount FROM Employees;

-- Subtract tax from salary to get net salary
SELECT name, salary, salary - (salary * 0.10) AS net_salary FROM Employees;

-- Estimate daily salary assuming 30 days/month
SELECT name, salary, salary / 30 AS daily_salary FROM Employees;

-------------------------**************************----------------------------

