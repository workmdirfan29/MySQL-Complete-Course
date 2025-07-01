-- Retrieve all columns from the 'employees' table
SELECT * 
FROM employees;

-- Retrieve first name, last name, and salary of employees whose salary is above 50000
SELECT first_name, last_name, salary
FROM employees
WHERE salary > 50000;

-- Retrieve employee name and department name for employees in the 'Sales' department
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Sales';