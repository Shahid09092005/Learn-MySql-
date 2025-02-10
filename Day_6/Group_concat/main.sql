use amazon_temp;

select * from bakery;
alter table bakery drop MyUnknownColumn;

-- use string_agg()

select category , GROUP_CONCAT(item ORDER BY item ASC,'') as list_of_item,count( item) as no_of_item
from bakery
group by category
order by no_of_item;
