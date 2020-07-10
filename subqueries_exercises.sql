use employees;


# 1 Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

select hire_date
from employees
where emp_no = 101010;

select concat(first_name, ' ', last_name) as 'Employee Name'
from employees
where hire_date in (
    select hire_date
    from employees
    where emp_no = 101010
    );

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles




# Find all the current department managers that are female.

# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+



