CREATE PROCEDURE GetTopSellingProductsByDay
    @DayOfWeek INT
AS
BEGIN
    SELECT TOP 100 
        op.product_id,
        p.product_name,
        COUNT(*) AS TotalSold
    FROM orders AS o
    INNER JOIN order_products AS op ON o.order_id = op.order_id
    INNER JOIN products AS p ON op.product_id = p.product_id
    WHERE o.order_dow = @DayOfWeek
    GROUP BY op.product_id, p.product_name
    ORDER BY TotalSold DESC;
END;
GO