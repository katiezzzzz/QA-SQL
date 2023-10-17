USE monday;

SELECT * 
FROM colour
LIMIT 1000;

INSERT INTO colour (colour_name)
VALUES ('Purple');

INSERT INTO colour (colour_name)
VALUES ('Blue');

INSERT INTO colour (colour_name)
VALUES ('Green'),
('Pink'),
('Black');

INSERT INTO colour (colour_name)
VALUES ('Red');

SELECT * FROM person LIMIT 1000;

INSERT INTO person (firstname, lastname, shoesize, colour_id)
VALUES ('Archie', 'N', 10, 1);

INSERT INTO person (firstname, lastname, shoesize, colour_id)
VALUES ('Archie', 'AW', 10, 2),
('Danica', 'Davies', 7, 3),
('Alvaro Indalecio', 'Fernandez Achotegui', 10, 2),
('Anamaria', 'Gomez', 3, 4),
('Lucas', 'Yan', 7, 5),
('David', 'McBride', 12, 6),
('Huma', 'Ahmed', 6, 3),
('Kyle', 'Preston', 9, 1),
('Emily', 'Serle', 6, 6);

-- average shoe size
SELECT AVG(shoesize) FROM person;
SELECT SUM(shoesize) FROM person;
SELECT MIN(shoesize) FROM person;
SELECT MAX(shoesize) FROM person;

INSERT INTO person (firstname, lastname, shoesize, colour_id)
VALUES ('Allis', 'McSweeny', NULL, 2);