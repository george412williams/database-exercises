use employees;

select * from employees where (first_name = 'Irena'
    or first_name = 'Vidya'
    or first_name = 'Maya')
    and gender = 'M'
    order by last_name, first_name desc;

select * from employees where last_name like 'E%' order by emp_no desc;

select * from employees where hire_date between '1990-01-01' and '1999-12-31';

select * from employees where birth_date like '19%%-12-25';

select * from employees where last_name like '%q%';

select * from employees where last_name like '%q%' and last_name not like '%qu%';

select * from employees where last_name like 'E%E' order by emp_no desc;

select * from employees where (last_name like 'E%') and (last_name like '%E') order by emp_no desc;

select * from employees
    where birth_date like '19%%-12-25'
    and hire_date like '199%'
    order by birth_date, hire_date desc;


