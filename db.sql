CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE ingredients (
    ingredients_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    measurements FLOAT(5)
);

CREATE TABLE recipes (
    recipe_id INT SERIAL PRIMARY KEY,
    recipe_name VARCHAR(50) NOT NULL, 
    instructions VARCHAR(50) NOT NULL,
    prep_time INT,
    is_private BOOLEAN
);

-- NEED A MIDDLE TABLE FOR MANY TO MANY RELATIONSHIP TABLES
-- MANY TO MANY TABLES ARE ACTUALLY TWO ONE TO ONE RELATIONSHIPS
--  STORES RELATIONSHIP BETWEEN RECIPES AND INGREDIENTS
CREATE TABLE recipe_ingredients (
    recipe_ingredients_id SERIAL PRIMARY KEY,
    recipe_id REFERENCES recipes(recipe_id),
    ingredients_id INT REFERENCES ingredients(ingredients_id)
);

CREATE TABLE recipe_occasions (
    recipe_occasions_id SERIAL PRIMARY KEY,
    recipe_id REFERENCES recipes(recipe_id),
    occasions_id REFERENCES users(occasions_id)
);

CREATE TABLE occasions (
    occasions_id REFERENCES users(occasions_id),
    name VARCHAR(50) NOT NULL,
    date DATE,
    time TIME,
    recipe_id REFERENCES users(recipe_id)
)

CREATE TABLE grocery_list (
    grocerylist_id REFERENCES users(grocerylist_id)
    ingredient_id REFERENCES ingredients(ingredients_id)
)

-- SELECT * FROM users;
-- SELECT * FROM recipes;
-- SELECT * FROM ingredients

-- DROP TABLE users;
-- DROP TABLE recipes;
-- DROP TABLE ingredients