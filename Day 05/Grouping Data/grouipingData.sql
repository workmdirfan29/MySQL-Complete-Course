-----------------------------********Grouping Data**********--------------------

-- 1. GROUP BY Clause:
-- 2. HAVING Clause:

-- 1. Creating a sample table `sales_data` for demonstration
CREATE TABLE sales_data (
    department VARCHAR(255),
    sales INT
);

-- 2. Inserting sample data into `sales_data`
INSERT INTO sales_data (department, sales) VALUES
('Electronics', 10000),
('Clothing', 15000),
('Electronics', 20000),
('Clothing', 10000),
('Furniture', 8000);

-----------------------------******** Grouping Data **********--------------------

-- 3. 1. Grouping by Department to calculate Total Sales for each Department
SELECT department, SUM(sales) AS total_sales
FROM sales_data
GROUP BY department;

-- Result:
-- department   | total_sales
-- -------------|------------
-- Electronics  | 30000
-- Clothing     | 25000
-- Furniture    | 8000

-- 3. 2. Filtering results using HAVING to show departments with Total Sales > 30000
SELECT department, SUM(sales) AS total_sales
FROM sales_data
GROUP BY department
HAVING SUM(sales) > 30000;

-- Result:
-- department   | total_sales
-- -------------|------------
-- Electronics  | 30000

-- 3. 3. Using COUNT() to find the number of sales transactions per department
SELECT department, COUNT(*) AS num_sales
FROM sales_data
GROUP BY department;

-- Result:
-- department   | num_sales
-- -------------|-----------
-- Electronics  | 2
-- Clothing     | 2
-- Furniture    | 1

-- 3. 4. Using AVG() to find the average sales per department
SELECT department, AVG(sales) AS avg_sales
FROM sales_data
GROUP BY department;

-- Result:
-- department   | avg_sales
-- -------------|-----------
-- Electronics  | 15000
-- Clothing     | 12500
-- Furniture    | 8000

-- 3. 5. Filtering using HAVING with AVG() to show departments with average sales > 10000
SELECT department, AVG(sales) AS avg_sales
FROM sales_data
GROUP BY department
HAVING AVG(sales) > 10000;

-- Result:
-- department   | avg_sales
-- -------------|-----------
-- Electronics  | 15000
-- Clothing     | 12500
