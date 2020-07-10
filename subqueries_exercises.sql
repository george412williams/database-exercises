use employees;


# 1 Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

select concat(first_name, ' ', last_name) as 'Employee Name', emp_no
from employees
where hire_date in (
    select hire_date
    from employees
    where emp_no = 101010
    ) order by field(emp_no, 101010) asc;

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

select titles.title, emp_no
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
    )
order by title;


# Find all the current department managers that are female.

# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+

select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from dept_manager
    where to_date = '9999-01-01'
    ) and gender = 'F'
order by emp_no;

# BONUS

# Find all the department names that currently have female managers.
    # needs tweaking

select dept_name
from departments
where dept_no in (
    select dept_no
    from employees
    where emp_no in (
        select emp_no
        from dept_manager
        where to_date = '9999-01-01'
    ) and gender = 'F'
    order by emp_no
    );
# +-----------------+
# | dept_name       |
# +-----------------+
# | Development     |
# | Finance         |
# | Human Resources |
# | Research        |
# +-----------------+
# Find the first and last name of the employee with the highest salary.
#
#
# +------------+-----------+
# | first_name | last_name |
# +------------+-----------+
# | Tokuyasu   | Pesch     |
# +------------+-----------+



