use amazon_temp;

-- ------------------------------------ Query -----------------------------------------------------------
select * from superstore limit 4;
 -- getting those name that does not start with a and end with n
 select Customer_Name 
 from superstore
 where Customer_Name not like 'A%n';
 
 -- getting different types of categories

-- write a query to find 5 orders with highest sales and their crossesponding Product Name in furniture category
select Sales ,Product_Name
from superstore
where Category = 'Furniture'  
order by Sales desc ,Product_Name asc
limit 5 ;

