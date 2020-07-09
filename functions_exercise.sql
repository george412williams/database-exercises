use employees;

select concat(first_name, ' ', last_name)
from employees
where last_name like 'E%E'
order by emp_no desc;

select *, concat('Days at company: ', datediff(now(), hire_date))
from employees
where birth_date like '19%%-12-25'
and hire_date like '199%'
order by birth_date, hire_date desc;