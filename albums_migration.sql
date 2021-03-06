USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(128) DEFAULT 'UNKNOWN',
    name VARCHAR(128) NOT NULL,
    release_date SMALLINT UNSIGNED,
    genre VARCHAR(128),
    sales FLOAT,
    PRIMARY KEY (id),
    UNIQUE unique_artist_album (artist, name)
);