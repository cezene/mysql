/* Write a query that displays all the movies registered in the database. */
SELECT * FROM sakila.film;
/*Write a query that displays just the name of the movies, their release year, and their rating.*/
SELECT title, release_year, rating FROM sakila.film;
/*Write a query that displays only the unique last names registered in the actor table.*/
SELECT DISTINCT last_name FROM sakila.actor;
/*Create queries to discover the following:*
/*How many movies do we have registered?*/
SELECT COUNT(title) FROM sakila.film;
/*How many customers do we have registered?*/
SELECT COUNT(customer_id) FROM sakila.customer;
/*How many unique last names do we have in the actor table?*/
SELECT COUNT(DISTINCT last_name) FROM sakila.customer;
/*How many movie categories does sakila bank have?*/
SELECT COUNT(*) FROM sakila.category;
/*How many countries are served by sakila?*/
SELECT COUNT(*) FROM sakila.country;
/*Go to sakila's language table and create a survey that shows the 5 registered languages,
 but not english.*/
 SELECT * FROM sakila.language LIMIT 5 OFFSET 1;
/*Go to the film table and select all data from the table. Ready, did it?*/
SELECT * FROM sakila.film;
/*Now let's try the following:
Create a query to find the first 20 movies,
including title, year of release, duration, rating and replacement cost. */
SELECT title, release_year, length, rating, replacement_cost FROM sakila.film
LIMIT 20;
/*Sort the results by the movies with the longest duration and then the lowest replacement cost.*/
SELECT title, release_year, length, rating, replacement_cost FROM sakila.film
ORDER BY length DESC, replacement_cost ASC
LIMIT 20;