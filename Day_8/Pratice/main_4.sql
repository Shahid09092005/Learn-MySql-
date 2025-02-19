create database if not exists ibm;
use ibm;
select * from movies limit 4;
-- Ques1. find all the movies made by top 3 director(in terms of total gross income )
SELECT m.name , m.director
FROM movies m
JOIN (
    SELECT director
    FROM movies
    GROUP BY director
    ORDER BY SUM(gross) DESC
    LIMIT 3
) top_directors
ON m.director = top_directors.director;

-- Ques 2. Find all movies of all those actors whose fimography's average rating >8.5 ( take 25K votes as cut off )

select name from movies
where votes>25000 and star in (select star
from movies
where votes>25000
group by star
having  avg(score)>8.5);


