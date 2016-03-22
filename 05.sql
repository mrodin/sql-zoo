-- 01. Show the total population of the world.

SELECT SUM(population)
FROM world;

-- 02. List all the continents - just once each.

SELECT DISTINCT continent
FROM world;

-- 03. Give the total GDP of Africa

SELECT SUM(gdp)
FROM world
WHERE continent = 'Africa';

-- 04. How many countries have an area of at least 1000000

SELECT COUNT(name)
FROM world
WHERE area >= 1000000;

-- 05. What is the total population of ('France','Germany','Spain')

SELECT SUM(population)
FROM world
WHERE name IN ('France', 'Germany', 'Spain');

-- 06. For each continent show the continent and number of countries.

SELECT continent, COUNT(name)
FROM world
GROUP BY continent;

-- 07. For each continent show the continent and number of countries with
-- populations of at least 10 million.

SELECT continent, COUNT(name)
FROM world
WHERE population >= 10000000
GROUP BY continent;

-- 08. List the continents that have a total population of at least 100 million.

SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000;
