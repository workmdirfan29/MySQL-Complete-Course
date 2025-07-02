----------------------------********DCL********--------------------------

-- GRANT Example:
-- Allow alice to read data from the employees table:

GRANT SELECT ON employees TO alice;

----------------------------****************--------------------------

-- REVOKE Example:
-- Remove the SELECT privilege from alice on the employees table:

REVOKE SELECT ON employees FROM alice;

----------------------------****************--------------------------



