use amazon_temp;

-- 													Set operations
-- Note: SET and JOIN are different to each other. 
-- During JOIN ,we combine data vertically because we need atleast one same columns in each column so we join them.
-- During SET , we combine data horizontally 

-- Note : if performing set operations more than 1 table then it's must have the same no. of columns and data types.
--  Set operations are : UNION , UNION ALL , EXCEPT(A-B)
-- UNION ALL contains all tha values and it also include DUPLICATES values also
-- UNION operation remove duplicates "ROW" values between the table 
--  only UNION ALL operation contains duplicate "ROWS" values and rest operation not contain duplicates row values
 
 -- table 1
CREATE TABLE table1(
emp_id int(2) not null,
emp_name varchar(20),
emp_salary int(5)
);

insert into table1 values (1,"shahid",30000) ,(2,"Mubarak",40000),(3,"Saima",34000) ,(4,"Mubarak",40000);
select * from table1;

-- table2
CREATE TABLE table2(
emp_id int(2) not null,
emp_name varchar(20),
emp_salary int(5)
);
 
insert into table2 values (5,"Ravi",39000) ,(6,"Mubarak",40000),(7,"Saima",34000) ,(2,"Mubarak",40000);
select * from table2;

-- performing set operations
-- UNION ALL : allow duplicates row values also 
select emp_id ,emp_name,emp_salary from table1
union all
select emp_id , emp_name,emp_salary from table2;

-- UNION: only distinct rows values
select emp_id ,emp_name,emp_salary from table1
union
select emp_id , emp_name,emp_salary from table2;

SELECT emp_id, emp_name, emp_salary 
FROM table1 t1
WHERE NOT EXISTS (
    SELECT 1  -- SELECT 1 is used because we only need to check if a row exists, not retrieve actual data.
    FROM table2 t2 --  It is faster than SELECT * as it only checks for row presence.
    WHERE t1.emp_id = t2.emp_id 
    AND t1.emp_name = t2.emp_name
    AND t1.emp_salary = t2.emp_salary
);


 
