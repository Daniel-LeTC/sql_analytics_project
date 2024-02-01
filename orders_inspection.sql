USE instacart_market;
-- View the first few rows from each table
SELECT TOP 10 * 
FROM orders

-- Row counts
SELECT COUNT(*) AS TotalRows 
FROM orders;

-- Table structures
EXEC sp_help 'orders';



-- Find missing values
SELECT 
    COUNT(*) - COUNT(order_id) AS Nulls_in_order_id,
    COUNT(*) - COUNT(user_id) AS Nulls_in_user_id,
    COUNT(*) - COUNT(eval_set) AS Nulls_in_eval_set,
    COUNT(*) - COUNT(order_number) AS Nulls_in_order_number,
    COUNT(*) - COUNT(order_dow) AS Nulls_in_order_dow,
    COUNT(*) - COUNT(order_hour_of_day) AS Nulls_in_or_hour_of_day,
    COUNT(*) - COUNT(days_since_prior_order) AS Nulls_in_days_since_prior_order
FROM orders;




