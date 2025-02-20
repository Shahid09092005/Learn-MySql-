use college;

															--  RANK()
-- Ques-1. find the name of student whose marks is > than average of respective branch.
select * , rank() over(partition by branch order by marks desc) as 'branch rank'
from student_marks ;

															-- ROW NUMBER
select *, concat(branch,'_',row_number() over(partition by branch))  as 'ERP_id'
from student_marks ;


										-- Ques 2. Find the top 2 most paying customers name
use yummy;

select t.user_id ,t.month , t.total , t.customer_rank
from (
		select user_id ,monthname(date) as 'month', sum(amount) as 'total',
			rank() over(partition by monthname(date) order by sum(amount) desc) as 'customer_rank'
		from orders
		group by monthname(date) , user_id
	) as t
where t.customer_rank<3
order by t.month , t.user_id;



