use hero_team;

select * from team;
select * from hero;

insert into team (team_name, objective) 
values ('JLA', 'Protect the world'),
('JSA', 'Defeat the Nazis'),
('Birds of Prey', 'Fight Crime (without men)'),
('Task Force X', "Follow Waller's orders or die"),
('Teen Titans', 'Teach young superheroes to be their best');

insert into team (team_name, objective) 
values ('Team Kimchi', 'Eat all the kimchi in the world'),
('Team Dash', 'Help teleporting people around the world');

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

insert into hero (hero_name, alias, ability, team_id)
values ('Inka Paw', 'Magic Cat', 'Being overly cute', NULL);

select * from product;

insert into product(name, colour, standard_cost, list_price, date_first_available)
values ('Star Widget', 'yellow', 1.00, 2.00, '2023-01-01'),
('Rocket Widget', 'red', 2.00, 4.00, '2023-01-07'),
('Flying Widget', 'green', 1.50, 3.00, '2023-03-01'),
('Spinning Widget', 'navy', 4.00, 5.00, '2023-02-01'),
('Rainbow Widget', 'colourful', 3.00, 4.00, '2023-06-11'),
('Flying Unicorn', 'pink', 7.00, 10.00, '2023-04-01'),
('Rocket Unicorn', 'peach', 10.00, 13.00, '2023-01-21'),
('Golden Unicorn', 'gold', 9.99, 12.00, '2023-02-11');

truncate table product;

-- add a product_id column to your hero table for the hero's favourite product
alter table hero
	add product_id int,
    add constraint foreign key(product_id) references product(id);
-- assign random product to each hero
update hero
	set product_id = round((random() * 7) + 1)
    where hero_id > 0;

-- disable foreign key constraint by setting it to 0, but need to set it back to 1 afterwards
-- it's dangerous don't do it
SET FOREIGN_KEY_CHECKS=1;