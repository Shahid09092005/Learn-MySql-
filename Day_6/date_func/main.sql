use amazon_temp;

-- Date Function

select current_date(); -- 2025-02-10
Select current_time();  -- 23:19:28
select current_timestamp();  -- 2025-02-10 23:19:07
select date_format('2025-02-10','%d-%m-%y') as change_format; -- 10-02-25
select datediff('2025-02-18','2025-02-10') as diff_date;   -- 8
select date_add(current_date(),interval 3 day) as after_interval;  -- 2025-02-13
select date_sub(current_date(),interval 3 day) as after_interval;  -- 2025-02-07
select month(current_date()) as current_month; -- 2
select year(current_date()) as current_year;
select dayofweek(current_date());  -- 2 bcz today is monday
select monthname(current_date()); -- February
select dayname(current_date()); -- Monday
-- ex : 11/02/26 is my date is in text or string format now below convert it to date format
select str_to_date('11/02/2026','%d/%m/%Y') as str_to_dateformat; -- 2026-02-11
select extract(year from current_date()); -- 2025
select extract(month from current_date()); -- 2
