--1.Soru

SELECT COUNT(*)
FROM film
WHERE length > (SELECT AVG(length) FROM film);

--2.Soru
SELECT COUNT(*)
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

--3.Soru
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

--4.Soru
SELECT customer_id, COUNT(*) AS num_payments
FROM payment
GROUP BY customer_id
ORDER BY num_payments DESC;
