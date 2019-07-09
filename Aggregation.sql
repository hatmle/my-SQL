/* Average Population
Query the average population for all cities in CITY, rounded down to the nearest integer. */

SELECT ROUND(AVG(POPULATION),0)
FROM CITY;

-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(POPULATION)-MIN(POPULATION)
FROM CITY;
