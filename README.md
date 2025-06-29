# SQL Setup Guide (MySQL) — Windows & Linux

This guide helps you set up **MySQL**, a popular relational database system, on **Windows** and **Linux** (Ubuntu/Debian). It includes downloading, installation, starting the MySQL server, and connecting to a database.

---

## Windows Setup

### 1. ✅ Download MySQL

- Visit: [https://dev.mysql.com/downloads/installer/](https://dev.mysql.com/downloads/installer/)
- Choose: **MySQL Installer for Windows (Windows (x86, 32 & 64-bit), MSI Installer)**
- Choose "Full" or "Developer Default" installation.

### 2. 🚀 Install MySQL

- Run the installer.
- Select products: **MySQL Server**, **Workbench**, **Shell**.
- Choose default settings.
- Set a root password (remember this!).
- Add user (optional).
- Finish the installation.

### 3. 🛠 Start MySQL Server

- MySQL runs as a Windows service.
- Check in **Task Manager > Services** or start from **MySQL Notifier**.

### 4. 🖥 Connect Using MySQL Command Line

- Open `MySQL Command Line Client` from Start Menu.
- Enter the **root password** you set earlier.
- Run a test:
  ```sql
  SHOW DATABASES;
  ```

### 5. ✅ (Optional) Use MySQL Workbench GUI

- Launch MySQL Workbench.

- Connect to your local server (host: localhost, user: root).

- Use the query tab to execute SQL commands.

---

## Linux Setup (Ubuntu/Debian)

### 1. ✅ Update Package List

```bash
sudo apt update
```

### 2. 🚀 Install MySQL Server

```bash
sudo apt install mysql-server
```

### 3. 🔒 Secure Installation

```bash
sudo mysql_secure_installation
```

- Set root password

- Remove anonymous users

- Disallow root remote login

- Remove test database

### 4. 🛠 Start and Enable MySQL

```bash
sudo systemctl start mysql
sudo systemctl enable mysql

```

### 5. 🖥 Access MySQL CLI

```bash
sudo mysql -u root -p
```

- Enter the root password

### 6. 🔍 Test Connection

```bash
SHOW DATABASES;
```

### 🛠 Basic MySQL CLI Commands

```sql
-- Create a database
CREATE DATABASE my_database;

-- Use the database
USE my_database;

-- Create a table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Insert data
INSERT INTO users (name, email) VALUES ('Alice', 'alice@example.com');

-- Query data
SELECT * FROM users;
```

### 🔥 KEEP LERANING && KEEP EXPLORING

---
