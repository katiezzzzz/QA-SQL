USE menagerie;

SELECT * FROM pet;

SELECT * FROM event;

SELECT 
	e.date AS event_date, 
	e.type, 
	e.remark, 
	p.name AS pet_name, 
	p.owner, 
	p.species AS pet_species
FROM event AS e
INNER JOIN pet AS p
ON e.pet_id=p.id
ORDER BY event_date DESC;

SELECT * FROM pet WHERE name BETWEEN 'a' AND 'e';
SELECT * FROM pet WHERE birth BETWEEN '1990-01-01' AND '1994-12-31';

-- counting number of rows
SELECT COUNT(*) FROM pet;
SELECT COUNT(DISTINCT(sex)) FROM pet;
SELECT * FROM pet WHERE sex='m';

SELECT species, COUNT(*) FROM pet GROUP BY species;
SELECT species, COUNT(*) FROM pet WHERE death IS NULL GROUP BY species;
SELECT species, COUNT(*) FROM pet WHERE death IS NOT NULL GROUP BY species;
SELECT species, COUNT(*) FROM pet GROUP BY species HAVING COUNT(*)>=2;