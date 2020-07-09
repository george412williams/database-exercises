use employees;

select * from employees where (first_name = 'Irena'
    or first_name = 'Vidya'
    or first_name = 'Maya')
    and gender = 'M';

select * from employees where last_name like 'E%';
    #1 709/441

select * from employees where hire_date between '1990-01-01' and '1999-12-31';
    #2 7330

select * from employees where birth_date like '19%%-12-25';
    #3 135214


select * from employees where last_name like '%q%' ;
    #5 1873

select * from employees where last_name like 'E%E';

select * from employees where (last_name like 'E%') and (last_name like '%E');

select * from employees where birth_date like '19%%-12-25' and hire_date like '199%';

        # 6 547;


