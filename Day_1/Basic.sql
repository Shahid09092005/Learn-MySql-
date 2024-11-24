-- use the amazon_temp database
USE amazon_temp ;
-- DDL--> Data Defination Language
-- creating an table of name as amazon
CREATE TABLE amazon
(
order_id INT,
order_data DATE,
product_name VARCHAR(50),
total_price DECIMAL(6,2) , -- total length of price is 6 in which upto 2 decimal as 3843.34 ,433.89
payment_mode VARCHAR(30)
);
-- Delete the talbe { it will delete the table }
drop table amazon;

-- DML--> Data Manupulation Language
-- 					inserting values 
INSERT INTO amazon values (1,'2023-4-23','Baby Milk',479.40,'upi'),
(2,'2024-9-9','Baby Cream',479.40,'Cash on Delivery'),
(3,'2022-5-23','Baby Power',479.40,'Debit Card'),
(4,'2023-8-23','Baby Losan',479.40,'EMI'),
(5,'2024-1-23','Baby Soap',479.40,'Cash on Delivery') ;

-- to delete the data
SET SQL_SAFE_UPDATES = 1; -- if set 0 then delete operation perfrom
delete from amazon;  -- it will delete only data but stru. of table doesn't change


-- SQL--> Structured query language

-- 						selection
select * from amazon ; -- select all the data
select order_data ,order_name from amazon; -- selecting specific columns
SELECT * FROM amazon LIMIT 3;  --  -- limiting  no. of rows

-- 						Sorting 
select * from amazon 
order by product_name asc; -- default is ascending order ASC and for DESC - Decending order (single sort)
select * from amazon 
order by order_data desc , payment_mode asc; -- sort on order_date if order_date is same then sort acc. to product name
 
