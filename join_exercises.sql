# JOIN EXERCISES EMPLOYEES DB

# start w depts table, get to employees table or empno, look at to date
#depts to deptmngr table using deptno
# join w emp table usig common thread
#use empno as commong thread
# interm query where todate 9999, current
# link to emp using empno
# want deptno to match on both sides, so regular join no empty results, inner join, or just join
use employees;

select departments.dept_name as 'Department Name',
       concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from departments
join dept_manager on dept_manager.dept_no = departments.dept_no
join employees on employees.emp_no = dept_manager.emp_no
where dept_manager.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.

select departments.dept_name as 'Department Name',
        concat(employees.first_name, ' ', employees.last_name) as 'Manager Name'
from departments
join dept_manager on dept_manager.dept_no = departments.dept_no
join employees on employees.emp_no = dept_manager.emp_no
where employees.gender = 'F' and dept_manager.to_date = '9999-01-01'
order by `Department Name`;

#Find the current titles of employees currently working in the Customer Service department. titles and count
    #join departments to deptemp join titles to deptemp
    #added dept emp todate

select titles.title as Title, ' ', count(*) as Count
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join titles on titles.emp_no = dept_emp.emp_no
where departments.dept_name = 'customer service' and titles.to_date = '9999-01-01' and dept_emp.to_date = '9999-01-01'
group by Title;

#Find the current salary of all current managers.
    #start w dept and their names first then current mngrs and then to salaries
    #joining on deptno
select departments.dept_name as 'Department Name', ' ',
       concat(employees.first_name, ' ', employees.last_name) as 'Name', ' ',
       salaries.salary as 'Salary'
from departments
join dept_manager on departments.dept_no = dept_manager.dept_no
join employees on employees.emp_no = dept_manager.emp_no
join salaries on employees.emp_no = salaries.emp_no
where dept_manager.to_date = '9999-01-01' and salaries.to_date like '9999%'
order by dept_name;

#Bonus Find the names of all current employees, their department name, and their current manager's name.

# 240,124 Rows
#
#     Employee Name | Department Name  |  Manager Name
#     --------------|------------------|-----------------
#      Huan Lortz   | Customer Service | Yuchang Weedman
#
#      .....







# JOIN EXERCISES PT 1 JOIN TEST DB

use join_test_db;

CREATE DATABASE IF NOT EXISTS join_test_db;

CREATE TABLE roles (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE users (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
role_id INT UNSIGNED DEFAULT NULL,
PRIMARY KEY (id),
FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

# Added users
INSERT INTO users (name, email, role_id) VALUES
('bill', 'billcompton@example.com', null),
('eric', 'ericnorthman@example.com', 2),
('sam', 'smerlott@example.com', 2),
('tara', 'tara@example.com', 2);

#Use join, left join, and right join to combine results from the
# users and roles tables as we did in the lesson.
# Before you run each query, guess the expected number of results.

#Although not explicitly covered in the lesson,
# aggregate functions like count can be used with join queries.
# Use count and the appropriate join type to get a list of
# roles along with the number of users that have a given role.
# Hint: You will also need to use group by in the query.




#Join Lecture notes/examples

use codeup_test_db;

#join inner
    # only rows completely matching

select pets.pet_name, owners.address from pets
inner join owners on pets.owner_id = owners.id;

#left
    # pets plus owner matches

select pets.pet_name, owners.address from pets
left join owners on pets.owner_id = owners.id;

#right
    # owners plus pet matches

select pets.pet_name, owners.address from pets
left join owners on pets.owner_id = owners.id;

