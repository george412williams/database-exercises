use employees;

# 1 order by first name; first is irena reutenauer last vidya simmen
# 1 update query to order by first name and then last name; first result now irena acton last vidya zweizig
# change order by clause so order by last name before first name; first is irena acton now last maya zyda
#update queries for emps w E in last name to sort by emp num, result should not change
#now reverse the sort order for both queries
# change xmas 90s querie so first result os oldest emp who was hired last = khun bernini


-- select * from employees where first_name in ('Irena', 'Vidya', 'Maya');
select * from employees where (first_name = 'Irena'
    or first_name = 'Vidya'
    or first_name = 'Maya')
                          and gender = 'M';
#1 709/441
select * from employees where last_name like 'E%';
#2 7330
select * from employees where hire_date between '1990-01-01' and '1999-12-31';
#3 135214 hired in 90s
select * from employees where birth_date between '1900-12-25' and '9999';
#4 842 born on xmas (incomplete)
select * from employees where last_name like '%q%' ;
#5 1873 w a q in last name

#refactor; 1 done; 2 limit to male? 441;
select * from employees where last_name like '%E%';
# 3b last name starts or ends w 'E' 30723;
# 4 dupe and update it find last name starts and ends w E 899;
# 5 make another to show hired in 90s and born on xmas 362;
# 6 make another to find last names w a q but not any qu's 547;
