use employees;

#concat fx mult columns to single output
#aggregate fx w group by allow drive info about records we get back, max val ofl ist of vals, avg, min, max

# http://www.mysqltutorial.org/mysql-functions.com

select 'Somthing';

select concat('ello', ' ' , 'World');

-- if not satifisfied w column name:

select concat ('Hello', ' ' , 'World') as HWorld;
    # as stands for alias

select
concat(
    first_name,
    ' ',
    last_name,
    ' was born ',
    birth_date
    ) as Info, emp_no as EmployeeNo
    from employees;

# custom column name, can wrap in quotes for mult words: 'E Info'

#length() of sring
select length('asdflkj');
select first_name, length(first_name) from employees;

#combo
select upper(concat('hello', trim(' world    ')));

select now();
    #today the current datetime

select curdate();
select curtime();

select unix_timestamp();
    #seconds occurred since jan 1 1970 as single num used in lgr context
    #diff in unixtimestamps, past - current, for elapsed time

#=====AGGREGATE (info on results set)

#instead of scrolling to btm of select * from employees;:

select count(*) from employees;
select count(*) from dept_emp;
    #>300K
#count filtered results
select count(*) from employees where birth_date = '1953-09-02';

#count(distinclt birth_date) from employees;

#count ea set of identia results (jump ahead)(tomrw)

#mas
select max(birth_date) from employees;
    #min...youngest...

    select max(salary) from salaries;

select sum(salary)
from salaries
where emp_no = 10001;
-- add all salaries that they have had, not a useful data, just ex

select avg(salary)
from salaries;
-- is there a gender pay gap in this data set?
-- avg m to f salary
-- sep by decade

# on salaries table has emp no but no emp name
    # typical business confiden
        # but can cross with table of similar infos id to id connect to cross

# more fxs
# round for rounding; cos() - cosign; select rand() number gen;







