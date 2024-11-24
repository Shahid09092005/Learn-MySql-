-- use the amazon_temp database
USE amazon_temp ;

-- 						Note
-- NULL : is a unknown value and NULL is unknown value and 'NULL' is a string value which means string is NULL.

CREATE TABLE amazon
(
order_id INT,
order_date DATE,
product_name VARCHAR(50),
total_price DECIMAL(6,2) , -- total length of price is 6 in which upto 2 decimal as 3843.34 ,433.89
payment_mode VARCHAR(30)
);
drop table amazon;

INSERT INTO amazon values (1,'2023-4-23','Baby Milk',479.40,'upi'),
(2,'2024-9-9','Baby Cream',479.40,'Cash on Delivery'),
(3,'2022-5-23','Baby Power',479.40,'Debit Card'),
(4,'2023-8-23','Baby Losan',479.40,'EMI'),
(5,'2024-1-23','Baby Soap',479.40,'Cash on Delivery') ;
 
-- 								alter is DDL command bcz it change the structure of the table

-- change the data type of existing table : note --> at the time changing it should be compatiable otherwise give ERROR
ALTER TABLE amazon MODIFY order_date DATETIME;  -- MODIFY uses to change the data type of an existing column.
INSERT INTO amazon values (9,'2023-04-02 12:05:34','Baby Milk',479.40,'upi');
-- if table is empty we change from any datatype to any other datatype

-- add new column in existing table 
alter table amazon add username varchar(22);    -- add use to add new column in table at the end
INSERT INTO amazon values (2,'2020-09-12 09:03:13','Laptop',4479.40,'COD',"Shahid Mansuri");
INSERT INTO amazon values (2,'2020-09-12 09:03:13','Laptop',4479.40,'COD',null);

alter table amazon add address varchar(40); -- adding new column
-- droping existing column in the table
alter table amazon drop address;            -- droping column name 
