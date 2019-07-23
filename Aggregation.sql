/* Average Population
Query the average population for all cities in CITY, rounded down to the nearest integer. */

CREATE TABLE CITY 
(ID NUMBER, 
NAME VARCHAR2(17),
COUNTRYCODE VARCHAR2(3),
DISTRICT VARCHAR2(20),
POPULATION NUMBER);

SELECT ROUND(AVG(POPULATION),0)
FROM CITY;

-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(POPULATION)-MIN(POPULATION)
FROM CITY;

-- Query a count of the number of cities in CITY having a Population larger than 100,000.
SELECT COUNT(*)
FROM CITY
WHERE POPULATION > 100000;
