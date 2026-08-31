-- Write your PostgreSQL query statement below
select 
    round(
        count(distinct a.player_id)::numeric
        /count(distinct f.player_id)
        ,2
    ) as fraction
from (
    select
    player_id,
    min(event_date) as first_login
from activity
group by player_id
)as f 
left join activity a
on a.player_id=f.player_id
and a.event_date=f.first_login+1;