USE codeup_test_db;

SELECT 'All' as 'Albums';
SELECT name from albums;
UPDATE albums SET sales = sales * 10;
SELECT name from albums;

SELECT 'Released prior to 1980' as 'Albums';
SELECT name from albums where release_date < 1980;
UPDATE albums SET release_date = release_date - 100 where release_date < 1980;
SELECT name from albums where release_date < 1980;

SELECT 'Albums by Michael Jackson' as 'Albums';
SELECT name from albums where artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' where artist = 'Michael Jackson';
SELECT name from albums where artist = 'Michael Jackson';
SELECT name from albums where artist = 'Peter Jackson';