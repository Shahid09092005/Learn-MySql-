use amazon_temp;

select *
from movies
limit 5;
--  getting the highest movie  rating name
select max(score) from movies;  -- it will give the highest movie score
-- getting the name of movie
select name , genre,score , runtime
from movies
where score=(select max(score) from movies);
