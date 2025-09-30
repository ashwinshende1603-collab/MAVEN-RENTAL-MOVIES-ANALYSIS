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

This repository answers key **business and analytical questions** using SQL, such as:  

- **Customer Insights**  
  - Fetch customer names and emails for marketing campaigns

<img width="507" height="447" alt="image" src="https://github.com/user-attachments/assets/6e5df03e-7a62-4931-a201-2c989706cad4" />


  - Identify the most spending Customers so that we can send him/her rewards or debate points

<img width="460" height="106" alt="Screenshot 2025-10-01 001929" src="https://github.com/user-attachments/assets/c3f37364-9e84-45a9-a73f-a6aae522afd8" />


  - Find customers with fewer than 15 rentals (churn risk)

<img width="282" height="162" alt="image" src="https://github.com/user-attachments/assets/1a57cee2-77f8-4de1-8c1a-95950690c69c" />



- **Movie Analysis**  
  - Count of movies by rental rate

<img width="245" height="132" alt="image" src="https://github.com/user-attachments/assets/11eac323-d23c-4da1-86fb-e3de8544e7f4" />


  - Ratings distribution (G, PG, R, etc.)

<img width="248" height="200" alt="image" src="https://github.com/user-attachments/assets/a52fc31a-aef9-496a-90e2-857133ec1617" />


  - Movies with “Behind the Scenes” special features

<img width="537" height="441" alt="image" src="https://github.com/user-attachments/assets/f663c0e9-73e2-402d-9c97-c243b09055ba" />


  - Categorize movies by length (short, medium, long)

<img width="446" height="443" alt="image" src="https://github.com/user-attachments/assets/361634f5-845b-4b22-ba21-101c55fa7fe0" />




- **Rental & Revenue Insights**  
  - Most rented movies (popularity analysis)
 
<img width="327" height="292" alt="image" src="https://github.com/user-attachments/assets/6cadab0a-bece-41f2-af0d-179fe0bcfb75" />

  
  - Top 10 grossing films by revenue

 <img width="337" height="277" alt="image" src="https://github.com/user-attachments/assets/feee6832-61e9-41a4-9da4-06f2b44f6f7a" />
 

  - Monthly and yearly rental trends

 <img width="350" height="200" alt="image" src="https://github.com/user-attachments/assets/12d3c27d-216f-4018-ac81-6eb9e1a0764d" />   <img width="247" height="126" alt="image" src="https://github.com/user-attachments/assets/7cb7a076-17b5-4644-965d-a2e989f4f423" />   


  - Correlation between rental duration, length, and pricing

<img width="546" height="190" alt="image" src="https://github.com/user-attachments/assets/4bd70a67-c256-46a3-a703-a79e98a8a2b2" />



- **Store & Employee Performance**  
  - Store-wise revenue contribution
 
<img width="263" height="123" alt="image" src="https://github.com/user-attachments/assets/e2286087-98eb-4543-83bf-47e30a7a242a" />


  - Branch inventory availability


  - Active vs inactive customers by store  
  - Employee and advisor listings  

- **Actor & Film Relationships**  
  - Number of movies per performer  
  - Actor–film associations (which actors appear in which titles)  
  - Number of actors per movie title  
