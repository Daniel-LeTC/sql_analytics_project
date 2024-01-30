-- View the first few rows from each table
SELECT TOP 10 * 
FROM departments;

-- Row counts
SELECT COUNT(*) AS TotalRows 
FROM departments;

-- Table structures
EXEC sp_help 'departments';

-- Change datatype of department_id column from varchar to int
ALTER TABLE departments 
ALTER COLUMN department_id INT;

-- Find missing values
SELECT * 
FROM departments 
WHERE department_id IS NULL OR department IS NULL;

