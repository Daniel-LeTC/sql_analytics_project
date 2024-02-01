USE instacart_market;

-- Checking top few rows for each dataset:
SELECT TOP 10 *
FROM products;

SELECT TOP 10 *
FROM aisles;

SELECT TOP 10 *
FROM departments;

SELECT TOP 10 *
FROM orders;

SELECT TOP 10 *
FROM order_products;

-- Gathering general info of each table:
SELECT 
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT product_id) AS UniqueProductIDs,
    COUNT(DISTINCT product_name) AS UniqueProductNames,
    COUNT(DISTINCT aisle_id) AS UniqueAisleIDs,
    COUNT(DISTINCT department_id) AS UniqueDepartmentIDs
FROM products;

SELECT 
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT aisle_id) AS UniqueAisleIDs,
    COUNT(DISTINCT aisle) AS UniqueAisles
FROM aisles;

SELECT 
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT department_id) AS UniqueDepartmentIDs,
    COUNT(DISTINCT department) AS UniqueDepartments
FROM departments;

SELECT 
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT order_id) AS UniqueOrderIDs,
    COUNT(DISTINCT product_id) AS UniqueProductIDs,
    COUNT(DISTINCT add_to_cart_order) AS UniqueAddToCartOrders,
    COUNT(DISTINCT reordered) AS UniqueReorderedValues
FROM order_products;

SELECT 
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT order_id) AS UniqueOrderIDs,
    COUNT(DISTINCT user_id) AS UniqueUserIDs,
    COUNT(DISTINCT eval_set) AS UniqueEvalSets,
    COUNT(DISTINCT order_number) AS UniqueOrderNumbers,
    COUNT(DISTINCT order_dow) AS UniqueOrderDOWs,
    COUNT(DISTINCT order_hour_of_day) AS UniqueOrderHourOfDays,
    COUNT(DISTINCT days_since_prior_order) AS UniqueDaysSincePriorOrder
FROM orders;

