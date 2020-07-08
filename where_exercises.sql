use employees;

select * from employees where first_name or ('Irena','Vidya','Maya');
    #1 709
select * from employees where last_name like 'E%';
    #2 7330

    #3 135214 hired in 90s

    #4 842 born on xmas

    #5 1873 w a q in last name

    #refactor; 1 done; 2 limit to male? 441; 3 last name starts or ends w 'E' 30723;
        # 4 dupe and update it find last name starts and ends w E 899;
        # 5 make another to show hired in 90s and born on xmas 362;
        # 6 make another to find last names w a q but not any qu's 547;


