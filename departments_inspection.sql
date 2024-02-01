USE instacart_market;
-- View the first few rows from each table
SELECT TOP 10 * 
FROM departments;

-- Row counts
SELECT COUNT(*) AS TotalRows 
FROM departments;

-- Table structures
EXEC sp_help 'departments';


-- Find missing values
SELECT 
    COUNT(*) - COUNT(department_id) AS Nulls_in_department_id,
    COUNT(*) - COUNT(department) AS Nulls_in_department
FROM departments;






