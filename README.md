FMCG Sales Insights – ATLIQ Hardwares

📌 Project Overview : 
This project provides actionable business insights for ATLIQ Hardwares by analyzing historical sales data using MySQL and visualizing it in Power BI. 
The goal was to understand revenue trends, profit drivers, customer behavior, and market performance to support data-driven decision-making in the FMCG domain.

Key Highlights:
	•Revenue and profit analysis by market zones and products
	•Customer segmentation based on purchase frequency
	•Top customer and product performance
	•Revenue and profit contribution by markets and zones

📈 Dashboard Previews:
Dashboard 1 – Market & Sales Analysis 
Dashboard 2 – Profit & Profit Margin Analysis
Dashboard 3 – Customer & Market Mix Analysis

🔍 SQL Techniques Used:
	•Joins – Combining multiple tables for comprehensive analysis
	•CTEs – For organizing complex intermediate calculations
	•Window Functions – Ranking, cumulative revenue, and running totals
	•Subqueries – For calculating contribution percentages
	•Aggregations – SUM, AVG, COUNT to compute KPIs
  
📊 Key KPIs:
	•Total Revenue & Profit
	•Profit Margin (%)
	•Revenue & Profit Contribution by Market & Customer
	•Customer Segmentation by Purchase Frequency
	•Top Customers & Top Products

📈 Key Insights:
	1.High-impact customers drive profit: A small group of high-frequency customers generates the majority of profit, while low-frequency customers contribute higher revenue per order, indicating valuable bulk or high-value transactions.
	2.Geographical concentration: Delhi NCR dominates revenue and profit (~50%), Mumbai contributes moderately (~15–20%), and Kanpur & Bengaluru show negative profit contributions, highlighting markets that need attention.	
	3.Top customers matter most: The top 5 customers, led by Electricalsara Stores (~50% of total profit, ~38% profit contribution), followed by Nixon, Electricalslytical, Leader, and Premium Stores (~4–7% each), drive a disproportionately large share of profit.	
	4.	Key customers by zone: Regional revenue is concentrated in a few top customers:
	•Central: Sage & Expression
	•North: Novus & Electricalsbea Stores
	•South: Sound & Electricalsara Stores
This emphasizes the need for targeted strategies per market zone.

⚙️ Tools & Technologies:
	MySQL – For data cleaning, manipulation, exploration, and KPI calculations
	,Power BI – ETL, data modeling, DAX measures, and interactive dashboards
  
📂 Dataset:
	•transactions_sample.csv – 10,000-row sample (original >100,000 transactions)
	•customers.csv, products.csv, markets.csv, date.csv – Supporting dimension tables
  
   Conclusion:

✅ This project demonstrates how SQL and Power BI can transform raw FMCG sales data into insightful, actionable analytics, helping businesses make strategic, data-driven decisions.
