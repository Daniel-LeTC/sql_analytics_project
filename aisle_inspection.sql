-- View the first few rows from each table
SELECT TOP 5  *
FROM aisles;

-- Row counts
SELECT COUNT(*) 
FROM aisles;

-- Table structures
EXEC sp_help 'aisles';
SELECT * 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'aisles';

-- Change datatype of aisle_id column from varchar to int
ALTER TABLE aisles 
ALTER COLUMN aisle_id INT;

-- Find missing values
SELECT * 
FROM aisles 
WHERE aisle IS NULL OR aisle_id IS NULL;
-- Update missing values

-- Delete row with missing values
