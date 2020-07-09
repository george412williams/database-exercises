use employees;

SELECT DISTINCT title FROM titles;

select distinct last_name
from employees
where last_name like 'E%E'
group by last_name;

select distinct last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%';



