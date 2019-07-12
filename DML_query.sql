-- DML – Data Manipulation Language – Insert, Update, Delete, Truncate

--1. Insert – Add data to an existing table
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

-- all the columns of the table,
INSERT INTO table_name
VALUES (value1, value2, value3, ...);

-- i.e.
Insert into TableA 
values (1,’Hello’,’World’);

--2. Update – Change the value in a row
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- i.e.
Update TableA
Set Column3 = ‘Univierse’
Where Column3 = ‘World’;

--3. Delete – Remove rows of data from a table
DELETE FROM table_name 
WHERE condition;

-- all rows
DELETE FROM table_name;

-- i.e
Delete
From TableA
Where Column1 = 1;

--4. Truncate – Remove ALL rows of data from a table (May be considered DDL by some)
-- delete the data inside a table, but not the table itself.
TRUNCATE TABLE table_name;

-- i.e
Truncate Table
TableA;
