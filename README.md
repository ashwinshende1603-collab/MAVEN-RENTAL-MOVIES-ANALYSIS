# 🎬🎞 MavenMovies Rental – SQL Analysis Project  


![Cinehub Banner](https://mars-images.imgix.net/seobot/filmgrail.com/658a324a896bdc25cc34dfde-5a45cbc3254de9016c096e1d7dafd6d2.png?auto=compress)

## 📌 Overview  
This project contains **SQL scripts for the MavenMovies Rental Database**, a case study dataset inspired by real-world movie rental businesses.  

The focus is on:  
- **Exploratory Data Analysis (EDA)** of the schema  
- **Ad-hoc business queries** for insights  
- **Revenue, rentals, customers, and inventory management reports**  

It’s designed as a **portfolio project** to demonstrate SQL querying, database understanding, and problem-solving skills.  

---

## ✨ Features  

The MavenMovies SQL project provides the following features:  

- **Database Schema Exploration**  
  - Well-structured schema with entities like movies, members, rentals, inventory, payments, and employees.  

- **Business-Focused SQL Queries**  
  - Top rented movies and top-grossing films  
  - Customer insights (loyal, inactive, and high-spending customers)  
  - Store-wise performance and revenue contribution  
  - Inventory availability and categorization of films  

- **Analytical Insights**  
  - Monthly and yearly rental trends  
  - Ratings and genre distribution of films  
  - Correlation analysis between rental duration, movie length, and pricing  

- **Customer Engagement Analysis**  
  - Identifying churn-risk customers  
  - Fetching customer emails for targeted campaigns  
  - Reward and loyalty program opportunities  

- **Portfolio-Ready Project**  
  - Clean SQL scripts for schema exploration and business queries  
  - Professional README with insights, goals, and recommendations  
  - Extendable to Python/BI tools for dashboards and visualization  

---

## 🎯 Project Goals  

- **Understand the Database Schema**  
  Explore the MavenMovies relational model, identify key entities (**movies, members, rentals, transactions, inventory**), and study their relationships.  

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

---

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

---

## 🚀 Recommendations  

Based on the MavenMovies SQL analysis, the following recommendations can help improve business decisions and customer engagement:  

- **Customer Retention**  
  - Target customers with fewer than 15 rentals using loyalty rewards or personalized offers.  
  - Provide incentives for inactive customers to return (discount coupons, free trials).  

- **Movie Catalog Optimization**  
  - Stock more copies of the most rented and top-grossing films to meet demand.  
  - Focus on genres and ratings with higher rental trends (e.g., PG-13 or Action movies).  

- **Revenue Growth**  
  - Promote premium rental plans for movies with higher rental rates.  
  - Use promotions and bundles for low-performing movies to increase rentals.  

- **Branch Performance**  
  - Allocate more inventory to stores generating the highest revenue.  
  - Monitor availability to reduce “out of stock” cases at popular branches.  

- **Future Strategy**  
  - Build a recommendation system using rental history and reviews to suggest movies.  
  - Deploy interactive dashboards (Tableau/Power BI) for real-time insights.  

---

## 📦 Prerequisites  

Before running this project, ensure you have the following installed:  

- **MySQL Server** → For hosting and running the MavenMovies database  
- **MySQL Workbench / DBeaver / Any SQL Client** → To execute SQL scripts and queries  
- **Git** → To clone the repository  
- **(Optional) Python 3 with Pandas, Matplotlib, Seaborn** → For extended analysis and visualization  
- **(Optional) Tableau / Power BI** → To create interactive dashboards from the SQL output  

---

## ⚙️ How to Run  

Follow these steps to set up and run the MavenMovies SQL project:  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/your-username/mavenmovies-sql-project.git
   cd mavenmovies-sql-project

2. Set Up the Database

- Open MySQL Workbench (or any SQL client).

- Create a new database:

      CREATE DATABASE mavenmovies;
      USE mavenmovies;
  
- Import the schema and data:

      SOURCE create_mavenmovies.sql;
      SOURCE mavenmovies_data.sql;   -- if dataset file provided

3. Run the SQL Queries

 - Open the file MAVENMOVIES_SQL_CODE.sql.

 - Execute queries to generate insights (top movies, rentals, customer analysis, etc.).

4. Explore & Modify

 - Customize queries to explore other business questions.

 - Export results into Excel, Python, Tableau, or Power BI for visualization.

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



  - Active vs inactive customers by store

<img width="398" height="125" alt="image" src="https://github.com/user-attachments/assets/44e5b5ab-dc63-4715-8ed2-6542590baa2c" />


-- Tag the customers as "ACTIVE" OR "INACTIVE"

<img width="1226" height="483" alt="image" src="https://github.com/user-attachments/assets/004977a0-37c6-4365-ad7e-361ee64abdff" />


  - Employee and advisor listings  

<img width="373" height="227" alt="image" src="https://github.com/user-attachments/assets/a0a66c40-d9f2-4ac2-b275-cc2c4e2ec239" />




- **Actor & Film Relationships**  
  - Number of movies per performer

<img width="510" height="440" alt="image" src="https://github.com/user-attachments/assets/9859c421-3f7f-41ec-a226-7af18519576a" />

  - Actor–film associations (which actors appear in which titles)

<img width="437" height="422" alt="image" src="https://github.com/user-attachments/assets/104ecc29-7280-422a-97fd-d345dc7803ec" />

  - Number of actors per movie title

<img width="372" height="397" alt="image" src="https://github.com/user-attachments/assets/24d00945-8859-409a-9b73-fb4852d8049b" />

<hr/>

📜 License

This project is provided for educational and portfolio purposes.


