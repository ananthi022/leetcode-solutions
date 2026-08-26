# Write your MySQL query statement below
select emu.unique_id,em.name from employees em left join employeeuni emu on em.id=emu.id;