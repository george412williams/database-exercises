use employees;

SELECT DISTINCT title FROM titles;


select distinct last_name
from employees
where last_name like 'E%E'
group by last_name;


select last_name
from employees
where last_name like '%q%'
and last_name not like '%qu%'
group by last_name;


select last_name, count(*)
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name;


select * from employees where (first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya')
and gender = 'M'
order by last_name, first_name desc;


select gender, count(*) from employees
where first in ...;





