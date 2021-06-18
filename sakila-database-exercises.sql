/* Write a query that selects all columns from the city table; */
SELECT * FROM sakila.city;
/* Write a query that displays only the first_name and last_name columns from the customer table; */
SELECT first_name, last_name FROM sakila.customer;
/*Write a query that displays all columns in the rental table; */
SELECT * FROM sakila.rental;
/*Write a query that displays the title, description, and release date of the films registered in the film table;*/
SELECT title, description, release_year FROM sakila.film;
/*In the sakila.film table, build a query that displays the title and release year of the films in a column and gives it the name Film Release*/
SELECT CONCAT (title,' ', release_year) AS 'Movie Release' FROM sakila.film;
/* In the sakila.film table, create a query that displays the movie's title and rating (PG, G, NC-17) in just one column. Name it Rank . Don't forget to leave a space between the words so they are legible.*/
SELECT CONCAT (title,' ', rating) AS 'Rank' FROM sakila.film;
/* In the sakila.address table, build a query that displays the street and district of each record in one column only, and name that column Main Address */
SELECT CONCAT (address,' ', district) AS 'Main Address' FROM sakila.address;
/*Using the staff table from the sakila database. How could you answer the following questions?
How many passwords do we have registered in this table? */
SELECT COUNT(password) FROM sakila.staff;
/*How many people do we have in total working for our company? */
SELECT COUNT(staff_id) FROM sakila.staff;
/* How many emails do we have registered in this table?*/
SELECT COUNT(email) FROM sakila.staff;