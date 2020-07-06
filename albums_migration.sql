USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(20),
    name VARCHAR(20) NOT NULL,
    release_date DATE,
    sales DECIMAL(10,2),
    genre VARCHAR(10),
    PRIMARY KEY (id)
);