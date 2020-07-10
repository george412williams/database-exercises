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

    # department number IS IN

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





