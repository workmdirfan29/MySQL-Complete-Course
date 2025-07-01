---------------------------**DATABASE QUERIES**---------------------------

---1. CREATE DATABASE db_name;
---2. CREATE DATABASE IF NOT EXISTS db_name;
---3. DROP DATABASE db_name;
---4. DROP DATABASE IF EXISTS db_name;
---5. SHOW DATABASES;
---6. SHOW TABLES;

-------------------------------***-----------------------------------------

----------------------------------------------------------------------------

-- ✅ 1. DQL (Data Query Language)
-- Used to query and retrieve data from a database.

-- Command:
-- SELECT – Retrieves records from one or more tables.

----------------------------********-----------------------------------------

-- ✅ 2. DML (Data Manipulation Language)
-- Used to manipulate data within existing tables.

-- Commands:
-- INSERT – Adds new rows
-- UPDATE – Modifies existing rows
-- DELETE – Removes rows
-- MERGE – Combines insert and update in one statement (used in some SQL dialects)

----------------------------********-----------------------------------------

-- ✅ 3. DDL (Data Definition Language)
-- Used to define or alter the structure of the database objects.

-- Commands:
-- CREATE – Creates tables, views, databases, etc.
-- ALTER – Modifies existing objects
-- DROP – Deletes database objects
-- TRUNCATE – Removes all rows from a table quickly without logging each row deletion

----------------------------********-----------------------------------------

-- ✅ 4. DCL (Data Control Language)
-- Used to control access to data in the database.

-- Commands:
-- GRANT – Gives user access privileges
-- REVOKE – Removes access privileges

----------------------------********-----------------------------------------

-- ✅ 5. TCL (Transaction Control Language)
-- Used to manage transactions in a database.

-- Commands:
-- COMMIT – Saves all changes made by the transaction
-- ROLLBACK – Reverses the transaction
-- SAVEPOINT – Sets a point within a transaction for partial rollbacks
-- SET TRANSACTION – Sets properties for a transaction

----------------------------********-----------------------------------------

------------------------1. CREATE DATABASE db_name;-----------------------

CREATE DATABASE school;

------------------------2. CREATE DATABASE IF NOT EXISTS db_name;-----------------------

CREATE DATABASE IF NOT EXISTS school;

------------------------3. DROP DATABASE db_name;-----------------------

DROP DATABASE school; 

------------------------4. DROP DATABASE IF EXISTS db_name;-----------------------

DROP DATABASE IF EXISTS school;

------------------------5. SHOW DATABASES;-----------------------

SHOW DATABASES;

------------------------6. SHOW TABLES;-----------------------

SHOW TABLES;


