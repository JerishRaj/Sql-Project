# 1. Write a query to create a database named Taste_Treasury (Database)

create database if not exists Taste_Treasury;

as 

create database Taste_Treasury;

# 2. Write a query to redirect to database (Redirect Database)

use Taste_Treasury;

# 3. Write a query to create tables under the database Taste_Treasury (Create Tables)

create table Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) UNIQUE NOT NULL
);


create table Recipes (
    recipe_id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_name VARCHAR(100) NOT NULL,
    instructions TEXT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

# 4. Write a query to alter the structure of table (Alter Command)

alter table tags 
modify tag_name varchar(30);

# 5. Write a query to insert values into the table (Insert Command)

insert into Recipes (recipe_name, instructions, category_id) values 
('Spaghetti Aglio e Olio', 'Cook pasta. In a pan, heat olive oil, add garlic, and sauté. Toss pasta with oil and garlic, add basil.', 1),
('Chocolate Cake', 'Mix flour, sugar, cocoa, and eggs. Bake at 350°F for 30 minutes.', 2);

insert into Recipe_Ingredients (recipe_id, ingredient_id, quantity) values 
(1, 5, '200g'), (1, 3, '2 cloves'), (2, 8, '1 cup'), (2, 7, '1 cup');


# 6. Write a query to update values into the table (Update Command)

update categories set category_name = 'Starters' 
where category_id = 5;


# 7. Write a query to find the IDs of all recipes that require more than 100 grams of the ingredient with ingredient_id = 2. (Operators)


select recipe_id
from Recipe_Ingredients
where ingredient_id = 2 AND quantity > '100g';

select recipe_name
from Nutrition
where calories BETWEEN 200 AND 500;


# 8. Write a query to find all recipes that have "Cake" in their name. (Like Operator)

select recipe_name 
from Recipes 
where recipe_name LIKE '%Cake%';

# 9.  Write a query to find all recipes that have either "Chocolate" or "Vanilla" in their name. (Regular Expression)

select recipe_name 
from Recipes 
where recipe_name REGEXP 'Chocolate|Vanilla';

# 10. Write a query to retrieve all recipe names from the Recipes table, sorted in ascending order. (Order by)

select recipe_name 
from Recipes 
order by recipe_name ASC;

# 11. Write a query to retrieve all recipe names from the Recipes table along with the first five characters of each recipe name, labeled as "short_name". (Single Row Function)

select recipe_name, SUBSTRING(recipe_name, 1, 5) AS short_name
from Recipes;

Get the current date and time

select NOW() AS current_datetime;

Concatenate the recipe name with a string (e.g., " - Delicious")

select CONCAT(recipe_name, ' - Delicious') AS full_description
from Recipes;


# 12. Write a query Count the number of recipes that have a rating greater than 4 (Aggregate Function)

SELECT COUNT(*) AS high_rated_recipes
FROM Recipes
WHERE rating > 4;

Round the average rating to the nearest whole number

select ROUND(AVG(rating)) AS rounded_average_rating
from Recipes;

# 13. Write a query to retrieve all recipe names from the Recipes table and label the column as "name". (Column Alias)

select recipe_name AS name 
from Recipes; 

# 14. Write a query Calculate the total calories for recipes in each category (Group by)

select category_id, SUM(calories) AS total_calories
from Recipes
group by category_id;

# 15. Find the maximum number of servings for recipes in each category, but only include categories where the maximum servings are greater than 10 (Having Clause)

select category_id, MAX(servings) AS max_servings
from Recipes
group by category_id
having MAX(servings) > 10;

# 16. Get recipes that include "Sugar" in their ingredients (Subquery)

select recipe_name
from Recipes
where recipe_id IN (
    select recipe_id
    from Recipe_Ingredients
    where ingredient_id IN (
        select ingredient_id
        from Ingredients
        where ingredient_name LIKE '%Sugar%'
    )
);

# 17. Get recipes that have not been reviewed (Subquery)

SELECT recipe_name
FROM Recipes
WHERE recipe_id NOT IN (
    SELECT recipe_id
    FROM Reviews
);

# 18. Retrieve all tags associated with the recipe "Spaghetti Aglio e Olio" (Joins)

SELECT t.tag_name
FROM Tags t
JOIN Recipe_Tags rt ON t.tag_id = rt.tag_id
JOIN Recipes r ON rt.recipe_id = r.recipe_id
WHERE r.recipe_name = 'Spaghetti Aglio e Olio';

# 19. Count how many reviews each user has written (Left Join)

SELECT u.username, COUNT(rv.review_id) AS review_count
FROM Users u
LEFT JOIN Reviews rv ON u.user_id = rv.user_id
GROUP BY u.user_id;

# 20. Create a view to show all recipe names and their corresponding categories (View Tables)

CREATE VIEW RecipeNamesAndCategories AS
SELECT recipe_name, category_id
FROM Recipes;


