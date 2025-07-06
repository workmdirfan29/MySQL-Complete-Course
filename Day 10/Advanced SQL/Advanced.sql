------------------------------***** Advanced SQL *****----------------------

-- 1. Window Functions
-- 2. Common Table Expressions (CTEs)
-- 3. Triggers and Stored Procedures (basics)

------------------------------************************----------------------


-- Create and select the database
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

-- Create employees table
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10,2),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO employees (name, department, salary) VALUES
('Alice', 'Engineering', 95000),
('Bob', 'Engineering', 105000),
('Eve', 'Engineering', 115000),
('Charlie', 'HR', 75000),
('Diana', 'HR', 85000),
('Frank', 'Marketing', 70000),
('Grace', 'Marketing', 90000),
('Heidi', 'Engineering', 100000);


-- 1. Window Functions

SELECT 
    id,
    name,
    department,
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank
FROM employees;

----------------------------------------****************************--------------------------


-- 2. Common Table Expressions (CTEs)

WITH high_earners AS (
    SELECT * FROM employees WHERE salary > 90000
)
SELECT name, department, salary
FROM high_earners
WHERE department = 'Engineering';


----------------------------------------****************************--------------------------

-- 3. Triggers and Stored Procedures (basics)


DELIMITER //
CREATE TRIGGER before_insert_employee
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    SET NEW.created_at = NOW();
END;
//
DELIMITER ;


----------------------------------------****************************--------------------------

-- 4. Stored Procedures (Basics) 


DELIMITER //
CREATE PROCEDURE GetEmployeeByID(IN emp_id INT)
BEGIN
    SELECT * FROM employees WHERE id = emp_id;
END;
//
DELIMITER ;

-- Call the procedure:
CALL GetEmployeeByID(3);

----------------------------------------****************************--------------------------