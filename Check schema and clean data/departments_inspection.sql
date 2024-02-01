USE instacart_market;
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
SELECT 
    COUNT(*) - COUNT(department_id) AS Nulls_in_department_id,
    COUNT(*) - COUNT(department) AS Nulls_in_department
FROM departments;






