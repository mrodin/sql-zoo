-- 01. Modify the query to show the population of Germany

SELECT population FROM world
WHERE name = 'Germany';

-- 02. Modify the query to show the name and per capita gdp: gdp/population for 
-- each country where the area is over 5,000,000 km2

SELECT name, gdp/population FROM world
WHERE area > 5000000;

-- 03. Show the name and the population for 'Ireland', 'Iceland' and 'Denmark'.

SELECT name, population FROM world
WHERE name IN ('Ireland', 'Iceland', 'Denmark');

-- 04. Modify the query to show the country and the area for countries with an
-- area between 200,000 and 250,000.

SELECT name, area FROM world
WHERE area BETWEEN 200000 AND 250000;
