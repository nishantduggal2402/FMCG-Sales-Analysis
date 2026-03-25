# 📊 FMCG Sales Insights – ATLIQ Hardwares  
📌 Project  
Analyzed ATLIQ Hardwares sales data using MySQL and Power BI to uncover key business insights related to revenue, profit, customer behavior, and market performance.  

## 🎯 Business Requirement  
To analyze historical sales data and build interactive dashboards that highlight key trends, KPIs, and performance metrics to support data-driven decision-making.  


## ⚙️ Tools & Technologies  
- MySQL  
- SQL (CTEs, Window Functions, Joins, Subqueries)  
- Power BI  


## 📂 Dataset  
The dataset consists of 5 tables:  
- Markets  
- Customers  
- Products  
- Date  
- Transactions  
Note: The original transactions dataset contains **100,000+ rows**.  
> A **sample of ~10,000 rows** is used in this repository for demonstration.


##  📁 Project Structure
	•	data/ – Dataset files (5 tables, transactions sample ~10K rows, original ~150K rows)
	•	dashboard_images/ – Dashboard screenshots (3 dashboards)
	•	fmcg.sql – SQL analysis queries
	•	fmcg.pbix – Power BI dashboard


## 🔍 SQL Techniques Used  
- Joins  
- CTEs (Common Table Expressions)  
- Window Functions  
- Subqueries  
- Aggregations (SUM, AVG, COUNT)  


## 📊 Power BI Techniques Used  
- Data Cleaning & Transformation (Power Query / ETL)  
- Data Modeling (Relationships between tables)  
- DAX Measures (Revenue, Profit, KPIs)  
- Interactive Dashboards & Visualizations  
- Filters, Slicers, and Drill-down Features  


## 📊 Dashboards Overview  

- Dashboard 1 – Sales Performance
  Depicts sales performance of different markets over time, helping management align with market demand and identify trends. 

- Dashboard 2 – Market Contribution Analysis
  Highlights customer behaviour and shows total contribution of each market and zone to overall sales and profit, enabling better strategic decisions.  

- Dashboard 3 – Customer Insights
  Focuses on customer behaviour by analyzing contribution to sales and profit across markets and zones, providing key insights for data-driven decision-making.  


## 📊 Key Analysis Performed  
- Revenue & Profit by Market Zone  
- Revenue by Product Type  
- Monthly Revenue Trends  
- Top Customers by Profit & Contribution %  
- Customer Segmentation (High vs Low Frequency)  
- Market-wise Revenue & Profit Contribution %  
- Top Customers per Zone  
- Cumulative Revenue Over Time  


## 📈 Key Insights  

- High-frequency customers drive the majority of total profit, while low-frequency customers generate higher revenue per order, indicating high-value transactions.  

- Revenue and profit are highly concentrated geographically, with Delhi NCR contributing ~50%, Mumbai contributing ~15–20%, while some markets operate at a loss.  

- A small group of top customers contributes a disproportionately large share of profit, led by Electricalsara Stores (~50% of total profit and ~38% contribution), followed by other key customers (~4–7%).  

- Each market zone is driven by a few key customers, highlighting the importance of targeted regional strategies and customer retention.  


## Conclusion 
This project demonstrates how SQL and Power BI can be used to transform raw data into meaningful business insights, enabling organizations to optimize strategy, improve profitability, and make data-driven decisions.
