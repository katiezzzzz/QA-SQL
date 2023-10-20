-- create a library with loan system
CREATE DATABASE library;
USE library;

CREATE TABLE book
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(30) NOT NULL
);

CREATE TABLE author
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL
);

CREATE TABLE genre
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
genre_name VARCHAR(30) NOT NULL
);

CREATE TABLE usr
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL
);

-- bridge tables
CREATE TABLE bookAuthor
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
book_id INT NOT NULL,
author_id INT NOT NULL,
FOREIGN KEY (book_id) REFERENCES book(id),
FOREIGN KEY (author_id) REFERENCES author(id)
);

CREATE TABLE bookGenre
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
book_id INT NOT NULL,
genre_id INT NOT NULL,
FOREIGN KEY (book_id) REFERENCES book(id),
FOREIGN KEY (genre_id) REFERENCES genre(id)
);

-- loan system
CREATE TABLE loan
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
book_id INT NOT NULL,
user_id INT NOT NULL,
start_date DATE NOT NULL,
expected_return_date DATE NOT NULL,
actual_return_date DATE,
FOREIGN KEY (book_id) REFERENCES book(id),
FOREIGN KEY (user_id) REFERENCES usr(id)
);