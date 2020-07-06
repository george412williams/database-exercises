USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO-INCREMENT,
    artist VARCHAR(20),
    name VARCHAR(20),
    release_date INT DATE NULL,
    sales FLOAT NULL,
    genre VARCHAR(10),
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)
     PRIMARY KEY (id)
);