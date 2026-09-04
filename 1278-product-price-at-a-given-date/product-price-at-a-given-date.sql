-- Write your PostgreSQL query statement below
select a.product_id,
a.new_price as price
from products a
join(
    select product_id,
    max(change_date) as last_date
    from products
    where change_date<='2019-08-16'
    group by product_id
)t
on a.product_id=t.product_id
and change_date=last_date
union
select product_id,10 as price
from products
group by product_id
having min(change_date)>'2019-08-16';