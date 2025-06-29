-- -------------------------------------
-- 🧠 SHOW EXISTING DATABASES
-- -------------------------------------
SHOW DATABASES;

-- -------------------------------------
-- 🎯 CREATE & DROP DATABASE EXAMPLE
-- -------------------------------------
CREATE DATABASE MACHINES;
DROP DATABASE MACHINES;

-- -------------------------------------
-- 📦 CREATE DATABASE & SWITCH TO IT
-- -------------------------------------
CREATE DATABASE MACHINES;
USE MACHINES;

-- -------------------------------------
-- 🕹️ SWITCH TO EXISTING DATABASE
-- -------------------------------------
USE GAMES;
SELECT DATABASE();

-- -------------------------------------
-- 💾 CREATE DATABASE AND TABLE
-- -------------------------------------
CREATE DATABASE PC;
USE PC;

CREATE TABLE GAMES (
    name VARCHAR(50),
    ratings INT
);

-- -------------------------------------
-- 🔍 VIEW TABLE STRUCTURE
-- -------------------------------------
SHOW TABLES;
SHOW COLUMNS FROM GAMES;
DESC GAMES;

-- -------------------------------------
-- 🛠️ CREATE TABLE WITH DEFAULTS & CONSTRAINTS
-- -------------------------------------
CREATE TABLE GAMES (
    name VARCHAR(50) DEFAULT 'Anonymous',
    release_year INT DEFAULT 2024,
    ratings INT NOT NULL
);

-- View structure after re-creation
DESC GAMES;

-- -------------------------------------
-- ❌ DROP TABLE
-- -------------------------------------
DROP TABLE GAMES;
SHOW TABLES;

-- -------------------------------------
-- 🎬 CREATE TABLE: MOVIES (Full Data Types Example)
-- -------------------------------------
CREATE TABLE Movies (
    name VARCHAR(50),
    release_year INT,
    ratings DECIMAL,
    comment CHAR(10),
    comment_date DATE DEFAULT "2025-04-02",
    comment_time TIME DEFAULT "14:10:42"
);
