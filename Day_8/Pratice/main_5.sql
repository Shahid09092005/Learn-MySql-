use ibm;
select * from movies limit 3;

-- Ques. : Find the  most profitable movie of each year

select e.name,e.year,mov2.profit
from movies as e
join 
(select year,max(gross-budget) as profit
from movies
group by year) as mov2
on e.year = mov2.year and (e.gross-e.budget)=mov2.profit;
									-- or (above execute fast)
select name,year
from movies
where (year,gross-budget) in (select year,max(gross-budget) as profit
								from movies
								group by year );
                                
-- Ques 2. Find the highest rated movie of each genre votes cutoff of 25K

select year,genre
from movies 
where votes>25000 and (genre,score) in (select genre,max(score)
						from movies 
						where votes>25000 -- no need it
						group by genre)
order by genre asc;
-- 						or below run fast 
WITH MaxScores AS (
    SELECT genre, MAX(score) AS max_score
    FROM movies
    WHERE votes > 25000
    GROUP BY genre
)
SELECT m.year, m.genre
FROM movies m
JOIN MaxScores ms ON m.genre = ms.genre AND m.score = ms.max_score
WHERE m.votes > 25000
ORDER BY m.genre ASC;

-- Ques 3. Find the highest grossing movie of top 5 actor/director combo in terms of total gross income. 
with top_dros as (
				select director , star  , max(gross) as max_gross
				from movies
				group by director , star 
				order by max_gross desc
				limit 5
) 
select e.name 
from movies  e
join top_dros  t
on e.director = t.director and e.star = t.star;





                                
