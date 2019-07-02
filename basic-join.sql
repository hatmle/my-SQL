/* Asian Population
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns. 

CITY tables:
id int(11) YES NULL 
name varchar(19) YES NULL 
countrycode varchar(3) YES NULL 
district varchar(19) YES NULL 
population int(11) YES NULL 

COUNTRY tables:
code varchar(3) YES NULL 
name varchar(44) YES NULL 
continent varchar(13) YES NULL 
region varchar(25) YES NULL 
surfacearea decimal(10,0) YES NULL 
indepyear varchar(4) YES NULL 
population int(11) YES NULL 
lifeexpectancy varchar(4) YES NULL 
gnp decimal(10,0) YES NULL 
gnpold varchar(9) YES NULL 
localname varchar(44) YES NULL 
governmentform varchar(44) YES NULL 
headofstate varchar(32) YES NULL 
capital varchar(4) YES NULL 
code2 varchar(2) YES NULL
*/

SELECT SUM(CITY.POPULATION)
FROM CITY
LEFT JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.CONTINENT = 'Asia';

/* African Cities
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/
SELECT CITY.NAME
FROM CITY
LEFT JOIN COUNTRY 
ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.CONTINENT = 'Africa';

/* Average Population of Each Continent
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and 
their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/
SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM COUNTRY
INNER JOIN CITY
ON CITY.CountryCode = COUNTRY.Code
GROUP BY COUNTRY.CONTINENT;
