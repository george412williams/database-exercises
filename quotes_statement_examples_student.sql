USE quotes_db;


/*********************** SELECT ***********************/

-- TODOne TOGETHER: View the author last name and the quote from quotes. Before the output, add a caption explaining the results.
SELECT 'These are author last names' AS 'First Select Query';

SELECT author_last_name, quote FROM quotes;

-- TODOne TOGETHER: Select all information from the quotes table. Before the output, add a caption explaining the results.
-- Notice how the id has been auto-incrementing on each insert.
SELECT 'This is all the info from the quotes table' AS '2nd Select Query';
-- all results
SELECT * FROM quotes;

/*********************** WHERE ***********************/

-- TODO TOGETHER: View quotes by Douglas Adams.

-- SELECT quote FROM quotes WHERE author_last_name = 'Adams';
-- common format for multi lines / ctrlEnter to do so in the client
SELECT quote
FROM quotes
WHERE author_last_name = 'Adams';

-- TODOne TOGETHER: View quotes by Douglas Adams. Add a caption

-- instead of the normal header one is defined here
SELECT quote AS 'Douglas Adams Quotes' FROM quotes WHERE author_last_name = 'Adams';

-- TODOne TOGETHER: View quote with primary key (in this case id) of 5
SELECT * FROM quotes WHERE id = 5;

-- TODOne TOGETHER: Select all from quotes where quote contains(is like) "the"
SELECT * FROM quotes WHERE quotes LIKE '%the%';




/*********************** UPDATE ***********************/
-- TODOne TOGETHER: View all quotes


-- TODOne TOGETHER: Update quote 4 to first name = Samuel and last name = Clemens
SELECT * from quotes where id = 4;
SELECT author_first_name, author_last_name from quotes where id = 4;

UPDATE quotes SET author_first_name = 'Samuel', author_last_name = 'Clemens' where id = 4;


/*********************** DELETE ***********************/

-- TODOne TOGETHER: Delete quote with id 3. Then view the output.

SELECT * from quotes where id = 3;
DELETE from quotes where id = 3;


/*********************** TRUNCATE ***********************/
-- TODOne TOGETHER: Truncate quotes table.... there is no going back! Deletes all records.

TRUNCATE quotes;

-- uncomment truncate in seeder to see how it adds instead of replacing
