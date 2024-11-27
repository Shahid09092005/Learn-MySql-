use amazon_temp;
select * from customer;
select * from payment;
 
 select count(distinct customer_id) as no_of_rows_cust
 from customer;
 
  select count(distinct customer_id)  as no_of_rows_pay
 from payment;
 
 
 -- ------------------------------------INNER_jOIN : return records that have matching values in both values -------
 -- getting how many customer_id is same 
select count(*) as same_cust_id
from  customer as c
inner join  payment as p
on
c.customer_id = p.customer_id;
 
 -- get name of the customer that payment is greater than 50
select c.first_name , p.amount, p.mode
from  customer as c  							 -- inside c there are first, last nane, address and gmail
inner join  payment as p 						 -- inside payment there are amount , mode , payment_date
on
c.customer_id = p.customer_id
where p.amount>=50;

-- query : to get total amount obtain from different mode in payment table
select distinct mode from payment; -- getting how many diff. mode of payment is available

select mode , sum(amount) as total_amount 
from payment
group by mode
order by total_amount asc;

select mode ,COUNT(*) AS num_of_modes, sum(amount) as total_amount , avg(amount) as avg_resp_mode
from payment
group by mode
order by total_amount asc;

select mode ,COUNT(*) AS num_of_modes, sum(amount) as total_amount , avg(amount) as avg_resp_mode
from payment
group by mode
having avg_resp_mode>50 
order by total_amount asc;


-- -----------------Left Join-: return all records from left table , and the matched records from the right table----
-- eg. if table1 contains 1,2,3,4,5 and table2 contain 1,2,8,9 then perform left join we get 1,2,3,4,5

select c.first_name , p.amount, p.mode
from  customer as c  							 -- inside c there are first, last nane, address and gmail
left join  payment as p 						 -- inside payment there are amount , mode , payment_date
on
p.customer_id = c.customer_id ; -- note after 'on' if applied left then first table(p)is left and second is right(c) 


-- -----------------Right Join-: return all records from right table , and the matched records from the right table----
-- eg. if table1 contains 1,2,3,4,5 and table2 contain 1,2,8,9 then perform left join we get 1,2,8,9

select c.first_name , p.amount, p.mode
from  customer as c  							 -- inside c there are first, last nane, address and gmail
right join  payment as p 						 -- inside payment there are amount , mode , payment_date
on
p.customer_id = c.customer_id ; -- note after 'on' if applied left then first table(p)is right and second is left(c) 


-- ---------full Join-: return all records from right table and right join, and the matched records from the right table----
-- eg. if table1 contains 1,2,3,4,5 and table2 contain 1,2,8,9,10 then perform left join we get 1,2,3,4,5,8,9,10

select c.first_name , p.amount, p.mode
from  customer as c  							 -- inside c there are first, last nane, address and gmail
right join  payment as p 						 -- inside payment there are amount , mode , payment_date
on
p.customer_id = c.customer_id ; -- 
