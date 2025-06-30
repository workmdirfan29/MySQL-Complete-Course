--------------------------******TABLE******-----------------------

--------------------How can create table in **SQL**---------------------------

/* 
        Our 1st Table
        CREATE TABLE table_name(
        column_name 1 datatype constraint,
        column_name2 datatype constraint, column_name2 datatype constraint
        );
*/

CREATE TABLE employees (
    id INT PRIMARY KEY,                 -- Employee ID, should be unique for each employee
    name VARCHAR(100) NOT NULL,          -- Employee's name, cannot be NULL
    age INT,                             -- Employee's age, can be NULL (optional)
    salary DECIMAL(10, 2) DEFAULT 0.00   -- Employee's salary, default value is 0.00
);

------------------------How can insert data in my **TABLE**-------------------

-- Adding an employee
INSERT INTO employees (id, name, age, salary)
VALUES (1, 'John Wick', 30, 45000000.00);

------------------------How can DELETE **TABLE** -------------------

--- DROP TABLE employees;  


