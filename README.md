# sql_analytics_project

### DATASET SOURCE:

[Instacart Market Basket](https://www.kaggle.com/competitions/instacart-market-basket-analysis/data)

### DATA SCHEMA INFORMATION:

1. **`products` Table**:

- `product_id`: The unique identifier for each product.
- `product_name`: The name of the product.
- `aisle_id`: The identifier for the aisle in which the product is located.
- `department_id`: The identifier for the department to which the product belongs.
2. **`aisles` Table**:

- `aisle_id`: The unique identifier for each aisle in the store.
- `aisle`: The name or category of the aisle.
3. **`departments` Table**:

- `department_id`: The unique identifier for each department.
- `department`: The name of the department.
4. **`order_products` Table**:

- `order_id`: The identifier for each customer order.
- `product_id`: The identifier for the product included in the order.
- `add_to_cart_order`: The order in which the product was added to the cart during the checkout process.
- `reordered`: Indicates whether the product was reordered (1 for yes, 0 for no).
5. **`orders` Table**:

- `order_id`: The unique identifier for each order.
- `user_id`: The identifier for the user who placed the order.
- `eval_set`: The designation of the data set for which the order is set (e.g., training, test).
- `order_number`: The order sequence number for the user.
- `order_dow`: The day of the week the order was placed.
- `order_hour_of_day`: The hour of the day the order was placed.
- `days_since_prior_order`: The number of days since the user's previous order (NA for the first order).

### PROJECT SUMMARY:

This project involved performing a detailed data analysis on [Instacart Market Basket](https://www.kaggle.com/competitions/instacart-market-basket-analysis/data) dataset to extract insights related to customer purchasing patterns, product popularity, seasonality effects on purchasing, and reorder tendencies. Utilizing SQL Server for data manipulation and analysis, the following tasks were accomplished:

- **Market Basket Analysis**: Identified frequently purchased product combinations to understand pairing preferences which can inform cross-selling strategies.
- **Customer Purchasing Patterns**: Determined the top products purchased by each user to personalize user experience and enhance targeted marketing.
- **Product Popularity and Seasonality**: Evaluated the top-selling products and analyzed how product sales varied by the day of the week, unveiling potential seasonality in buying habits.
- **Reorder Analysis**: Calculated the reorder rates for each product, providing insight into which products have a high recurrence in customer orders.
- **Aisle and Department Analytics**: Summarized sales data by aisle and department, providing a macro view of sales performance across the store.
- **Data Enrichment**: Included additional product and department information in the analysis for a holistic view of sales trends.
- **Stored Procedure Creation**: Crafted a stored procedure to enable dynamic retrieval of sales trends based on the day of the week.

Throughout the project, a focus was maintained on writing efficient SQL queries, understanding the structure of the data, and generating actionable business insights.