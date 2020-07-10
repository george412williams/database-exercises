# subqueries lecture

SELECT column_a, column_b, column_c
FROM table_a
WHERE column_a IN (
    SELECT column_a
    FROM table_b
    WHERE column_b = true
);

# have 2 diff tables, looking at a for table abc, table b used to filter results from table a
# making joins easier but can be slower, can be used when data needs to be filtered by another
# cannot do a nested insert/drop, only select, getting data back in order to use it as filtering criteria
# so if 3,4,5,6 is filtered by table b, if these results in are in table b, show those only, so filtered results

# can come down to choice of join/subq
# subqs can be nested ad infinitum

# emplyees table example
# Get department number and name for department where name is 'customer service'
use employees;

select dept_no
from departments
where dept_name = 'Customer Service';

    # d009
    # can use as a subq later

# try to select all from depts and use this as a subq

select *
from departments
where dept_no = (
    select dept_no
    from departments
    where dept_name = 'Customer Service'
        # all from depts column and filter to the thing from above
    );

# dept mngr emply num of sales department; print using subqs

    # department number IS IN; where in comparing

select emp_no
from dept_manager
where dept_no in (
    select dept_no
    from departments
    where dept_name = 'Sales'
    )
    and to_date > now();

    # where the dept num is result of d007
    # emp no = 111133, correct; segments code, could be a join which is more blocky and can be harder to read but is more efficient

# concat first two emps alsdkj
    # find highest salarry of

select concat(
    # do sub q
    (
        select max(salary)
        from salaries
        where emp_no = 10001
        # highest salary of 10001 88958
    ),
    ' ',
    (
        select max(salary)
        from salaries
        where emp_no = 10002
        # highest salary of 10002 72527
    )
) as Salaries;

    # note the indention, formatting

# find the first/last name of all dept mngrs

select emp.first_name, emp.last_name
from employees as emp
join dept_manager as dm on dm.emp_no = emp.emp_no;
#for firstlastname of dept mngrs

#subq
select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from dept_manager
    #gives like an array of dept mngrs 24 results
    #match the whole employees
    #the diff from join using primary keys in index
        # here we select first/last name from data set, takes just a little more, use joins for large scale
    );

# names of emps w 10 highest salaries
    # first find list of the employes w the highest curr salaries
    # Emp. No | Salary

select emp_no, salary
from salaries
where to_date > now()
order by salary desc;

    #lets use this as subq and get first last name

select first_name, last_name
from employees
where emp_no in (
    #where emp no is in this query
    select emp_no
    from salaries
    where to_date > now()
    order by salary desc
    )
limit 10;

    #got the should conatin 1 column bc had select emp_no, salary
    #employee number is in

select employees.first_name, employees.last_name, salaries.salary
from salaries
join employees on employees.emp_no = salaries.emp_no
where employees.emp_no in (
    select emp_no
    from salaries
    where to_date > now()
    order by salary desc
    )
order by salaries.salary desc
limit 10;

    # join w a subq make sure the order is correct, define which order explicitly

# info from mult tables from subqs
    # just want a value space and then another value

select concat(
    (
        #get first/last name
        select concat(first_name, ' ', last_name)
        from employees
        where emp_no = 10001
        # result is a firstlast name w a space, a string
    ),
    # to be clever
    ' works in a space called ',
    (
        select dept_name
        from departments
        # look manually where he works, kind of forcing this on w having to do this part
        # just showing subqs in another place and how
        where dept_no = 'd005'
    ),
    '.'
);

# name and hire date of earliest dept employees

select first_name, hire_date
from employees
#bc has name and hire date
where emp_no in (
    select emp_no
    #the result array
    from dept_emp
    where from_date = (select min(from_date) from dept_emp)
    );

    # this returns the founding mngrs
    # like a for loop, looping through ea dept for the criteria









