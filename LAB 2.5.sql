USE sakila;

## 1. 

SELECT *
FROM sakila.actor
WHERE first_name = 'Scarlett';

## 2.1

SELECT COUNT(DISTINCT inventory_id) AS rentable_films
FROM sakila.rental;

## 2.2

SELECT COUNT(*)
FROM sakila.rental
WHERE rental_date IS NOT NULL;

## 3. 

SELECT MAX(length) AS 'max_length', MIN(length) AS 'min_length'
FROM sakila.film;


## 4. 

SELECT CONVERT(AVG(length), TIME) AS duration
FROM sakila.film;

## 5. 

SELECT COUNT(DISTINCT last_name) AS 'last_names'
FROM sakila.actor;

## 6. 

SELECT DATEDIFF(MAX(last_update), MIN(rental_date)) AS 'open_for_rental_in_days'
FROM sakila.rental;

## 7. 

SELECT *, DATE_FORMAT(CONVERT(rental_date, DATE), '%M') AS rental_date_month, DATE_FORMAT(CONVERT(rental_date, DATE), '%W') AS rental_date_weekday, 
DATE_FORMAT(CONVERT(return_date, DATE), '%M') AS return_date_month, DATE_FORMAT(CONVERT(return_date, DATE), '%W') AS return_date_weekday
FROM sakila.rental
LIMIT 20;

## 8.
SELECT *, CASE WHEN(DATE_FORMAT(CONVERT(rental_date, DATE), '%W') IN ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')) THEN 'Workday' ELSE 'Weekend' END AS 'day_type'
FROM sakila.rental;

## 9.  

SELECT DISTINCT release_year
FROM sakila.film;

## 10. 

SELECT title 
FROM sakila.film
WHERE title LIKE '%Armageddon%';

## 11. 

SELECT title
FROM sakila.film
WHERE title LIKE '%Apollo'; 

## 12. 

SELECT title, length
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

## 13. 

SELECT COUNT(*) AS 'Behind the Scenes'
FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';




