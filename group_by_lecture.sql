use employees;

# Groupoing by a single column

select gender from employees;

select distinct gender from employees;

# group by and dinstinct can by interchange
#group by may have more flex

select gender from employees
group by gender order by gender desc;

#once have groupoing use aggregate fxs for info

select gender, count(*) from employees group by gender;

select gender, count(*) from employees group by gender;

select gender, min(birth_date) from employees
group by gender;

#youngest of ea grp

select gender, birth_date from employees
group by gender;

    #get a headscratcher expression statement in return

    #what expect back also want to see the

    # bc deal w grp of people imposs to say the name of the person, could be any in the grp

# oldest bd, or most recent? makes sencse bc of how the data relates to ea other

select gender, birth_date from employees
group by gender, birth_date;

    # must include those columns in the group by too

#how many of those w bd 2-2-52, one way:

select gender, birth_date, count(*) from employees
group by gender, birth_date;

    #can ctrl order by the order or order by
    #order by birth_date;
    # or group by birth_date, gender; but there is some randomness here, check w more than a binary m/f thing

#minmax example select 1st last hire date for ea first name

# select first_name min(hire_date) as 'First Hired' max(hire_date) as 'last hired' from employees
# group by first_name;

select emp_no, count(salary), min(salary), max(salary), avg(salary), sum(salary) from salaries
group by emp_no
order by min(salary);

    # could order by max(salary) DESC;
        # see why highest person had highest sal, started highest, many changes, long term

