/* MySQL

/* Revising the Select Query I
Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA. */

SELECT * 
FROM CITY
WHERE COUNTRYCODE ='USA'
AND POPULATION > 100000;

/* Revising the Select Query II
Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA. */

select NAME
from CITY
where POPULATION > 120000
and COUNTRYCODE = 'USA';

/* Weather Observation Station 6
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.*/

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) IN ('A','E','I','O','U');

/* Weather Observation Station 8
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. 
Your result cannot contain duplicates. */

SELECT DISTINCT CITY 
FROM STATION
WHERE LEFT(CITY,1) IN ('A','O','E','U','I')
AND RIGHT(CITY,1) IN ('A','O','E','U','I');
