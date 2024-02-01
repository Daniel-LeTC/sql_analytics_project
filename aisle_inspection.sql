-- View the first few rows from each table
SELECT *
FROM aisles
ORDER BY aisle DESC;

-- Row counts
SELECT COUNT(*) 
FROM aisles;

-- Table structures
EXEC sp_help 'aisles';
SELECT * 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'aisles';



-- Find missing values
SELECT 
    COUNT(*) - COUNT(aisle_id) AS Nulls_in_aisle_id,
    COUNT(*) - COUNT(aisle) AS Nulls_in_aisle
FROM aisles;

