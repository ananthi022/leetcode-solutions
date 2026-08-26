# Write your MySQL query statement below
select w.id from weather w join weather v on datediff(w.recorddate,v.recorddate)=1 where w.temperature>v.temperature;