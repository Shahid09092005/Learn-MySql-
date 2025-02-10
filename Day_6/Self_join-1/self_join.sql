-- selft join : is a regular join in which a table is joined to itself 

-- Database name
use amazon_temp; 

select * from self_join_dataset;

-- in this we have a table and i want to get it respective manager name by using their emp_id of the manager.
-- self_join_dataset is a table inside amazon_temp

-- delete an row
SET SQL_SAFE_UPDATES = 0;
DELETE FROM self_join_dataset 
WHERE emp_id = 5;

select t1.emp_id,t1.emp_name,t1.manager_id,t2.emp_name as manager_name
from self_join_dataset as t1
join self_join_dataset as t2
on  t1.manager_id = t2.emp_id;
