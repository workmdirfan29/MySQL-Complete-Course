------------------------------***** Views and Indexes *****----------------------

-- Create the employees table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Insert sample data into employees table
INSERT INTO employees (id, first_name, last_name, department, salary)
VALUES
    (1, 'John', 'Doe', 'IT', 50000.00),
    (2, 'Jane', 'Smith', 'HR', 60000.00),
    (3, 'Alice', 'Johnson', 'Finance', 70000.00);

-- Create an index on the 'department' column to speed up queries filtering by department
CREATE INDEX idx_department ON employees(department);

-- Create the employee_names view (combines first_name and last_name)
CREATE VIEW employee_names AS
SELECT id, CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;

-- Query the view to see all employee names
SELECT * FROM employee_names;

-- Update the view (with filter for 'IT' department)
-- This will only show employees from the 'IT' department
CREATE OR REPLACE VIEW employee_names AS
SELECT id, CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE department = 'IT';

-- Query the updated view to see employee names from 'IT' department
SELECT * FROM employee_names;

-- Drop the view after use
DROP VIEW employee_names;
