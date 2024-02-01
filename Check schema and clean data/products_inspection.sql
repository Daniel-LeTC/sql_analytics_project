USE instacart_market;
-- View the first few rows from each table
SELECT TOP 10 * 
FROM products;

-- Row counts
SELECT COUNT(*) AS TotalRows 
FROM products;

-- Table structures
EXEC sp_help 'products';

-- Change datatype of order_id, user_id column from varchar to int
ALTER TABLE products 
ALTER COLUMN product_id INT;
ALTER TABLE products 
ALTER COLUMN aisle_id INT;
ALTER TABLE products 
ALTER COLUMN department_id INT;

-- Result from change datatype of aisle_id show there is a row has the value Marinara...
-- Check for details:
SELECT * 
FROM products 
WHERE aisle_id LIKE '%Marinara with Meatballs"%'

-- Trying to find aisle_id with correct value:
SELECT * 
FROM aisles
WHERE aisle LIKE '%Marinara%'
-- There is nothing called Marirana in aisles table, we will let that aside and deal with it later


-- Find missing values
SELECT 
    COUNT(*) - COUNT(product_id) AS Nulls_in_product_id,
    COUNT(*) - COUNT(product_name) AS Nulls_in_product_name,
    COUNT(*) - COUNT(aisle_id) AS Nulls_in_aisle_id,
    COUNT(*) - COUNT(department_id) AS Nulls_in_department_id
FROM products;