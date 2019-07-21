-- DDL – Data Definition Language – Create, Alter, Drop
-- 1. Create – Create or define an object in SQL Server
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);

-- EX
Create Table TableA
(Column1 int, Column2 varchar(20), Column3 varchar(20));

-- 2. Alter – Modify or change the table structure and columns
ALTER TABLE table_name
ADD column_name datatype;

-- EX
Alter Table TableA
Add Column4 nvarchar(50);

ALTER TABLE table_name
DROP COLUMN column_name;

-- EX
Alter Table TableA
Drop Column Column4;

-- For SQL Server
ALTER TABLE table_name
ALTER COLUMN column_name datatype;

-- For My SQL / Oracle (prior version 10G):
ALTER TABLE table_name
MODIFY COLUMN column_name datatype;

-- For Oracle 10G
ALTER TABLE table_name
MODIFY column_name datatype;

Alter Table TableA
Alter Column Column3 varchar(200);

-- 3. Drop – Remove an object from the database
DROP TABLE table_name;

--EX
Drop table
TableA;

Drop database
Adventureworks2012;
