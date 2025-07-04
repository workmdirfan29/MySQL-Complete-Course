--------------------------*******Subqueries and Nested SELECTs*******----------------------

--  What is a Subquery?
--  A subquery (also called a nested SELECT) is a query inside another query. It’s used to return data that will be used by the main query.

--  Types of Subqueries:

-- 1. Inline subquery (used in the SELECT clause or WHERE)

-- 2. IN subquery

-- 3. EXISTS subquery

-- 4. Correlated subquery 

--------------------------**************----------------------

-- 1. Inline Subquery

SELECT 
    name,
    (SELECT SUM(amount) 
     FROM Orders 
     WHERE Orders.customer_id = Customers.customer_id) AS total_order_amount
FROM Customers;

-- 2. IN subquery

SELECT name 
FROM Customers
WHERE customer_id IN (SELECT customer_id FROM Orders);

-- 3. EXISTS subquery

SELECT name 
FROM Customers c
WHERE EXISTS (
    SELECT 1 
    FROM Orders o 
    WHERE o.customer_id = c.customer_id
);

-- 4. Correlated subquery 

SELECT name 
FROM Customers c
WHERE (
    SELECT SUM(amount) 
    FROM Orders o 
    WHERE o.customer_id = c.customer_id
) > 400;

--------------------------**************----------------------

