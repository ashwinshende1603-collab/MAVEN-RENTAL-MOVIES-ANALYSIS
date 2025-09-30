# MAVEN-RENTAL-MOVIES-ANALYSIS

🎬 MAVEN MOVIES RENTAL DATABASE

📌 OVERVIEW

Cinehub is a modernized relational database designed to model a movie rental & streaming platform.
It extends the classic rental database concept with new features like reviews, subscriptions, promotions, and watchlists, making it a richer, real-world dataset.

This project is ideal for practicing:

SQL (DDL & DML queries)

Advanced joins & aggregations

Business intelligence reporting

Stored procedures & functions

Database design for real-world applications

🗂️ DATABASE STRUCTURE
Core Tables

movies → details of films (title, description, release year, rating, rental rates, genre).

performers → information about actors/actresses.

movie_performer → links performers with movies (and their roles).

members → registered customers (with contact info, phone, DOB).

branches → rental store branches.

employees → staff working at branches.

inventory → copies of each movie available (status: AVAILABLE / RENTED / DAMAGED).

rentals → rental transactions (rental/return dates, linked to members & employees).

transactions → payment records for rentals.
