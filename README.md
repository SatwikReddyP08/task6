# Task 6: Sales Trend Analysis

## 🎯 Objective
Use SQL to analyze monthly revenue and order volumes, identify top-performing months, regions, and product categories.

## 🛠 Tools
- MySQL (or PostgreSQL/SQLite)
- Your SQL client (e.g. MySQL Workbench)

##  Dataset
Table: `sales_data`  
Columns:
- **Transaction ID** (INT)  
- **Date** (DATE, format `YYYY-MM-DD`)  
- **Product Category** (VARCHAR)  
- **Product Name** (VARCHAR)  
- **Units Sold** (INT)  
- **Unit Price** (DECIMAL)  
- **Total Revenue** (DECIMAL)  
- **Region** (VARCHAR)  
- **Payment Method** (VARCHAR)  

240 rows of sample transactions from Jan–Aug 2024.

##  SQL Queries

1. **Full Trend (All Years)**  
   Monthly total revenue & order count grouped by `YYYY-MM`.

2. **2024 Trend Only**  
   Same metrics, filtered to 2024.

3. **Top 3 Months by Revenue**  
   Highest-revenue `YYYY-MM` buckets overall.

4. **Top 3 Regions by Annual Order Count**  
   Which regions had the most orders each year.

5. **Top 5 Categories by Units Sold per Month**  
   The five best-selling product categories in each month.

_All queries live in_ `sales_trend_analysis.sql`.

##  How to Run

1. **Import** `sales_data.csv` into your database as table `sales_data`.
2. **Open** `sales_trend_analysis.sql` in your SQL client.
3. **Execute** each query block and review the results.
4. (Optional) Save screenshots of the result tables into a `screenshots/` folder.

##  Learnings

- Grouping by formatted dates with `DATE_FORMAT()` or `EXTRACT()`
- Calculating aggregates (`SUM`, `COUNT(DISTINCT)`)
- Filtering by year, ordering, and limiting results
- Using subqueries for top-N analysis
- Comparing trends across regions and product categories

---

> _This exercise sharpened my ability to turn raw transaction data into actionable monthly and regional insights via SQL aggregation._  
## Author
Satwik Reddy Pathapati
