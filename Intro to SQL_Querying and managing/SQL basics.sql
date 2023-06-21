/* Creating a table and inserting data */

/** Grocery list: 
Bananas (4)
Peanut Butter (1)
Dark Chocolate Bars (2)
**/

CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER );

INSERT INTO groceries VALUES (1, "Bananas", 4);
INSERT INTO groceries VALUES (2, "Peanut Butter", 1);
INSERT INTO groceries VALUES (3, "Dark chocolate bars", 2);
SELECT * FROM groceries;

/* Challenge: Book list database */
INSERT INTO book VALUES(1, "Crooked House", 4);
INSERT INTO book VALUES(2, "Death in the Clouds", 5);
INSERT INTO book VALUES(3, "Death on The Nile", 4.7);
INSERT INTO book VALUES(4, "The ABC Murders", 4.3);

/* Querying the table */
CREATE TABLE groceries (
    id INTEGER PRIMARY KEY, 
    name TEXT, 
    quantity INTEGER, 
    aisle INTEGER);

INSERT INTO groceries VALUES (1, "Bananas", 4, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 6, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 1, 4);

SELECT * FROM groceries 
WHERE aisle > 5 
ORDER BY aisle;

/* Challenge: Box Office hits database */
/**
This database contains an incomplete list of box office hits and their release year. In this challenge, you're going to get the results back out of the database in different ways! In this first step, just select all the movies.
**/

SELECT *
FROM movies;

SELECT *
FROM movies
WHERE release_year > 2000
ORDER BY release_year;

/* Aggregating data */
CREATE TABLE groceries (
    id INTEGER PRIMARY KEY, 
    name TEXT, 
    quantity INTEGER, 
    aisle INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 56, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 6, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 1, 4);

SELECT aisle, SUM(quantity) 
FROM groceries 
GROUP BY aisle;

/* Challenge: TODO list database stats */
CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);


/**
step 1:Here's a table containing a TODO list with the number of minutes it will take to complete each item. Insert another item to your todo list with the estimated minutes it will take.
**/
INSERT INTO todo_list VALUES (4, "study", 25);

/**
Select the SUM of minutes it will take to do all of the items on your TODO list. You should only have one SELECT statement.
**/
SELECT SUM(minutes) 
FROM todo_list;

/* Project: Design a store database */
/**
Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.
**/

CREATE TABLE store (
id INTEGER PRIMARY KEY, 
product_name TEXT,
number_item INTEGER,
price INTEGER,
notes TEXT);

INSERT INTO store VALUES(1, "a", 24, 3000, "a");
INSERT INTO store VALUES(2, "b", 0, 3000, "a");
INSERT INTO store VALUES(3, "c", 2, 3000, "a");
INSERT INTO store VALUES(4, "d", 5, 3000, "a");
INSERT INTO store VALUES(5, "e", 3, 3000, "a");
INSERT INTO store VALUES(6, "f", 9, 3000, "a");
INSERT INTO store VALUES(7, "g", 8, 3000, "a");
INSERT INTO store VALUES(8, "h", 1, 3000, "a");
INSERT INTO store VALUES(9, "i", 21, 3000, "a");
INSERT INTO store VALUES(10, "j", 4, 3000, "a");
INSERT INTO store VALUES(11, "k", 6, 3000, "a");
INSERT INTO store VALUES(12, "l", 0, 3000, "a");
INSERT INTO store VALUES(13, "m", 1, 3000, "a");
INSERT INTO store VALUES(14, "n", 8, 3000, "a");
INSERT INTO store VALUES(15, "o", 6, 3000, "a");

SELECT SUM(number_item)
FROM store
ORDER BY price;
