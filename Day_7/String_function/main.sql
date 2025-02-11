use amazon_temp;

select * from customer limit 5;
-- 										String functions
select customer_id,first_name , email ,
length(first_name) as first_name_len ,
left(first_name , 3) as left_idx_name , 
right(first_name,2) as right_idx_name ,
substring(email , 4,5) as substr_4_5 , -- start with 4 idx and end untill not cover 5 more char
LOCATE('@',email) as gmail_index ,-- similar to charindex but charindex is uses in SQL SERVER 
concat(first_name,' ',last_name) as full_name,
replace(email,'mailid','gmail') as mailid_to_gmail -- it is case sensitive 
from customer ;


select concat(first_name,' ',last_name) as full_name ,
email,
reverse(email) as reverse_email,
replace(email,'mailid','gmail') as mailid_to_gmail ,-- it is case sensitive ,
replace(replace(concat(first_name,' ',last_name),'a','x'),'r','#')as multi_rep_char -- translate() in sql server
from customer;



-- fetching the name of email
select concat(first_name,' ',last_name) as Emp_full_Name ,
email as emp_email,
locate('@',email) as gmail_symbol ,
left(email,locate('@',email)-1) as Email_name
from customer;


