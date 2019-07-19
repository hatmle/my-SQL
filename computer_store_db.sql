-- There are two tables (Manufacturers and Products)

Creation Code for table
CREATE TABLE Manufacturers ( Code INTEGER PRIMARY KEY NOT NULL,
Name TEXT NOT NULL
);

CREATE TABLE Products ( Code INTEGER PRIMARY KEY NOT NULL,
Name TEXT NOT NULL ,
Price REAL NOT NULL ,
Manufacturer INTEGER NOT NULL
CONSTRAINT fk_Manufacturers_Code REFERENCES MANUFACTURERS(Code)
);

-- EXERCISES
/* 1. Select the names of all the products in the store. */

SELECT Name 
FROM Products;

/* 2. Select the names and the prices of all the products in the store. */

SELECT Name, Price 
FROM Products;

/* 3. Select the name of the products with a price less than or equal to $200. */

SELECT Name 
FROM Products WHERE Price <= 200;

/* 4. Select all the products with a price between $60 and $120. */

SELECT * 
FROM Products
WHERE Price >= 60 
AND Price <= 120;
 
SELECT * 
FROM Products
WHERE Price BETWEEN 60 AND 120;

/* 5. Select the name and price in cents (i.e., the price must be multiplied by 100). */

SELECT Name, Price * 100 
FROM Products;
 

SELECT Name, Price * 100 AS PriceCents 
FROM Products;

/* 6. Compute the average price of all the products. */

SELECT AVG(Price) 
FROM Products;

/* 7. Compute the average price of all products with manufacturer code equal to 2. */

SELECT AVG(Price) 
FROM Products 
WHERE Manufacturer=2;

/* 8. Compute the number of products with a price larger than or equal to $180. */
 
SELECT COUNT(*) 
FROM Products 
WHERE Price >= 180;

/* 9. Select the name and price of all products with a price larger than or equal to $180, 
and sort first by price (in descending order), and then by name (in ascending order). */

SELECT Name, Price 
FROM Products
WHERE Price >= 180
ORDER BY Price DESC, Name;

/* 10. Select all the data from the products, including all the data for each product's manufacturer. */

SELECT * 
FROM Products, Manufacturers
WHERE Products.Manufacturer = Manufacturers.Code;

SELECT *
FROM Products 
INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code;

/* 11. Select the product name, price, and manufacturer name of all the products. */

SELECT Products.Name, Price, Manufacturers.Name
FROM Products, Manufacturers
WHERE Products.Manufacturer = Manufacturers.Code;

SELECT Products.Name, Price, Manufacturers.Name
FROM Products 
INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code;

/* 12. Select the average price of each manufacturer's products, showing only the manufacturer's code. */

SELECT AVG(Price), Manufacturer
FROM Products
GROUP BY Manufacturer;

/* 13. Select the average price of each manufacturer's products, showing the manufacturer's name. */

SELECT AVG(Price), Manufacturers.Name
FROM Products, Manufacturers
WHERE Products.Manufacturer = Manufacturers.Code
GROUP BY Manufacturers.Name;
 
SELECT AVG(Price), Manufacturers.Name
FROM Products 
INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code
GROUP BY Manufacturers.Name;

/* 14. Select the names of manufacturer whose products have an average price larger than or equal to $150. */

SELECT AVG(Price), Manufacturers.Name
FROM Products, Manufacturers
WHERE Products.Manufacturer = Manufacturers.Code
GROUP BY Manufacturers.Name
HAVING AVG(Price) >= 150;
 
SELECT AVG(Price), Manufacturers.Name
FROM Products 
INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code
GROUP BY Manufacturers.Name
HAVING AVG(Price) >= 150;


/* 15. Select the name and price of the cheapest product. */

SELECT name, price
FROM Products
ORDER BY price ASC
LIMIT 1

SELECT Name, Price
FROM Products
WHERE Price = (  SELECT MIN(Price) 
		 FROM Products );

/* 16. Select the name of each manufacturer along with the name and price of its most expensive product. */


SELECT A.Name, A.Price, F.Name
FROM Products A, Manufacturers F
WHERE A.Manufacturer = F.Code
AND A.Price =
     (   SELECT MAX(A.Price)
         FROM Products A
         WHERE A.Manufacturer = F.Code );
 
SELECT A.Name, A.Price, F.Name
FROM Products A 
INNER JOIN Manufacturers F ON A.Manufacturer = F.Code
AND A.Price =
     (
       SELECT MAX(A.Price)
       FROM Products A
       WHERE A.Manufacturer = F.Code );

/* 17. Add a new product: Loudspeakers, $70, manufacturer 2. */

INSERT INTO Products( Code, Name , Price , Manufacturer)
VALUES ( 11, 'Loudspeakers' , 70 , 2 );

/* 18. Update the name of product 8 to "Laser Printer". */

UPDATE Products
SET Name = 'Laser Printer'
WHERE Code = 8;


/* 19. Apply a 10% discount to all products. */

UPDATE Products
SET Price = Price - (Price * 0.1);

/* 20. Apply a 10% discount to all products with a price larger than or equal to $120. */

UPDATE Products
SET Price = Price - (Price * 0.1)
WHERE Price >= 120;
