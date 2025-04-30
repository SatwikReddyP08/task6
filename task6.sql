SELECT * FROM task6.sales_data;

-- Full Trend (All Years, Revenue + Order Count)
SELECT 
    DATE_FORMAT(STR_TO_DATE(Date, '%Y-%m-%d'), '%Y-%m') AS ym,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_count
FROM sales_data
GROUP BY DATE_FORMAT(STR_TO_DATE(Date, '%Y-%m-%d'), '%Y-%m')
ORDER BY ym;

-- 2024 Monthly Trend
SELECT 
    DATE_FORMAT(STR_TO_DATE(Date, '%Y-%m-%d'), '%Y-%m') AS ym,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_count
FROM sales_data
WHERE EXTRACT(YEAR FROM STR_TO_DATE(Date, '%Y-%m-%d')) = 2024
GROUP BY DATE_FORMAT(STR_TO_DATE(Date, '%Y-%m-%d'), '%Y-%m')
ORDER BY ym;

-- Top 3 Months by Revenue
SELECT 
    DATE_FORMAT(STR_TO_DATE(Date, '%Y-%m-%d'), '%Y-%m') AS ym,
    SUM(`Total Revenue`) AS total_revenue
FROM sales_data
GROUP BY DATE_FORMAT(STR_TO_DATE(Date, '%Y-%m-%d'), '%Y-%m')
ORDER BY total_revenue DESC
LIMIT 3;

-- Top 3 Regions by Annual Order Count
SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(Date, '%Y-%m-%d')) AS year,
    Region,
    COUNT(DISTINCT `Transaction ID`) AS order_count
FROM sales_data
GROUP BY EXTRACT(YEAR FROM STR_TO_DATE(Date, '%Y-%m-%d')), Region
ORDER BY order_count DESC
LIMIT 3;

-- Top 5 Product Categories by Units Sold Each Month
SELECT 
    DATE_FORMAT(STR_TO_DATE(Date, '%Y-%m-%d'), '%Y-%m') AS ym,
    `Product Category`,
    SUM(`Units Sold`) AS total_units_sold
FROM sales_data
GROUP BY DATE_FORMAT(STR_TO_DATE(Date, '%Y-%m-%d'), '%Y-%m'), `Product Category`
ORDER BY ym, total_units_sold DESC
LIMIT 5;
