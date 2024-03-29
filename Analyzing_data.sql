USE instacart_market
-- Market Basket Analysis, show how these products often purchased with each other:
SELECT op1.product_id AS Product1, op2.product_id AS Product2, COUNT(*) AS Frequency
FROM order_products AS op1
INNER JOIN order_products AS op2 
    ON op1.order_id = op2.order_id 
    AND op1.product_id < op2.product_id
GROUP BY op1.product_id, op2.product_id
ORDER BY Frequency DESC;

-- Top products per user:
SELECT o.user_id, op.product_id, COUNT(*) AS TotalOrders
FROM orders AS o
INNER JOIN order_products AS op ON o.order_id = op.order_id
GROUP BY o.user_id, op.product_id
ORDER BY o.user_id, TotalOrders DESC;

-- Top 100 selling products and its department:
SELECT TOP 100
    p.product_id,
    p.product_name,
    d.department,
    COUNT(op.product_id) AS TotalSold
FROM order_products op
INNER JOIN products p ON op.product_id = p.product_id
INNER JOIN departments d ON p.department_id = d.department_id
GROUP BY p.product_id, p.product_name, d.department
ORDER BY TotalSold DESC;


-- Sales trends over different times of the week:
SELECT TOP 100 o.order_dow, op.product_id, COUNT(*) AS TotalSold
FROM orders AS o
INNER JOIN order_products AS op ON o.order_id = op.order_id
GROUP BY o.order_dow, op.product_id
ORDER BY o.order_dow, TotalSold DESC;
-- Using store procedured:
EXEC GetTopSellingProductsByDay @DayOfWeek = 1;

-- Reorder rates for each product, apply for above 70%:
SELECT d.department, p.product_name, p.product_id, CONVERT(DECIMAL(10,2), AVG(CAST(reordered AS FLOAT)) * 100) AS ReorderRate
FROM order_products op
INNER JOIN 
    products AS p ON op.product_id = p.product_id
INNER JOIN 
    departments AS d ON p.department_id = d.department_id
GROUP BY 
    p.product_id, 
    p.product_name, 
    d.department
HAVING AVG(CAST(reordered AS FLOAT)) > 0.7
ORDER BY ReorderRate DESC;

-- Reorder rates for each department:
SELECT d.department, CONVERT(DECIMAL(10,2), AVG(CAST(reordered AS FLOAT)) * 100) AS DepReorderRate
FROM order_products op
JOIN products AS p ON op.product_id = p.product_id
JOIN departments AS d ON p.department_id = d.department_id
GROUP BY d.department
ORDER BY DepReorderRate DESC;

-- Sale by aisles
SELECT a.aisle, COUNT(*) AS TotalSales
FROM order_products AS op
JOIN products AS p ON op.product_id = p.product_id
JOIN aisles AS a ON p.aisle_id = a.aisle_id
GROUP BY a.aisle;

-- Sale and order count by departments:
SELECT d.department, COUNT(*) AS TotalSales
FROM order_products AS op
JOIN products AS p ON op.product_id = p.product_id
JOIN departments AS d ON p.department_id = d.department_id
GROUP BY d.department;

SELECT d.department, COUNT(DISTINCT op.order_id) AS OrderCount
FROM order_products AS op
JOIN products AS p ON op.product_id = p.product_id
JOIN departments AS d ON p.department_id = d.department_id
GROUP BY d.department;

