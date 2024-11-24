use amazon_temp;
select * from superstore limit 5;

alter table superstore drop Row_ID; -- 		 deleting Row_ID
select * from superstore   -- Selecting top first 5 rows on the basis of ship_date 
order by ship_Date asc  
limit 5; 
--  --> Distinct : uses to fetch distinct values
select distinct * from superstore ;  -- select distinct value of superstore or not show duplicate values
select distinct ship_Mode from superstore order by ship_Mode asc;  -- get distinct values present in ship_Mode
select distinct ship_Mode , Segment from superstore;  -- distinct values of ship mode and segment as a combination

-- ------------------------------------Filter------------------------------------------------------------
select * from superstore limit 10;

select distinct Country 
 from superstore;  -- in this data only one country is present

select Country ,City , Postal_Code,Category
from superstore 
where Ship_Mode in ('Standard Class','First Class')
and Segment = 'Consumer';

select Order_ID, Customer_Name ,City ,Category
from superstore
where Sales>=500 
order by City asc , Category asc; 

-- ------------------------------------making temperary new column------------------------------------------------------------
select Segment , Category , Sales , Sales*Sales as sales_square  -- Sales*Sales as sales_square -- temp col 
from superstore
order by Sales asc
limit 10; 

select * from superstore limit 9;   -- in this sales_square
