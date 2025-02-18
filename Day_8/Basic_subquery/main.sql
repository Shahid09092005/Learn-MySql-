use amazon_temp;

select * from college; 

select avg(total_Marks) as avg_marks from college ; # it gives average of all the record
#but in actuall there want to avegare according to group 
# sol
select avg(avg_marks_group) from 
(select Group_id , sum(total_Marks) as avg_marks_group #inside simple bracket there is a sub query that gives the avg value acc. to group
from college   # bracket or sub-query execute first
group by Group_id) as avg_group;

#finding average marks their respective of branch
select Branch,avg(Total_Marks) as avg_marks
from college
group by Branch;
# now getting the avg marks with their resp. branch 
SELECT c1.*, c2.avg_marks
FROM college AS c1
INNER JOIN (
    SELECT Branch, AVG(Total_Marks) AS avg_marks
    FROM college
    GROUP BY Branch
) AS c2
ON c1.Branch = c2.Branch;
