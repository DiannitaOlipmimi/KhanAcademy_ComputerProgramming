/* Changing rows with UPDATE and DELETE */
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT);
    
CREATE TABLE diary_logs (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    date TEXT,
    content TEXT
    );
    
/* After user submitted their new diary log */
INSERT INTO diary_logs (user_id, date, content) VALUES (1, "2015-04-01",
    "I had a horrible fight with OhNoesGuy and I buried my woes in 3 pounds of dark chocolate.");
    
INSERT INTO diary_logs (user_id, date, content) VALUES (1, "2015-04-02",
    "We made up and now we're best friends forever and we celebrated with a tub of ice cream.");

SELECT * FROM diary_logs;

UPDATE diary_logs SET content = "I had a horrible fight with OhNoesGuy" WHERE id = 1;

SELECT * FROM diary_logs;

DELETE FROM diary_logs WHERE id = 1;

SELECT * FROM diary_logs;

/* Challenge: Dynamic Documents */
/**
Step 1:We've created a database for a documents app, with rows for each document with it's title, content, and author. In this first step, use UPDATE to change the author to 'Jackie Draper' for all rows where it's currently 'Jackie Paper'. Then re-select all the rows to make sure the table changed like you expected.

**/
CREATE table documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT);
    
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

SELECT * FROM documents;

UPDATE documents SET author =  "Jackie Draper"
WHERE author = "Jackie Paper";

SELECT * FROM documents;

/**
Step 2:Now you'll delete a row, being very careful not to delete all the rows. Only delete the row where the title is 'Things I'm Afraid Of'. Then re-select all the rows to make sure the table changed like you expected.
**/
DELETE FROM documents WHERE title = "Things I'm Afraid Of";

SELECT * FROM documents;

/* Altering tables after creation */
/* What we used to originally create the table */
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT);
    
CREATE TABLE diary_logs (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    date TEXT,
    content TEXT
    );
    
/* After user submits a diary log */
INSERT INTO diary_logs (user_id, date, content) VALUES (1, "2015-04-02",
    "OhNoesGuy and I made up and now we're best friends forever and we celebrated with a tub of ice cream.");
    
ALTER TABLE diary_logs ADD emotion TEXT default "unknown";

INSERT INTO diary_logs (user_id, date, content, emotion) VALUES (1, "2015-04-03",
    "We went to Disneyland!", "happy");
    
SELECT * FROM diary_logs;

/* Challenge: Clothing alterations */
/**
Step 1: We've created a database of clothes, and decided we need a price column. Use ALTER to add a 'price' column to the table. Then select all the columns in each row to see what your table looks like now.
**/
CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");
    
ALTER TABLE clothes ADD COLUMN price INTEGER;

SELECT*FROM clothes;

/**
Step 2:Now assign each item a price, using UPDATE - item 1 should be 10 dollars, item 2 should be 20 dollars, item 3 should be 30 dollars. When you're done, do another SELECT of all the rows to check that it worked as expected.
**/
UPDATE clothes SET price = 10
WHERE id = 1;

UPDATE clothes SET price = 20
WHERE id = 2;

UPDATE clothes SET price = 30
WHERE id = 3;

SELECT*FROM clothes;
/**
Step 3:Now insert a new item into the table that has all three attributes filled in, including 'price'. Do one final SELECT of all the rows to check it worked.
**/
INSERT INTO clothes (type, design, price)
VALUES ("T shirt", "cream", 45);

SELECT*FROM clothes;

/*Project: App impersonator */
/**
Think about your favorite apps, and pick one that stores your data- like a game that stores scores, an app that lets you post updates, etc. Now in this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), and write SQL statements that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app.
**/
/* What does the app's SQL look like? */
/* gallery app */

CREATE TABLE gallery (
id INTEGER PRIMARY KEY,
name TEXT,
size INTEGER,
path TEXT
);

INSERT INTO gallery 
VALUES (1, "a", 61, "C:\User"),
(2, "a", 61, "C:\User"),
(3, "a", 61, "C:\User"),
(4, "a", 61, "C:\User"),
(5, "a", 61, "C:\User"),
(6, "a", 61, "C:\User"),
(7, "a", 61, "C:\User"),
(8, "a", 61, "C:\User"),
(9, "a", 61, "C:\User"),
(10, "a", 61, "C:\User"),
(11, "a", 61, "C:\User"),
(12, "a", 61, "C:\User"),
(13, "a", 61, "C:\User"),
(14, "a", 61, "C:\User"),
(15, "a", 61, "C:\User"),
(16, "a", 61, "C:\User")
;

SELECT*FROM gallery;

UPDATE gallery SET name = "b"
WHERE id = 2;

SELECT*FROM gallery;

DELETE FROM gallery
WHERE id = 16;

SELECT*FROM gallery;


