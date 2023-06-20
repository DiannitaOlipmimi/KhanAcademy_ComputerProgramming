# KhanAcademy_ComputerProgramming
Computer Programming Course by Khan Academy

## Documentation
###  Creating tables


- Many data types
The "CREATE TABLE" command is used in SQLite to create a new table in a database. It allows you to define the table's name, columns, column types, default values, collation sequence, primary key, constraints, generated column constraint, rowid, and type checking.

When using the command, you must provide a name for the new table. Table names starting with "sqlite_" are reserved for internal use and cannot be used. The table can be created in the main database, the temp database, or any attached database by specifying the appropriate database name. If no schema name is specified, the table is created in the main database.

If a table, index, or view with the same name already exists in the specified database, it is usually an error to create a new table with that name. However, if the "IF NOT EXISTS" clause is used, the CREATE TABLE command will have no effect and no error message will be returned if a table or view with the same name already exists. However, an error will still be returned if the table cannot be created due to an existing index, even with the "IF NOT EXISTS" clause.

The name of each column is the same as the name of the corresponding column in the result set of the SELECT statement. The declared type of each column is determined by the expression affinity of the corresponding expression in the result set of the SELECT statement, as follows:

| expression affinity      | column Declared Type |
| ----------- | ----------- |
| TEXT      | "TEXT"       |
| NUMERIC   | "NUM"        |
| INTEGER      | "INT"       |
| REAL   | "REAL"        |
| BLOB      | ""       |

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
-Inserting data
```sql
INSERT INTO customers VALUES (73, "Brian", 33);
```

-Inserting data for named columns
```sql
INSERT INTO customers (name, age) VALUES ("Brian", 33);
```