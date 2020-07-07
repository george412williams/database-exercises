USE codeup_test_db;

SELECT 'Name of P Floyd albums' as 'Ex 1';
SELECT name from albums where name = 'Pink Floyd';
SELECT 'Beatles'' Sgt Pepper release date' as 'Ex 2';
SELECT release_date from albums where name = 'Sgt. Peppers Lonely Hearts Club Band';
SELECT 'Nevermind Genre' as 'Ex 3';
SELECT genre from albums where name = 'Nevermind';
SELECT 'Songs of the 90s' as 'Ex 4';
SELECT name from albums where release_date between 1990 and 1999;
SELECT '10 mil category' as 'Ex 5';
SELECT name from albums where sales < 20;
SELECT 'Vanilla Rock' as 'Ex 6';
SELECT name from albums where genre LIKE '%rock%';








