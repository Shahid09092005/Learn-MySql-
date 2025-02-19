use yummy;

-- Ques 1. Find all the users who never ordered
select * from users
where user_id not in (
						select distinct user_id 
                        from orders
                        );
