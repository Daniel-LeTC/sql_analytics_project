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

-- Top 100 selling products:
SELECT TOP 100 product_id, COUNT(*) AS TotalSold
FROM order_products
GROUP BY product_id
ORDER BY TotalSold DESC;