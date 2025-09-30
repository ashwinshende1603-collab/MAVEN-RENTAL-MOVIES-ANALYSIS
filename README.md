# 🎞 CINEFLIX Movie Rental – SQL Analysis Project

![Cinehub Banner](https://mars-images.imgix.net/seobot/filmgrail.com/658a324a896bdc25cc34dfde-5a45cbc3254de9016c096e1d7dafd6d2.png?auto=compress)

## 📌 Overview

  This project contains SQL scripts for the Cineflix Movie Rental Database, a case study dataset inspired by real-world movie rental businesses.


 ### The focus is on :
  
   - Exploratory Data Analysis (EDA) of the schema
  
   - Ad-hoc business queries for insights
  
   - Revenue, rentals, customers, and inventory management reports
  
   - It’s designed as a portfolio project to demonstrate SQL querying, database understanding, and problem-solving skills.

## 🗂️ Database Structure

### Core Tables

- Movies → details of films (title, description, release year, rating, rental rates, genre).

- Performers → information about actors/actresses.

- Movie_performer → links performers with movies (and their roles).

- Members → registered customers (with contact info, phone, DOB).

- Branches → rental store branches.

- Employees → staff working at branches.

- Inventory → copies of each movie available (status: AVAILABLE / RENTED / DAMAGED).

- Rentals → rental transactions (rental/return dates, linked to members & employees).

- Transactions → payment records for rentals.

##🗂️ Project Contents

###Includes:

- Schema Exploration

   - Viewing tables (MOVIES, MEMBERS, RENTAL, INVENTORY, TRANSACTIONS, etc.)

- Ad-hoc Queries for Business Needs

   - Customer lists for marketing campaigns

   - Cheapest rental movies

   - Movies per rental rate category

   - Ratings analysis (most common film ratings)

   - Store-wise rental distribution

- Revenue & Popularity Analysis

   - Most rented movies

   - Top 10 grossing films

   - Highest spending customers

   - Store-wise revenue performance

- Customer & Loyalty Insights

   - Frequent renters (eligible for rewards)

   - Customers with low rental activity (churn analysis)

- Movie Catalog Insights

   - Movies by category & language

   - Films with “Behind the Scenes” features

   - Film length vs rental pricing

   - Genre and demographic-based recommendations

- Advanced Scenarios

   - Monthly rental trends

   - Actor/film collaborations

   - Inventory availability per store

   - Combined staff & advisor listings

## 📊 Use Cases

- SQL Training Project (Joins, Group By, Aggregations, CASE statements)

- Business Analysis (revenue, top movies, customer loyalty)

- Portfolio Demo (complex queries & insights for GitHub)

- Data Science Prep (export queries into Python/R for visualization)
