/* Difference between WHERE, GROUP BY and HAVING clause
All these three Clauses are a part/extensions of a SQL Query, are used to Filter, Group & re-Filter rows returned by a Query respectively,
and are optional. Being Optional they play very crucial role while Querying a database.
1. **WHERE** clause specifies search conditions for the rows returned by the Query and limits rows to a meaningful set.
2. **GROUP BY** clause works on the rows returned by the previous step #1. This clause summaries identical rows into a single/distinct 
group and returns a single row with the summary for each group, by using appropriate Aggregate function in the SELECT list, like COUNT(), 
SUM(), MIN(), MAX(), AVG(), etc.
3. **HAVING** clause works as a Filter on top of the Grouped rows returned by the previous step #2. This clause cannot be replaced by a 
WHERE clause and vice-versa.

- Using WHERE clause: First of all they will need to apply filter on above ~32k rows and get list of Orders that were made last year 
(i.e. in 2014) to limit the row-set, like */
SELECT * 
FROM [Sales].[SalesOrderHeader]
WHERE OrderDate >= '2014-01-01 00:00:00.000'
AND OrderDate < '2015-01-01 00:00:00.000'

-- Using GROUP BY clause: Here we need to group the Customers with their number of Orders, like:
SELECT CustomerID, COUNT(*) AS OrderNos
FROM [Sales].[SalesOrderHeader]
WHERE OrderDate >= '2014-01-01 00:00:00.000'
AND OrderDate < '2015-01-01 00:00:00.000'
GROUP BY CustomerID

-- USING HAVING clause: This will works on top of GROUP BY clause to filter the grouped records onCOUNT(*) AS OrderNos column values (like a 
-- WHERE clause), like:
SELECT CustomerID, COUNT(*) AS OrderNos
FROM [Sales].[SalesOrderHeader]
WHERE OrderDate >= '2014-01-01 00:00:00.000'
AND OrderDate < '2015-01-01 00:00:00.000'
GROUP BY CustomerID
HAVING COUNT(*) > 10
