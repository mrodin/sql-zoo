-- 01. List the films where the yr is 1962 [Show id, title]

SELECT id, title
FROM movie
WHERE yr = 1962;

-- 02. Give year of 'Citizen Kane'.

SELECT yr
FROM movie
WHERE title = 'Citizen Kane';

-- 03. List all of the Star Trek movies, include the id, title and yr (all of
-- these movies include the words Star Trek in the title). Order results by year.

SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%';

-- 04. What are the titles of the films with id 11768, 11955, 21191

SELECT title
FROM movie
WHERE id IN ('11768', '11955', '21191');

-- 05. What id number does the actress 'Glenn Close' have?

SELECT id
FROM actor
WHERE name = 'Glenn Close';

-- 06. What is the id of the film 'Casablanca'

SELECT id
FROM movie
WHERE title = 'Casablanca';

-- 07. Obtain the cast list for 'Casablanca'.

SELECT name
FROM actor JOIN casting ON (id = actorid)
WHERE movieid = 11768;

-- 08. Obtain the cast list for the film 'Alien'

SELECT name
FROM movie m JOIN casting c ON (m.id = c.movieid) JOIN actor a ON (c.actorid = a.id)
WHERE title = 'Alien';

-- 09. List the films in which 'Harrison Ford' has appeared

SELECT title
FROM movie m JOIN casting c ON (m.id = c.movieid) JOIN actor a ON (c.actorid = a.id)
WHERE name = 'Harrison Ford';

-- 10. List the films where 'Harrison Ford' has appeared - but not in the starring role.

SELECT title
FROM movie m JOIN casting c ON (m.id = c.movieid) JOIN actor a ON (c.actorid = a.id)
WHERE name = 'Harrison Ford'
 AND ord != 1;

-- 11. List the films together with the leading star for all 1962 films.

SELECT title, name
FROM movie m JOIN casting c ON (m.id = c.movieid) JOIN actor a ON (c.actorid = a.id)
WHERE yr = 1962
 AND ord = 1;
