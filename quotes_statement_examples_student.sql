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

-- TODO TOGETHER: View quotes by Douglas Adams. Add a caption

-- instead of the normal header one is defined here
SELECT quote AS 'Douglas Adams Quotes' FROM quotes WHERE author_last_name = 'Adams';

-- TODO TOGETHER: View quote with primary key (in this case id) of 5

-- TODO TOGETHER: Select all from quotes where quote contains(is like) "the"





/*********************** UPDATE ***********************/
-- TODO TOGETHER: View all quotes


-- TODO TOGETHER: Update quote 4 to first name = Samuel and last name = Clemens

/*********************** DELETE ***********************/

-- TODO TOGETHER: Delete quote with id 3. Then view the output.



/*********************** TRUNCATE ***********************/
-- TODO TOGETHER: Truncate quotes table.... there is no going back! Deletes all records.

