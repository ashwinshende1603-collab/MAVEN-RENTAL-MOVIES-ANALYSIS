# MAVEN-RENTAL-MOVIES-ANALYSIS
🎬 Maven Movies Rental Database
📌 Overview

This project contains the Maven Movies Rental Database, a relational database inspired by the classic Sakila dataset. It models a movie rental business with entities such as movies, customers, rentals, payments, staff, and stores.

The database is ideal for practicing:

SQL queries (JOINs, GROUP BY, subqueries)

Database design & normalization

Analytical reporting (top customers, revenue analysis, inventory tracking)

Stored procedures, triggers, and views

🗂️ Dataset Structure
Core Tables

film → information about movies (title, description, release year, rating, rental rates).

actor → performer details (first and last name).

film_actor → many-to-many relationship between films and actors.

customer → customers who rent movies.

store → rental store branches.

staff → employees working at each store.

inventory → copies of each film available for rent.

rental → rental transactions (date, return date, customer, inventory).

payment → payments linked to rentals.

Additional Entities

category → movie categories (Action, Drama, Comedy, etc.).

film_category → links films to categories.

language → available movie languages.

address, city, country → geographic hierarchy for customers & stores.
