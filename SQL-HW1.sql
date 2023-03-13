-- #1. How many actors are there with the last name 'Wahlberg'?
select last_name
from actor 
where last_name like 'Wahlberg';

-- Answer: 2

-- #2. How many payments were made between $3.99 and $5.99?
select count(amount)
from payment 
where amount between 3.99 and 5.99;

-- Answer: 4794

-- #3. What film does the store have the nost of?
select film_id, count(film_id) as film_count
from inventory 
group by film_id 
order by film_count desc 

-- Answer: 72 films have 8 copies

-- #4. How many customers have the last name 'William'?
select last_name
from customer 
where last_name like 'William';

-- Answer: 0

-- #5. What store employee sold the most rentals?
select count(staff_id)
from rental 
where staff_id = 2

-- Answer: staff_id 1 with 8004 retanls sold

-- #6. How many different district names are there?
select count(DISTINCT district)
from address;

-- Answer: 378

-- #7. What film has the most actors in it?
select film_id, count(actor_id)
from film_actor 
group by film_id 
order by count(actor_id) desc;

-- Answer: 508 with 15 actors

-- #8. From store_id 1, how many customers have a last name ending with es?
select last_name, store_id
from customer 
where last_name like '%es'

-- Answer: 21

-- #9. How many payment amounts had a number of rentals above 250 for customer with 380 and 430? 
select amount, count(rental_id)
from payment 
where customer_id between 380 and 430
group by amount 
having count(rental_id) > 250;

-- Answer: 3

-- #10a. Within the film table, how many rating categories are there?
select count(distinct rating) 
from film

-- Answer: 5

-- #10b. And what rating has the most movies total?
select rating, count(rating)
from film
group by rating

-- Answer: PG-13

















