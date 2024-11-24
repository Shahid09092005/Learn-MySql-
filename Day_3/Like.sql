use amazon_temp;

-- ------------------------------------ LIKE (matching) -----------------------------------------------------------
select Customer_Name from superstore
order by Customer_Name asc;

select Customer_Name ,City , State , Category , Sub_Category   -- Cust_Name like 'abc%' means name start with abc
from superStore 				--  Cust_Name like '%abc' means name end with abc and for btw as %abc%
where Customer_Name like 'St%' or Customer_Name like 'P%' or Customer_Name like '%a';   
-- select name of the customer whose name start from S or P or name end with a

select Customer_Name -- cus_name start with A and end with a
from superstore
where Customer_Name like 'A%a' ;

select Customer_Name -- cus_name start with 2nd character is 'a'
from superstore
where Customer_Name like '_a%';  -- means cust_name having 2nd character start with 'a' will quality this condition

-- % --> 0 or more any characters
-- _ --> one character (no. of character we should have equal no. of underscore

-- 				Square Bracket
-- for fetching customer names where the first character is 'P' and the second character is either 'a', 'e', or 'h'.
select Customer_Name
from superstore
where Customer_Name like 'P[aeh]%';

-- for fetching customer names where the first character is 'P' and the third character is either 'a', 'e', or 'h'.
select Customer_Name
from superstore
where Customer_Name like 'P_[aeh]%';

-- 				Range
-- for fetching customer names where the first character is 'P' and the second character is in range of f-q 
select Customer_Name
from superstore
where Customer_Name like 'S[f-u]%';

-- for fetching customer names where the first character is 'P' and the forth character is in range of f-q 
select Customer_Name
from superstore
where Customer_Name like 'P__[f-q]%';

-- for fetching customer names where the first character is 'P' and the second character is not in range of f-q 
select Customer_Name
from superstore
where Customer_Name like 'S[^f-u]%';




