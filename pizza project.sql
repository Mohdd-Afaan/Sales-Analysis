----------------------------------------- Total revenue 
-- select cast(sum(total_price) as decimal(10,2)) as "Total sales" 
-- from pizza_sales
----------------------------------------- Average order value
-- select sum(total_price) / count(distinct order_id) as "Average order value"
-- from pizza_sales
----------------------------------------- Total pizza sold
-- select sum(quantity)
-- from pizza_sales
----------------------------------------- Total orders
-- select count(distinct order_id) as "Total orders"
-- from pizza_sales
----------------------------------- Average pizza sold per order
-- select cast(sum(quantity) / count(distinct order_id) as decimal(10,2))  as "Total orders"
-- from pizza_sales
----------------------------------------- Dailytrend
-- ALTER TABLE pizza_sales
-- ADD COLUMN cleaned_date DATE;
-- UPDATE pizza_sales
-- SET cleaned_date = CONCAT(SUBSTR(order_date, 7, 4), '-',
--                         SUBSTR(order_date, 4, 2), '-',
--                         SUBSTR(order_date, 1, 2));
-- SELECT dayname(cleaned_date) as day_of_week ,
-- 			 COUNT(distinct order_id) as total_orders
-- FROM pizza_sales
-- group by day_of_week
----------------------------------------- Hourly Trend 
-- SELECT hour(order_time) as hour_of_day ,
-- 			 COUNT(distinct order_id) as total_orders
-- FROM pizza_sales
-- group by hour_of_day
----------------------------- Percentage of sales by pizza catagory
-- select  pizza_category, sum(total_price), sum(total_price)*100/
-- (select sum(total_price) from pizza_sales where month(cleaned_date) = 1) as "percentage of total sales"
-- from pizza_sales
-- where month(cleaned_date) = 1
-- group by pizza_category
----------------------------- Percentage of sales by pizza size
-- select  pizza_size, cast(sum(total_price) as decimal (10,2))"Total Sales", cast(sum(total_price)*100/
-- (select sum(total_price) from pizza_sales where quarter(cleaned_date) = 1) as decimal (10,2)) as "Percentage of total sales"
-- from pizza_sales
-- where quarter(cleaned_date) = 1
-- group by pizza_size
-- order by "Percentage of total sales" desc 
----------------------------- Total pizza sold by category
-- select pizza_category , sum(quantity) as "Total pizza sold"
-- from pizza_sales
-- group by pizza_category
----------------------------- Top 5 best sellers by total pizza sold
-- select pizza_name, sum(quantity) as sold
-- from pizza_sales
-- group by pizza_name
-- order by sold desc
-- limit 5
----------------------------- bottom 5 worst sellers by total pizza sold
-- select pizza_name, sum(quantity) as sold
-- from pizza_sales
-- group by pizza_name
-- order by sold asc
-- limit 5













