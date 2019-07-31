/* How to solve some common problems with MySQL.
Some of the examples use the table shop to hold the price of each article (item number) for certain traders (dealers). 
Supposing that each trader has a single fixed price per article, then (article, dealer) is a primary key for the records.

Start the command-line tool mysql and select a database: */
mysql shop-db

-- To create and populate the table, use these statements:
CREATE TABLE shop (
    article INT UNSIGNED  DEFAULT '0000' NOT NULL,
    dealer  CHAR(20)      DEFAULT ''     NOT NULL,
    price   DECIMAL(16,2) DEFAULT '0.00' NOT NULL,
    PRIMARY KEY(article, dealer));
INSERT INTO shop VALUES
    (1,'A',3.45),(1,'B',3.99),(2,'A',10.99),(3,'B',1.45),
    (3,'C',1.69),(3,'D',1.25),(4,'D',19.95);

-- display table shop
SELECT * FROM shop ORDER BY article;

+---------+--------+-------+
| article | dealer | price |
+---------+--------+-------+
|       1 | A      |  3.45 |
|       1 | B      |  3.99 |
|       2 | A      | 10.99 |
|       3 | B      |  1.45 |
|       3 | C      |  1.69 |
|       3 | D      |  1.25 |
|       4 | D      | 19.95 |
+---------+--------+-------+    

-- 1. What is the highest item number?
SELECT MAX(article) AS article FROM shop;

+---------+
| article |
+---------+
|       4 |
+---------+

-- 2. Find the number, dealer, and price of the most expensive article.
SELECT article, dealer, price
FROM   shop
WHERE  price=(SELECT MAX(price) FROM shop);

+---------+--------+-------+
| article | dealer | price |
+---------+--------+-------+
|    0004 | D      | 19.95 |
+---------+--------+-------+

-- Other solutions are to use a LEFT JOIN or to sort all rows descending by price and get only the first row using the 
-- MySQL-specific LIMIT clause:
SELECT s1.article, s1.dealer, s1.price
FROM shop s1
LEFT JOIN shop s2 ON s1.price < s2.price
WHERE s2.article IS NULL;
SELECT article, dealer, price
FROM shop
ORDER BY price DESC
LIMIT 1;
