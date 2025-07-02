----------------------------********TCL********--------------------------

-- 1. COMMIT – Saves all changes made by the transaction
-- The COMMIT command makes all changes from the current transaction permanent.

BEGIN TRANSACTION;
UPDATE employees SET salary = salary + 500 WHERE department = 'HR';
COMMIT;

-----------------------------******************--------------------------

-- 2. ROLLBACK – Reverses the transaction
-- The ROLLBACK command undoes all changes made in the current transaction.

BEGIN TRANSACTION;
UPDATE employees SET salary = salary + 500 WHERE department = 'HR';
ROLLBACK;

-----------------------------******************--------------------------

-- 3. SAVEPOINT – Sets a point within a transaction for partial rollbacks
-- The SAVEPOINT command creates a point within the transaction to roll back to if needed.

BEGIN TRANSACTION;
UPDATE employees SET salary = salary + 500 WHERE department = 'HR';
SAVEPOINT salary_update;
UPDATE employees SET salary = salary + 300 WHERE department = 'Finance';
ROLLBACK TO salary_update;
COMMIT;

-----------------------------******************--------------------------

-- 4. SET TRANSACTION – Sets properties for a transaction
-- The SET TRANSACTION command defines the transaction's properties, like isolation level.

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN TRANSACTION;
UPDATE employees SET salary = salary + 500 WHERE department = 'HR';
COMMIT;

-----------------------------******************--------------------------






