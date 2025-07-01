
----------------------------********DDL********--------------------------

-- 1. CREATE – Creates Tables, Views, Databases, etc.
-- The CREATE command is used to define new database objects like tables, views, and databases.

-- Create a new table 'students' with columns: student_id, name, age, grade
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade CHAR(1)
);

-----------------------------*******************---------------------------

-- 2. ALTER – Modifies Existing Database Objects
-- The ALTER command is used to modify an existing database object (like a table), such as adding, deleting, or modifying columns.

-- Add a new column 'email' to the 'students' table
ALTER TABLE students
ADD email VARCHAR(255);

-----------------------------*******************---------------------------

-- 3. DROP – Deletes Database Objects
-- The DROP command is used to delete entire database objects like tables, views, or even databases. Be careful, as this operation is permanent.

-- Drop the 'students' table (this will delete the table and all its data)
DROP TABLE students;

-----------------------------*******************---------------------------

-- 4. TRUNCATE – Removes All Rows from a Table Quickly
-- The TRUNCATE command is used to remove all rows from a table, but it does not delete the table structure itself. It's faster than DELETE because it doesn't log each row deletion.

-- Remove all rows from the 'students' table without deleting the table
TRUNCATE TABLE students;

-----------------------------*******************---------------------------
