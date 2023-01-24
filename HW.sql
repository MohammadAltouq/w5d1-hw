-- 1.
SELECT COUNT(last_name)
FROM actor
WHERE last_name like 'Wahlberg';

-- 2.
SELECT count(amount)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;

-- 3.
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id ORDER BY COUNT(film_id) DESC;

-- 4.
SELECT count(last_name)
FROM customer
WHERE last_name like 'William';

-- 5.
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id ORDER BY COUNT(staff_id) DESC LIMIT 1;
-- 6.
SELECT COUNT(DISTINCT district) 
FROM address;

-- 7.
SELECT film_id, count(film_id)
FROM film_actor
GROUP BY film_id ORDER BY count(film_id) DESC  LIMIT 1;

-- 8.
SELECT count(last_name)
from customer
WHERE last_name LIKE '%es' AND store_id = 1;

-- 9.
SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id >= 380 AND customer_id<= 430
GROUP BY amount HAVING COUNT(amount) > 250 ;

-- 10.
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating 
ORDER BY COUNT(rating) DESC 
LIMIT 1;


