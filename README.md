# KhanAcademy_ComputerProgramming
Computer Programming Course by Khan Academy

## Documentation
###  Creating tables
The "CREATE TABLE" command is used in SQLite to create a new table in a database. It allows you to define the table's name, columns, column types, default values, collation sequence, primary key, constraints, generated column constraint, rowid, and type checking.

#### SQL Data Types
| Data Type      | Description |
| ----------- | ----------- |
| CHAR(size)      |  A FIXED length string with column length from 0 to 255.      |
| VARCHAR(size)   | A VARIABLE length string with maximum string length 65535        |
| INTEGER      | Signed range is from -2147483648 to 2147483647       |
| DATE   | A date. Format: YYYY-MM-DD. The supported range is from '1000-01-01' to '9999-12-31'        |

#### Constraints in Tables
1. **NOT NULL**: This constraint ensures that a query does not insert a NULL value in a column on which the constraint has been created.
2. **UNIQUE**: This constraint ensures that the query inserts only unique values in the column on which the constraint has been created.
3. **CHECK**: When we insert a record in a table, the check constraint ensures that the values that we are inserting in a column must satisfy the condition specified in a CHECK constraint.
4. **DEFAULT**: The DEFAULT constraint inserts a default value. If we do not specify the values for the column on which the default constraint, it inserts the default value specified in the DEFAULT constraints.
5. **PRIMARY KEY**: The Primary key constraint is used to identify each record uniquely. Following are the characteristics of the Primary key
The primary key consists of one or more columns.
The primary key contains unique values and cannot contain a NULL value.
We can create one primary key in a table.
When we create a primary key, a clustered index will be created automatically.
6. **FOREIGN KEY**: The foreign key is a column that creates a link between two tables. The foreign key of any table refers to the Primary Key of another table. A table can have one or more foreign keys. A foreign key constraint prevents the UPDATE and - - DELETE statement that breaks the link between two tables.

- Many data types

```sql
CREATE TABLE customers (
    id INTEGER PRIMARY KEY, 
    name TEXT, 
    age INTEGER, 
    weight REAL);
```
- using primary keys

```sql
CREATE TABLE customers (
    id INTEGER PRIMARY KEY, 
    age INTEGER);
```

### Inserting data
- Inserting data
```sql
INSERT INTO customers VALUES (73, "Brian", 33);
```

- Inserting data for named columns
```sql
INSERT INTO customers (name, age) VALUES ("Brian", 33);
```

### Querying data
- Select everything
```sql
SELECT * FROM customers;
```
- filter with condition
```sql
SELECT * FROM customers 
WHERE age > 21;
```
- filter with multiple condition
```sql
SELECT * FROM customers 
WHERE age < 21 AND state = "NY";
```
- filter with **IN**
```sql
SELECT * FROM customers 
WHERE plan IN ("free", "basic");
```
- select specific columns
```sql
SELECT name, age 
FROM customers;
```
- order result
```sql
SELECT * FROM customers 
WHERE age > 21 
ORDER BY age DESC;
```
- transform with **CASE**
```sql
SELECT name, 
CASE 
    WHEN age > 18 THEN "adult" 
    ELSE "minor" 
    END "type" 
FROM customers;
```

### Aggregating data
| Built=in aggregate functions | Description |
| -----------                  | ----------- |
|  AVG(X)                      | returns the average value of all non-NULL X within a group            |
|  COUNT(X)                    | returns a count of the number of times that X is not NULL in a group            |
|  COUNT(*)                    | returns the total number of rows in the group            |
|  GROUP_CONCAT(X)             | returns a string which is the concatenation of all non-NULL values of X            |
|  GROUP_CONCAT(X,Y)           | returns a string which is the concatenation of all non-NULL values of X and Y. If parameter Y is present then it is used as the separator between instances of X. A comma (",") is used as the separator if Y is omitted. The order of the concatenated elements is arbitrary.           |
|  MAX(X)                      | returns the maximum value of all values in the group            |
|  MIN(X)                      | returns the minimum non-NULL value of all values in the group            |
|  SUM(X)                      | returns the minimum non-NULL value of all values in the group (integer value if all non-NULL inputs are integers)           |
|  TOTAL(X)                    |  returns the minimum non-NULL value of all values in the group (floating point value)           |

- Aggregate function
```sql
SELECT MAX(age) 
FROM customers;
```

- grouping data
```sql
SELECT gender, 
COUNT(*) 
FROM students 
GROUP BY gender;
```

- using **HAVING** with **GROUP BY**
The usage of GROUP BY in a SELECT query allows you to group results, and when combined with an aggregate function, you can use HAVING to filter the grouped rows based on specific conditions.
```sql
SELECT country, COUNT(*) as num_won 
FROM nobel_prizes
GROUP BY country 
    HAVING num_won > 1;
    
```

### Joining related tables

![Alt text](<images/types of join.png>)

1. **INNER JOIN**
2. **LEFT OUTER JOIN**
3. **RIGHT OUTER JOIN**
4. **FULL OUTER JOIN**

[source](https://www.w3schools.com/sql/sql_join.asp)

- Inner join
```sql
SELECT customers.name, orders.item 
FROM customers 
JOIN orders 
ON customers.id = orders.customer_id;
```
- Outer join
```sql
SELECT customers.name, orders.item 
FROM customers 
LEFT OUTER JOIN orders 
ON customers.id = orders.customer_id;
```

### Updating and deleting data
- updating data
```sql
UPDATE customers 
SET age = 33 
WHERE id = 73;
```
- deleting data
```sql
DELETE FROM customers 
WHERE id = 73;
```