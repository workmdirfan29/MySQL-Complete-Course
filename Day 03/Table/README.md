# SQL Table Creation, Insertion, and Deletion

- How to perform basic operations for creating, inserting data into, and deleting an **SQL** table.

### 1. How to Create a Table in SQL

- To create a new table in **SQL**, use the following syntax:
----
```sql
CREATE TABLE table_name (
    column_name1 datatype constraint,
    column_name2 datatype constraint,
    column_name3 datatype constraint,
    ...
);
```

- Example: Creating an "**employees**" table

```sql
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    salary DECIMAL(10, 2) DEFAULT 0.00
);

```
---
### 2. How to Insert Data into Your Table

- Once the table is created, you can insert data into it using the `INSERT` INTO statement:
```sql
-- Adding an employee
INSERT INTO employees (id, name, age, salary)
VALUES (1, 'John Wick', 30, 45000000.00);
```

- This statement adds a new employee with ID 1, name **John Wick**, age **30**, and a salary of **45,000,000.00**.
---
### 3. How to Delete a Table

- To delete the table (and all its data), use the `DROP TABLE` statement:

```sql
-- Deleting the 'employees' table
DROP TABLE employees;
```
- This will permanently remove the table from the database. Be cautious when using this command, as it cannot be undone.

## Summary
- Use **CREATE TABLE** to create a table.

- Use **INSERT INTO** to insert data into the table.

- Use **DROP TABLE** to delete a table.

