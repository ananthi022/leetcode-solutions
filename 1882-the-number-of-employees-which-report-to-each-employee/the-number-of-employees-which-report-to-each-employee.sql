
select f.employee_id,f.name,
count(e.reports_to) as reports_count,
round(avg(e.age),0) as average_age
from employees e join employees f
on e.reports_to=f.employee_id
group by f.employee_id,f.name
order by f.employee_id;
