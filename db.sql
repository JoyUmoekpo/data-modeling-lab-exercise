CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    recipe_id INT, 
    grocerylist_id INT,
    occasions_id INT
);

CREATE TABLE ingredients (
    ingredients_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    measurements FLOAT(5)
);

CREATE TABLE recipes (
    recipe_id REFERENCES users(recipe_id),
    recipe_name VARCHAR(50) NOT NULL,
    ingredients_id INT NOT NULL REFERENCES ingredients(ingredients_id), 
    instructions VARCHAR(50) NOT NULL,
    prep_time INT,
    security VARCHAR(50) NOT NULL
);

-- CREATE TABLE ()
-- CREATE TABLE ()
-- CREATE TABLE ()
-- CREATE TABLE ()

-- SELECT * FROM users;
-- SELECT * FROM recipes;
-- SELECT * FROM ingredients

-- DROP TABLE users;
-- DROP TABLE recipes;
-- DROP TABLE ingredients