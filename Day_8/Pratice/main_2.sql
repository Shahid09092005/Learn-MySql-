use amazon_temp;

select * from movies limit 2;

-- 			Ques 1: Finding movie with highest profit

select name,score,country,runtime,budget
from movies
where (gross-budget) = (
select max(gross-budget) from movies)
order by name asc; 
-- 					or
select name,score,country,runtime,budget   -- this will run faster as compare with above one
from movies
order by (gross-budget) desc
limit 1;

-- 			Ques 2: find movies whose rating is greater than average rating 

select name,score,runtime
from movies
where score >(
select avg(score) from movies)
order by score asc; 

-- 	Ques 3. Finding highest movie rating of 1985
select * from movies 
where year=1985 and score = (select max(score) from movies
where year = 1985); 

-- Ques 4. find highest movie rating among all movies where no. of votes are > the dataset average votes
