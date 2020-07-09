use codeup_test_db;

#pwrful table combining to gain new data

drop table if exists pets;
drop table if exists owners;

#if delete owner, then need to delete pets
# slack link:
# https://dev.mysql.com/doc/refman/8.0/en/create-table-foreign-keys.html

drop table if exists owners;
create table owners (
                        id int unsigned auto_increment primary key,
                        name varchar(30) not null,
                        address varchar(255) default 'undisclosed'
);

insert into owners (name, address) values ('bill', 'the death star');

drop table if exists pets;
create table pets (
                      id int unsigned auto_increment,
                      pet_name varchar(30) not null,
                      owner_id int unsigned,
                      age int,
                      primary key (id),
                      foreign key (owner_id) references owners(id)
);

insert into pets (pet_name, owner_id, age)
values ('rocky', 1, 4);
insert into pets (pet_name, owner_id, age)
values ('rocko', 1, 4);

# alter table pets
#     drop foreign key owners.;

# list pets w their address

select pets.pet_name, owners.address from pets
join owners on pets.owner_id = owners.id;

    # joins with a common category, id

# left / right join

# left is pets name / right is owners address
    #inner join:

    # select pets.name, owners.address from pets
    # join owners on pets.owner_id = owners_id;
        # join only for those who share the id value
        # look at the items only that are on both tables
    # left join i want all from left table and only right table matches
        # right is opposite

# FILE

# associative join on 3 tables instead of 2

use employees;

#want to find full name dept w employee id 10001
    #manually going into employees in sequal and pseudo'd it

select concat(employees.first_name, ' ', employees.last_name), departments.dept_name
from employees
join dept_emp on dept_emp.emp_no = employees.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where employees.emp_no = 10001;

    # worked; can add alias   as 'Full Name',     as 'Department',

select concat(employees.first_name, ' ', employees.last_name), departments.dept_name
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
where employees.emp_no = 10001;