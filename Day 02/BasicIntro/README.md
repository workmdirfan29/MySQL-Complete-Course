# SQL Commands for Database and Table Operations

This README explains the SQL commands used for database creation, table operations, and various query manipulations with examples.

---

## Show Existing Databases

To view all existing databases, the following SQL command is used:

```sql
SHOW DATABASES;
```

## Create & Drop Database

- You can create and drop a database using the following commands:

### Create Database

```sql
CREATE DATABASE MACHINES;
```

### Drop (`DELETE`) Database

```sql
DROP DATABASE MACHINES;
```

## Create Database and Switch to It

- To create a database and immediately switch to it, you can use:

## Create Database
```sql
CREATE DATABASE MACHINES;
```

### Switch to the Database
```sql
USE MACHINES;
```
## Switch to an Existing Database
- To switch to an already existing database, use the USE command:

## Switch Database
```sql
USE GAMES;
SELECT DATABASE();
```
- `USE GAMES;` switches to the `GAMES`database.

- `SELECT DATABASE();` displays the currently selected database.

## Create Database and Table
- To create a database and a table within it:

- Create Database and Switch to It

```sql 
CREATE DATABASE PC;
USE PC;
```
## Create Table
```sql
CREATE TABLE GAMES (
    name VARCHAR(50),
    ratings INT
);
```
## View Table Structure
- To view the structure of the table:

## Show Tables
```sql
SHOW TABLES;
```
### Describe Table
```sql
DESC GAMES;
```
### Drop Table
- To delete a table, use:
```sql
DROP TABLE GAMES;
SHOW TABLES;
```
---

 ✨ **All the changes are now perfectly aligned with your request! 🌟 Don’t hesitate to reach out if you need any more tweaks or have further ideas to explore.** 🚀

