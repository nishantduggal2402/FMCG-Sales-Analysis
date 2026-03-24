# Total Revenue by market zone
select markets.zone, sum(transactions.sales_amount) AS total_revenue
from transactions join markets
on transactions.market_code = markets.markets_code
group by markets.zone
order by  total_revenue desc;

# Total Revenue by Product type
select products.product_type , sum(transactions.sales_amount) AS total_revenue
from transactions join products
on transactions.product_code = products.product_code
group by products.product_type
order by  total_revenue desc;

# Monthly Revenue trend 
select date.year , date.month_name , sum(transactions.sales_amount) AS total_revenue
from transactions join date
on transactions.order_date = date.date
group by date.year , date.month_name
order by date.year , date.month_name;

# Top 5 Customers by Profit
select customers.custmer_name, round(sum(transactions.profit_margin),0) AS total_profit
from transactions join customers
on transactions.customer_code = customers.customer_code
group by customers.custmer_name
order by  total_profit desc
limit 5;  

# Top 5 customers by Profit contribution percentage
select customers.custmer_name, sum(transactions.profit_margin) as total_profit,
round(sum(transactions.profit_margin) / (select sum(profit_margin) from transactions) * 100,0) as profit_cont_pct
from transactions join customers
on transactions.customer_code = customers.customer_code
group by customers.custmer_name
order by profit_cont_pct desc
limit 5;


# Total Profit by market zone 
select markets.zone, sum(transactions.profit_margin) AS total_profit
from transactions join markets
on transactions.market_code = markets.markets_code
group by markets.zone
order by  total_profit desc;

# Number of orders by Product type
select products.product_type , count(*) as total_orders
from transactions join products
on transactions.product_code = products.product_code
group by products.product_type
order by total_orders desc;

# Customer Orders by customer type
select customers.customer_type , count(*) as total_orders
from transactions join customers
on transactions.customer_code = customers.customer_code
group by customers.customer_type
order by total_orders desc;

# Customer segmentation Analysis based on Purchase Frequency : Orders , Profit and Revenue per order
with cte as(select customer_code, count(*) as total_orders,sum(sales_amount) as total_revenue, sum(profit_margin) as total_profit
from transactions 
group by customer_code),
cte2 as(select *, case when total_orders <= 2000 then 'Low Frequency'
else 'High Frequency' end as segment
from cte)
select segment , count(*) as total_customers, round(sum(total_profit),0) as total_profit,
round(avg(total_profit),0) average_profit_per_customer , round(avg(total_revenue/total_orders),0) as average_revenue_per_order
from cte2
group by segment;

# Market Revenue and Profit contribution analysis 
with cte as(select markets.markets_name, sum(transactions.sales_amount) as total_revenue,
sum(transactions.profit_margin) as total_profit
from transactions join markets
on transactions.market_code = markets.markets_code
group by markets.markets_name)
select markets_name, total_revenue,round(total_profit,2) as total_profit, round(total_revenue/(select sum(total_revenue) from cte) * 100,2)as rev_cont_pct,
round(total_profit/(select sum(total_profit) from cte) * 100,2) as prof_cont_pct
from cte 
order by rev_cont_pct desc;


# Top 2 customers as per Revenue per market zone 
with cte as (select markets.zone, customers.custmer_name, sum(transactions.sales_amount) as Revenue,
rank() over(partition by markets.zone order by sum(transactions.sales_amount)) as rank_zone
from transactions join markets
on transactions.market_code = markets.markets_code
join customers on transactions.customer_code = customers.customer_code
group by markets.zone, customers.custmer_name)
select zone,custmer_name , Revenue 
from cte where rank_zone <= 2;

# cumulative revenue by market zones over time
with cte as(select markets.zone, date.date as orderr_date, sum(transactions.sales_amount) as daily_revenue
from transactions join markets
on transactions.market_code = markets.markets_code
join date on transactions.order_date = date.date
group by markets.zone, date.date)
select zone, orderr_date, sum(daily_revenue) over(partition by zone order by orderr_date) as cum_revenue
from cte 
order by zone, orderr_date;












