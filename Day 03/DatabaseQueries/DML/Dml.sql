-- Example 1: Insert Data into a Table
-- Insert a new student record into the 'students' table

INSERT INTO students (name, age, grade)
VALUES ('John Doe', 20, 'A');

---------------------------------***************----------------------------

-- Example 2: Update Existing Data
-- Update the grade of a student with ID 1

UPDATE students 
SET grade = 'B' 
WHERE student_id = 1;

---------------------------------***************----------------------------

-- Example 3: Delete Data from a Table
-- Delete the student record with ID 3

DELETE FROM students 
WHERE student_id = 3;

---------------------------------***************----------------------------


-- 4. MERGE – Combines INSERT and UPDATE in One Statement

-- Merge data into the 'students' table: 
-- If the student exists, update their grade; if not, insert a new student

MERGE INTO students AS target
USING (SELECT 3 AS student_id, 'Charlie Brown' AS name, 21 AS age, 'A' AS grade) AS source
ON target.student_id = source.student_id
WHEN MATCHED THEN
    UPDATE SET target.grade = source.grade
WHEN NOT MATCHED THEN
    INSERT (student_id, name, age, grade) 
    VALUES (source.student_id, source.name, source.age, source.grade);

---------------------------------***************----------------------------
