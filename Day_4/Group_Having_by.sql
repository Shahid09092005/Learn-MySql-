use amazon_temp;

-- ------------------------------------ Filters null values -----------------------------------------------------------
-- query 
select Order_ID from superstore
order by Order_ID asc;

-- making some city null where Order ID lies in ('CA-2015-110072',CA-2015-115812)
SET SQL_SAFE_UPDATES = 0; -- to modify the existing data turn safe mode to 0

update superstore
set City = null
where Order_ID in ('CA-2015-110072','CA-2015-115812');

-- Ques : how to select null values : null is unknown value
select * from superstore where City = null; --  this will not work
select * from superstore where City is null ;--  this will  work
select * from superstore where City is not null; -- selecting those value that is not null

-- ------------------------------------ Aggregration-------------------------------------------------------
					-- count,max,avg,min etc
select count(*) as total_rows,  
sum(Sales) as total_Sales,
max(Customer_ID) as Max_Customer_id,
min(Sales) as min_sales,
avg(sales) as average_sales
from superstore;

-- count
select count(Sub_Category) from superstore;  -- this will give the no. of row in which sub category is present
select count( distinct Sub_Category) as Category_Count from superstore; -- it will give no. of sub_category
-- Note: count does not count no. of null value present in specific row
-- Note : aggregrate function ignore null value in max , min , avg etc cases

-- to get the distant region present in superstore
select  distinct Region from superstore as Distant_Region;

-- ------------------------------------ Group By -----------------------------------------------------------
select Region,  -- selecting each region and calculating their crossespoindg max , min , avg sales
count(*) as total_rows,  
sum(Sales) as total_Sales,
max(Customer_ID) as Max_Customer_id,
min(Sales) as min_sales,
avg(sales) as average_sales 
from superstore
group by Region
order by Region asc;

-- selecting Region and their crosspoing category to get their sum and avg of sales
select Region,Category,
sum(Sales) as SumOfSales,
avg(Sales) as averageOfSales
from superstore
group by Region,Category
order by Region asc; 

select Region , Category , sum(Sales) as total_sales   -- give Error : refer to PDF of groupBy Imp
from superstore
group by Region  ;

select Region  , sum(Sales) as total_sales				-- not give error : refer to PDF of groupby imp 
from superstore
group by Region;
 
-- ------------------------------------ Having -----------------------------------------------------------

select region ,sum(Sales) as total_sales
from superstore
where Ship_Mode='Second Class'
group by region;
-- But in this, we not define total_sales greater than 500

-- to handle above case 

SELECT region, SUM(Sales) AS total_sales
FROM superstore
WHERE Sales > 100
AND Ship_Mode = 'Second Class'  -- Filter rows based on Ship_Mode before grouping
GROUP BY region 
HAVING SUM(Sales) > 500;  -- Filter groups based on the total_sales aggregation , having mostly use with aggregrate column
-- order by use

-- Note: Priority to run : where > group by > having




