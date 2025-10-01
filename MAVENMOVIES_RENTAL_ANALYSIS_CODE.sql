-- Get all the movies list

USE MAVENMOVIES;

SELECT * FROM RENTAL;

SELECT * FROM MOVIES;

SELECT * FROM INVENTORY;

SELECT * FROM TRANSACTIONS;

SELECT * FROM MEMBERS;

SELECT * FROM ADDRESS;

SELECT * FROM CITY;

SELECT * FROM COUNTRY;

SELECT * FROM LANGUAGE;

SELECT * FROM CATEGORY;

SELECT * FROM FILM_CATEGORY;

SELECT * FROM PERFORMERS;

SELECT * FROM FILM_ACTOR;

-- Fetch customer names and emails for marketing campaigns

SELECT 
    customer_id,
    first_name,
    last_name,
    email
FROM MEMBERS
WHERE email IS NOT NULL
ORDER BY last_name, first_name;

-- Identify the most spending Customers so that we can send him/her rewards or debate points

SELECT 
    M.customer_id,
    M.first_name,
    M.last_name,
    M.email,
    SUM(T.amount) AS total_spent
FROM MEMBERS AS M
JOIN TRANSACTIONS AS T ON M.customer_id = T.customer_id
GROUP BY M.customer_id, M.first_name, M.last_name, M.email
ORDER BY total_spent DESC
LIMIT 10;

-- Find customers with fewer than 15 rentals (churn risk)

SELECT 
    m.customer_id,
    m.first_name,
    m.last_name,
    m.email,
    COUNT(r.rental_id) AS total_rentals
FROM MEMBERS AS m
JOIN RENTAL AS r ON m.customer_id = r.customer_id
GROUP BY m.customer_id, m.first_name, m.last_name, m.email
HAVING COUNT(r.rental_id) < 15
ORDER BY total_rentals ASC;

-- Count of movies by rental rate

SELECT 
    rental_rate, 
    COUNT(*) AS total_movies
FROM MOVIES
GROUP BY rental_rate
ORDER BY rental_rate;

-- Ratings distribution (G, PG, R, etc.)

SELECT 
    rating, 
    COUNT(film_id) AS number_of_movies
FROM MOVIES
GROUP BY rating
ORDER BY number_of_movies DESC;

-- Movies with “Behind the Scenes” special features

SELECT 
    film_id,
    title,
    special_features
FROM MOVIES
WHERE special_features LIKE '%Behind the Scenes%';

-- Categorize movies by length (short, medium, long)

SELECT 
    title,
    length,
    CASE
        WHEN length < 60 THEN 'Short (< 1 hr)'
        WHEN length BETWEEN 60 AND 120 THEN 'Medium (1–2 hrs)'
        WHEN length > 120 THEN 'Long (> 2 hrs)'
        ELSE 'Unknown'
    END AS length_category
FROM MOVIES
ORDER BY length_category, length;

-- Most rented movies (popularity analysis)

SELECT 
    m.title,
    COUNT(r.rental_id) AS total_rentals
FROM RENTAL AS r
JOIN INVENTORY i ON r.inventory_id = i.inventory_id
JOIN MOVIES m ON i.film_id  = m.film_id 
GROUP BY m.title
ORDER BY total_rentals DESC
LIMIT 10;

-- Top 10 grossing films by revenue

SELECT 
    m.title,
    SUM(t.amount) AS total_revenue
FROM TRANSACTIONS AS t
JOIN RENTAL AS r ON t.rental_id = r.rental_id
JOIN INVENTORY i ON r.inventory_id = i.inventory_id
JOIN MOVIES m ON i.film_id  = m.film_id 
GROUP BY m.title
ORDER BY total_revenue DESC
LIMIT 10;

-- Monthly and yearly rental trends

-- YEARLY--
SELECT 
    YEAR(rental_date) AS rental_year,
    COUNT(*) AS total_rentals
FROM RENTAL
GROUP BY rental_year
ORDER BY rental_year;

-- MONTHLY--

SELECT 
    YEAR(rental_date) AS rental_year,
    MONTH(rental_date) AS rental_month,
    COUNT(*) AS total_rentals
FROM RENTAL
GROUP BY rental_year, rental_month
ORDER BY rental_year, rental_month;

-- Correlation between rental duration, length, and pricing

SELECT 
    rental_duration,
    ROUND(AVG(length), 2) AS avg_length,
    ROUND(AVG(rental_rate), 2) AS avg_rental_rate,
    ROUND(AVG(replacement_cost), 2) AS avg_replacement_cost,
    COUNT(*) AS total_movies
FROM MOVIES
GROUP BY rental_duration
ORDER BY rental_duration;

-- Store-wise revenue contribution

SELECT 
    s.store_id,
    SUM(t.amount) AS total_revenue
FROM TRANSACTIONS t
JOIN EMPLOYEES e ON t.staff_id  = e.staff_id 
JOIN BRANCHES s ON e.store_id = s.store_id
GROUP BY s.store_id
ORDER BY total_revenue DESC;

-- Active vs inactive customers by store

SELECT 
    s.store_id,
    SUM(CASE WHEN m.active = 1 THEN 1 ELSE 0 END) AS active_customers,
    SUM(CASE WHEN m.active = 0 THEN 1 ELSE 0 END) AS inactive_customers
FROM MEMBERS m
JOIN BRANCHES s ON m.store_id = s.store_id
GROUP BY s.store_id;

-- TAG THE CUSTOMERS AS "ACTIVE" OR "INACTIVE"

SELECT *,IF(ACTIVE = "1","ACTIVE_CUSTOMER","INACTIVE_CUSTOMER") AS CUSTOMER_ACTIVITY
FROM CUSTOMER;

SELECT *,
CASE
	WHEN STORE_ID = 1 AND ACTIVE = 1 THEN "STORE 1 ACTIVE"
	WHEN STORE_ID = 1 AND ACTIVE = 0 THEN "STORE 1 INACTIVE"
	WHEN STORE_ID = 2 AND ACTIVE = 1 THEN "STORE 2 ACTIVE"
	WHEN STORE_ID = 2 AND ACTIVE = 0 THEN "STORE 2 INACTIVE"
    ELSE "ERROR"
END AS STORE_ACTIVITY
FROM MEMBERS;

SELECT F.TITLE,F.DESCRIPTION,INV.STORE_ID,INV.INVENTORY_ID
FROM INVENTORY AS INV INNER JOIN FILM AS F
ON INV.FILM_ID = F.FILM_ID;

-- Employee and advisor listings

SELECT staff_id AS id,first_name,last_name,
    'Employee' AS role
FROM EMPLOYEES
UNION ALL
SELECT advisor_id AS id,first_name,last_name,
    'Advisor' AS role
FROM ADVISOR
ORDER BY role,last_name, first_name;

-- Number of movies per performer

SELECT 
    p.actor_id,
    CONCAT(p.first_name, ' ', p.last_name) AS performer_name,
    COUNT(mp.film_id) AS number_of_movies
FROM PERFORMERS p
JOIN film_actor as mp ON p.actor_id = mp.actor_id
JOIN MOVIES m ON mp.film_id = m.film_id
GROUP BY p.actor_id, performer_name
ORDER BY number_of_movies asc, 
performer_name;

-- Actor–film associations (which actors appear in which titles)

SELECT 
    p.actor_id,
    CONCAT(p.first_name, ' ', p.last_name) AS performer_name,
    m.title AS movie_title
FROM PERFORMERS p
JOIN film_actor  mp ON p.actor_id = mp.actor_id
JOIN MOVIES m ON mp.film_id = m.film_id
ORDER BY performer_name, movie_title;

-- Number of actors per movie title

SELECT 
    m.title AS movie_title,
    COUNT(mp.actor_id) AS number_of_actors
FROM MOVIES m
JOIN film_actor  mp ON m.film_id  = mp.film_id 
JOIN PERFORMERS p ON mp.actor_id = p.actor_id
GROUP BY m.title
ORDER BY number_of_actors DESC, movie_title;





