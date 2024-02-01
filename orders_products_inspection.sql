SELECT TOP 10 * 
FROM order_products;

SELECT TOP 10 * 
FROM order_products__train
ORDER BY order_id DESC;

SELECT *
FROM orders
WHERE eval_set = 'train'
ORDER BY order_id DESC;

SELECT 
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT order_id) AS UniqueOrderIDs
FROM orders
WHERE eval_set = 'train';

SELECT 
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT order_id) AS UniqueOrderIDs
FROM order_products__train;
