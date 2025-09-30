# 🎞 CINEFLIX Movie Rental – SQL Analysis Project

![Cinehub Banner](https://mars-images.imgix.net/seobot/filmgrail.com/658a324a896bdc25cc34dfde-5a45cbc3254de9016c096e1d7dafd6d2.png?auto=compress)

## 📌 Overview

  This project contains SQL scripts for the Cineflix Movie Rental Database, a case study dataset inspired by real-world movie rental businesses.


 ### The focus is on :
  
   - Exploratory Data Analysis (EDA) of the schema
  
   - Ad-hoc business queries for insights
  
   - Revenue, rentals, customers, and inventory management reports
  
   - It’s designed as a portfolio project to demonstrate SQL querying, database understanding, and problem-solving skills.
<hr/>

## 🎯 Project Goals  

- **Understand the Database Schema**  
  Explore the Cineflix relational model, identify key entities (**movies, members, rentals, transactions, inventory**), and study their relationships.  

- **Perform Exploratory Data Analysis (EDA)**  
  Write SQL queries to answer real-world business questions related to customers, revenue, inventory, and movie trends.  

- **Generate Business Insights**  
  Provide actionable insights such as:  
  - Most popular movies & genres  
  - Highest spending customers  
  - Store-wise revenue performance  
  - Customer loyalty analysis  

- **Enhance Decision-Making**  
  Help business teams with marketing (targeted emails), collection expansion, and customer reward strategies using SQL queries.  

- **Portfolio-Ready SQL Project**  
  Showcase SQL skills (**joins, subqueries, aggregations, case statements, functions**) in a structured, professional GitHub repository.
<hr/>

## 📊 Insights & Expected Outcomes  

- **Customer Insights**  
  - Identify highest spending customers  
  - Recognize loyal members (frequent renters)  
  - Detect inactive or low-activity customers for churn analysis  

- **Movie Performance**  
  - Most popular movies based on rentals  
  - Top-grossing films by revenue  
  - Genre and rating trends across branches  

- **Store & Revenue Analysis**  
  - Branch-wise revenue performance  
  - Monthly/seasonal rental patterns  
  - Correlation between rental rates, replacement cost, and film length  

- **Business Strategy Support**  
  - Data-driven marketing campaigns (targeted emails)  
  - Inventory optimization (track availability & demand)  
  - Reward programs for loyal customers  
<hr/>

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
<hr/>

## 🛠️ Tools & Technologies Used  

- **Database**: MySQL (Cineflix schema and SQL queries)  
- **SQL Concepts**: Joins, Subqueries, Aggregations, Case Statements, Group By, Functions 
<hr/>

## 📊 Use Cases

- SQL Training Project (Joins, Group By, Aggregations, CASE statements)

- Business Analysis (revenue, top movies, customer loyalty)
<hr/>

## 🎬 Movies Rental Data Queries  

This project answers key **business and analytical questions** using SQL, such as:  

- **Customer Insights**  
  - Fetch customer names and emails for marketing campaigns  
  - Identify the most loyal customers (30+ rentals)  
  - Find customers with fewer than 15 rentals (churn risk)  

- **Movie Analysis**  
  - Count of movies by rental rate  
  - Ratings distribution (G, PG, R, etc.)  
  - Movies with “Behind the Scenes” special features  
  - Categorize movies by length (short, medium, long)  

- **Rental & Revenue Insights**  
  - Most rented movies (popularity analysis)  
  - Top 10 grossing films by revenue  
  - Monthly and yearly rental trends  
  - Correlation between rental duration, length, and pricing  

- **Store & Employee Performance**  
  - Store-wise revenue contribution  
  - Branch inventory availability  
  - Active vs inactive customers by store  
  - Employee and advisor listings  

- **Actor & Film Relationships**  
  - Number of movies per performer  
  - Actor–film associations (which actors appear in which titles)  
  - Number of actors per movie title  
