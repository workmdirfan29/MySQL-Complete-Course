----------------------------********FILTERING AND SORTING DATA********--------------------------

-- 1. WHERE clause: Used to filter rows based on conditions.
-- 2. Logical Operators (AND, OR, NOT): Used to combine multiple conditions.
-- 3. Sorting (ORDER BY): Used to sort the result by one or more columns.
-- 4. Pagination (LIMIT, OFFSET): Used to limit the number of rows and skip a specific number of rows.

-- Create a new database called CompanyDB
CREATE DATABASE CompanyDB;

-- Use the newly created database
USE CompanyDB;

-- Create the Employees table with columns for id, name, age, department, and salary
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

----------------------------*********************-------------------------------------

-- 1. Filter employees older than 30
-- 2. Sort the results by age from oldest to youngest
-- 3. Limit the result to show only 3 employees

SELECT * FROM Employees
WHERE age > 30
ORDER BY age DESC   -- Sort by age (oldest first)
LIMIT 3;            -- Show only 3 employees

----------------------------*********************-------------------------------------

-- 1. Find employees older than 30 and in the 'IT' department
-- 2. Sort the results by salary from highest to lowest
-- 3. Limit the result to 2 employees

SELECT * FROM Employees
WHERE age > 30 AND department = 'IT'    -- Filter by age and department
ORDER BY salary DESC                    -- Sort by salary (highest first)
LIMIT 2;                                -- Show only 2 employees

----------------------------*********************-------------------------------------

-- 1. Find employees who are in the 'IT' department or have a salary greater than 70,000
-- 2. Sort the results by name (alphabetically)
-- 3. Limit the result to show only 5 employees

SELECT * FROM Employees
WHERE department = 'IT' OR salary > 70000   -- Filter by department or salary
ORDER BY name ASC                           -- Sort by name (alphabetical order)
LIMIT 5;                                    -- Show only 5 employees

----------------------------*********************-------------------------------------

-- 1. Exclude employees from the 'HR' department
-- 2. Sort the results by age from youngest to oldest
-- 3. Skip the first 2 rows, then show the next 2 rows (pagination)

SELECT * FROM Employees
WHERE NOT department = 'HR'  -- Exclude employees from HR department
ORDER BY age ASC             -- Sort by age (youngest first)
LIMIT 2 OFFSET 2;            -- Skip the first 2 employees, then show the next 2

--------------------------************************----------------------------------------