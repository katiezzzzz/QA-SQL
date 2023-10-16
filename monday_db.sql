CREATE DATABASE monday;

USE monday;

CREATE TABLE colour
(
id int NOT NULL PRIMARY KEY auto_increment,
colour_name varchar(25)
);

CREATE TABLE person
(
id int NOT NULL PRIMARY KEY auto_increment,
firstname varchar(100) NOT NULL,
lastname varchar(100) NOT NULL,
shoesize tinyint NULL,
colour_id int,
FOREIGN KEY (colour_id) REFERENCES colour(id)
);

DROP TABLE person;
-- DROP DATABASE monday;