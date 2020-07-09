use employees;



# list first 10 disinct last name descending see result
select distinct last_name from employees order by last_name desc limit 10;

#update xmas 90s quer from order by find just first 5 emps
#update query to find the tenth page of results in sets a 5 names per page offset 45
select * from employees
    where birth_date like '19%%-12-25'
    and hire_date like '199%'
    order by birth_date, hire_date desc
    limit 5
    offset 45;

#q; what is the rel btwn offset (# results to skip, limit (num of relsut per page) and page number?
    # make an equation?