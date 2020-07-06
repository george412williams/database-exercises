USE codeup_test_db;

DROP TABLE IF EXISTS contacts;

CREATE TABLE IF NOT EXISTS contacts(
    id INT USIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(50) NOT NULL,
    phone_number FLOAT,
    created_at DATETIME,
    updated_at DATETIME,
    PRIMARY KEY (id)
);