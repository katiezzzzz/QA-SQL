use hero_team;

select * from team;
select * from hero;

insert into team (team_name, objective) 
values ('JLA', 'Protect the world'),
('JSA', 'Defeat the Nazis'),
('Birds of Prey', 'Fight Crime (without men)'),
('Task Force X', "Follow Waller's orders or die"),
('Teen Titans', 'Teach young superheroes to be their best');



insert into hero (hero_name, alias, ability, team_id)
values ('Bruce Wayne', 'Batman', 'Martial Arts', 1),
('Clark Kent', 'Superman', 'Flight', 1),
('Jay Garrick', 'The Flash', 'Super-Speed', 2),
('Alan Scott', 'Green Lantern', 'Ring Creation', 2),
('Helena Barteenelli', 'The Huntress', 'Crossbow Archery', 3),
('Dr. Harleen Quinzel', 'Harley Quinn', 'Hammer-Fighting', 3),
('Floyd Lawton', 'Deadshot', 'Marksmanship', 4),
('Cecil Adams', 'Count Vertigo', 'Induced Dizziness', 4),
('Damian Wayne', 'Robin', 'Swordmanship', 5),
('Dick Grayson', 'Nightwng', 'Acrobatics', 5);