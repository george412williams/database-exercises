USE employees;

# where clause allow us to craft queries based on very spec crits

# following concept will cover:
# LIKE
# BETWEEN
# IS NULL / IS NOT NULL
# comparison operators
# IN w searching
# DISTINCT uniqe occurrances
# Chanining WHERE clauses

#===BASIC QUERIE

# LIKE

    # all the empls w a first name that starts w 'F'

select * from employees where first_name LIKE 'f%';

select * from employees where last_name LIKE '%ing';

# ...'%in%';


# BETWEEN

-- matches wi a range w =
select * from employees where emp_no between 12434 and 12440;
-- otherwise
select * from employees where emp_no >= 12434 and emp_no <= 12440;
-- w date
select * from employees where hire_date between '1990-10-22' and '1990-11-22';


# IS NULL and IS NOT NULL

use codeup_test_db;
show tables;
#select * from users;
#select * from users where role_id is null;
-- just jane and mike only here, not null excludes them
use employees;


# IN

-- all empls w one of firsts names elvis, magy, brendon
select * from employees where first_name IN ('Elvis','Magy','Brendon');
-- otherwise
select * from employees where first_name = 'Elvis'
OR first_name = 'Magy'
OR first_name = 'Brendon';


# DISTINCT

-- how many unique first name emp's? names wo dupes
select distinct first_name from employees;
#..last name
# first_name, last_name
    -- get back bigger list than either previous, still much less than ttl
    -- 279408, 30K has first/last name shared by someone inthe company
    -- found unique occurrances of these values, not spec record of a person
    -- how find out all uniqe bd's?

# Chained where clauses

select * from employees where birth_date = '1953-09-02' and gender = 'F';
#only get back f's w that bd vs OR

    #mult cond's

select *
from employees
where last_name IN ('Herber','Baek')
    and emp_no < 20000
    or first_name = 'Dmitri';
# does give back a dmitri with emp > 20000, violating a cond
# order of ops here, : AND (emp_no < 20000 OR first_name = 'dmitri');
    # have to use logic to group appropriately, returns w this one 14 results vs thousands in the former
# also note the formation of the line layout

# ORDER BY CLAUSE

use employees;

describe employees;

    # can easily sort in the services console by clicking the column title
    # default ordering by the primary key and remains on any sort
    # in previous ex where looking for two things can name sort to group then wi that select

select  * from employees order by first_name;
    # default return in ascending
select * from employees order by last_name desc;
    # sort descends
# org notes on mult columns, both by first name and last name
select first_name, last_name from employees order by first_name, last_name desc;
    # works also for * (all columns of data, here just want this data)
    # can add where before your order to further specify, where-then-order
#first empl, last empl hired first frmel hiest current salary

# LIMIT

    #if don't want back all matching results, just want 1st?
select * from employees limit 10;
    #first 10 empls based on primary key;
    #can consider a page limit too in viewing
    #intellij has a limit of 500 in showing, auto paginated
    # offset 10
select * from employees
where first_name like 'M%'
limit 5 offset 10;
    # shopping pagination uses this logic

    #lec transisiton to exercise, showed list of the examples completed saying this is what you should be able to accomplish










