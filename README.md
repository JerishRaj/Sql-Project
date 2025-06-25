🍽️ Taste Treasury - SQL Recipe Management Project
Welcome to Taste Treasury! 🧑‍🍳💾 This project is a comprehensive SQL-based recipe management system designed to demonstrate strong database skills including creation, manipulation, querying, and optimization of data in a culinary context. It's your one-stop solution for managing everything from recipe names and categories to ingredients, user reviews, and nutritional information! 😋📊

📚 Project Overview
Taste Treasury simulates a recipe application database, covering all essential SQL operations — perfect for students, developers, and data enthusiasts wanting to learn or showcase practical SQL queries and relational database concepts. 🍜

🔧 Technologies Used
💾 MySQL 

🗃️ Relational Database Design

🛠️ SQL (DDL, DML, DCL)

📂 Key Features & SQL Commands

🏗️ Database Design & Table Creation
Create database: CREATE DATABASE Taste_Treasury;

Create & link tables: Recipes, Categories, Ingredients, Tags, Users, Reviews, and more.

Apply constraints: PRIMARY KEY, FOREIGN KEY, UNIQUE, etc.

✏️ Insert, Update & Delete Operations
Populate tables with meaningful data 📥

Update values dynamically 🔁

Delete data (DELETE, TRUNCATE, DROP) 🚮

🔍 Query Operations
Use of WHERE, BETWEEN, LIKE, REGEXP 📌

Retrieve sorted, filtered, and transformed data using:

ORDER BY, GROUP BY, HAVING, LIMIT

String functions: CONCAT(), SUBSTRING()

Date & Time functions: NOW()

📊 Aggregate Functions
Count, Sum, Average, Max, and Round values 📈

🔄 Joins & Subqueries
Explore relationships via:

INNER JOIN, LEFT JOIN

Subqueries inside IN, NOT IN clauses 🕵️‍♀️

👁️ Views
Create reusable views like RecipeNamesAndCategories for efficient data access 🪟

🧾 Sample Use Cases
🔎 Find recipes with "Cake" or "Chocolate" using pattern matching.

📅 Get current timestamp for recipe tracking.

💡 Retrieve high-rated recipes or top-serving dishes per category.

📌 Search recipes using ingredients or tags.

👥 Count how many reviews each user has written.

🧹 Clean up data using DELETE, TRUNCATE, or even DROP.

🚀 Learning Outcomes
By exploring this project, 

you will:

Understand real-world database modeling with foreign key constraints.

Master SQL queries ranging from beginner to advanced.

Implement powerful filtering, transformation, and aggregation operations.

Explore database maintenance techniques like creating Views and Joins.

📸 Sneak Peek

-- Find all recipes that include "Sugar" as an ingredient

SELECT recipe_name
FROM Recipes
WHERE recipe_id IN (
    SELECT recipe_id
    FROM Recipe_Ingredients
    WHERE ingredient_id IN (
        SELECT ingredient_id
        FROM Ingredients
        WHERE ingredient_name LIKE '%Sugar%'
    )
);

📝 How to Use
Clone the repository:

git clone https://github.com/JerishRaj/taste_treasury.git

Open in your SQL environment (like MySQL Workbench).

Run the SQL scripts step-by-step or in batches.

Modify or extend the database to suit your custom use-case!

🧠 Inspiration
This project is inspired by the idea of combining food and tech to build meaningful applications. 🍲✨ Perfect for portfolio building, resume enhancement, or educational demos!

📬 Feedback & Contributions
Have ideas or improvements? Feel free to fork and contribute 🤝.
Open to collaborations and feature enhancements!

🏁 Final Words
Enjoy your journey through the Taste Treasury 🍱📁 — where database logic meets delicious data!
