-- Write your PostgreSQL query statement below
select query_name,
round(avg(rating ::numeric/ position),2) as quality,
round(100.0*avg((rating<3)::int),2) as poor_query_percentage
from queries 
group by query_name;