use sakila;

select * from actor;

select * from actor
where first_name = 'John';

select * from actor
where last_name = 'Neeson';

select * from actor
where (actor_id % 10) = 0 ;

select * from film
where film_id = 100;

select * from film
where rating = 'R';

select * from film
where rating != 'R';

select * from film
order by length asc
limit 10;

select * from film
order by length desc;

select * from film
where special_features like ('%Deleted%');

select last_name, count(last_name) from actor
group by last_name having count(last_name)<2
order by last_name desc;

select last_name, count(last_name) from actor
group by last_name having count(last_name)>=2
order by count(last_name) desc;

select *, count(actor_id) from film_actor
group by actor_id
order by count(actor_id) desc
limit 1;
select * from actor where actor_id=107;
select * from film_actor where actor_id=107;

select * from film
where title='Academy Dinosaur';

select avg(length) from film;

select f.title, avg(f.length), c.film_id, c.category_id
from film as f
inner join film_category as c
on f.film_id=c.film_id
group by c.category_id;

select * from film_text
WHERE description LIKE '%robot%';

select * from film
WHERE release_year = 2010;

select f.title, fc.film_id, fc.category_id, c.name
from film f
inner join film_category fc on f.film_id = fc.film_id
inner join category c on fc.category_id = c.category_id
where c.name like '%Horror%';

SELECT * FROM staff
WHERE staff_id = 2;

select f.title, fa.film_id, fa.actor_id, a.first_name, a.last_name
from film f
inner join film_actor fa on f.film_id = fa.film_id
inner join actor a on fa.actor_id = a.actor_id
where a.first_name = 'Fred' AND a.last_name = 'Costner';

select count(distinct(country)) from country;

SELECT * FROM language
order by name desc;

SELECT * FROM actor
WHERE last_name LIKE '%son'
ORDER BY first_name;

select f.category_id, f.film_id, c.name, COUNT(f.film_id)
from film_category f
inner join category c on f.category_id = c.category_id
GROUP BY f.category_id
ORDER BY COUNT(f.film_id) DESC LIMIT 1;

