# TASK 1
SELECT COUNT(*) AS number_cities
FROM city
WHERE CountryCode = 'USA';
# TASK 2
SELECT population,LifeExpectancy
FROM country
WHERE name = 'Argentina';
# TASK 3
SELECT Code,Name,LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;
# TASK 4
SELECT *
FROM city
WHERE Name LIKE 'F%'
LIMIT 25;
# TASK 5
SELECT ID,Name,Population
FROM city
LIMIT 10;
# TASK 6
SELECT *
FROM city
WHERE Population > 2000000;
# TASK 7
SELECT *
FROM city
WHERE Name LIKE 'Be%';
# TASK 8
SELECT *
FROM city
WHERE Population BETWEEN 500000 AND 1000000;
# TASK 9
SELECT *
FROM city
ORDER BY Population ASC
LIMIT 1;
# TASK 10
SELECT Name As capital
FROM city
WHERE ID = (SELECT capital FROM country WHERE Code = 'ESP');
# TASK 11
SELECT DISTINCT countrylanguage.language AS caribbean_languages
FROM countrylanguage
JOIN country
ON countrylanguage.CountryCode=country.Code
WHERE Region = 'Caribbean';
# TASK 12
SELECT city.Name AS european_cities
FROM city
JOIN country
ON city.CountryCode=country.Code
WHERE Continent = 'Europe';
# TASK 13
-- country - primary key - Code;
-- city - primary key - ID; foreign key - CountryCode;
-- countrylanguage - primary key - Language; foreign key - CountryCode.