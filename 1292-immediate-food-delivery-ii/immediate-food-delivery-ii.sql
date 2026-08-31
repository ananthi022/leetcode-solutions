-- Write your PostgreSQL query statement below
select
    round(
        100.0*(avg (case when order_date=customer_pref_delivery_date then 1 else 0 end)),2
    )
as immediate_percentage
from(
    select
    customer_id,
    order_date,
    customer_pref_delivery_date,
    row_number() over(
        partition by customer_id
        order by order_date
    )as rn
    from delivery
)as first_orders where rn=1;

