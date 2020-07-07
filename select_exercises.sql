USE codeup_test_db;

SELECT * from albums where name = 'Pink Floyd';
SELECT release_date from albums where name = 'Sgt. Peppers Lonely Hearts Club Band';
SELECT genre from albums where name = 'Nevermind';
SELECT name from albums where release_date between 1989 and 2000;
SELECT name from albums where sales < 20;
SELECT name from albums where genre LIKE '%Rock%';








