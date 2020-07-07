USE codeup_test_db;

SELECT 'Albums released after 1991' as 'Child of the 90s?';
DELETE from albums where release_date > 1991;

SELECT 'Disco Albums' as 'Disco is dead.';
DELETE from albums where genre = 'disco';

SELECT 'Albums by Guns N Roses' as 'Guns N Roses Denied Entry';
DELETE from albums where artist = 'Guns N Roses';
SELECT * from albums;