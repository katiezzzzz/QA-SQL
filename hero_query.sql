USE hero_team;

SELECT * FROM hero;
SELECT alias, ability FROM hero;
SELECT alias, ability FROM hero ORDER BY hero_id LIMIT 5;
SELECT alias, ability FROM hero WHERE hero_id <= 5;
SELECT alias, ability FROM hero WHERE hero_id = 1 OR hero_id = 2;
-- syntatic sugar
SELECT alias, ability FROM hero WHERE hero_id IN (1,2,3,4,5);

SELECT alias FROM hero WHERE alias LIKE 'the%';

UPDATE hero SET ability='Communicating with Animals' WHERE hero_id=8;
DELETE FROM hero WHERE hero_id=5;
-- TRUNCATE will do the same

-- to join the tables, select the data you like and stitch them together
SELECT team.team_id, team.team_name, hero.hero_name, hero.alias 
FROM team INNER JOIN hero
ON team.team_id=hero.team_id;

SELECT t.team_id, t.team_name, h.hero_name, h.alias 
FROM team AS t 
INNER JOIN hero AS h
ON t.team_id=h.team_id;
