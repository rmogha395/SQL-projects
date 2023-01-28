show databases;
use mavenmovies;
show tables;

#QUERY 1:SQL query to count the number of characters except the spaces for each actor. 
#Return first 10 actors name length along with their name.

SELECT LENGHT(CONCAT(first_name,last_name)) from actor LIMIT 10;


#QUERY 2: List all Oscar awardees(Actors who received Oscar award) with their full names and length of their names.
SELECT CONCAT(first_name,' ',last_name) as fullname, LENGTH(CONCAT(first_name,last_name))as length_full_name from
         actor_award where awards IN ('Oscar');


#QUERY 3: Find the actors who have acted in the film ‘Frost Head’.
SELECT film.title, actor.first_name, actor.last_name from film
         INNER JOIN film_actor on film.film_id=film_actor.film_id
         INNER JOIN actor on actor.actor_id=film_actor.actor_id WHERE title='Frost Head';


#QUERY 4: Pull all the films acted by the actor ‘Will Wilson’.
SELECT film.title, actor.first_name, actor.last_name from film
         INNER JOIN film_actor on film.film_id=film_actor.film_id
         INNER JOIN actor on actor.actor_id=film_actor.actor_id WHERE first_name='Will' AND last_name='Wilson';


#QUERY 5: Pull all the films which were rented and return in the month of May.
SELECT film.title, rental.return_date, rental.rental_date from film
         CROSS JOIN rental where return_date like '%-05-%' AND rental_date like '%-05-%';


#QUERY 6: Pull all the films with ‘Comedy’ category.
SELECT film.title, category.name from category
         CROSS JOIN film where name='Comedy';








