-- Q1:SELECT 
    CountryCode, 
    COUNT(*) AS city_count
FROM city
GROUP BY CountryCode;

-- Q2:SELECT 
    Continent, 
    COUNT(*) AS country_count
FROM country
GROUP BY Continent
HAVING COUNT(*) > 30;

-- Q3:SELECT 
    Region, 
    SUM(Population) AS total_population
FROM country
GROUP BY Region
HAVING SUM(Population) > 200000000;

-- Q4:SELECT 
    Continent, 
    AVG(GNP) AS avg_gnp
FROM country
GROUP BY Continent
ORDER BY avg_gnp DESC
LIMIT 5;

-- Q5:SELECT 
    c.Continent, 
    COUNT(DISTINCT cl.Language) AS total_official_languages
FROM country c
JOIN countrylanguage cl 
    ON c.Code = cl.CountryCode
WHERE cl.IsOfficial = 'T'
GROUP BY c.Continent;

-- Q6:SELECT 
    Continent,
    MAX(GNP) AS max_gnp,
    MIN(GNP) AS min_gnp
FROM country
GROUP BY Continent;

-- Q7:SELECT 
    c.Name AS country_name,
    AVG(ci.Population) AS avg_city_population
FROM country c
JOIN city ci 
    ON c.Code = ci.CountryCode
GROUP BY c.Name
ORDER BY avg_city_population DESC
LIMIT 1;

-- Q8:SELECT 
    c.Continent,
    AVG(ci.Population) AS avg_city_population
FROM country c
JOIN city ci 
    ON c.Code = ci.CountryCode
GROUP BY c.Continent
HAVING AVG(ci.Population) > 200000;

-- Q9:SELECT 
    Continent,
    SUM(Population) AS total_population,
    AVG(LifeExpectancy) AS avg_life_expectancy
FROM country
GROUP BY Continent
ORDER BY avg_life_expectancy DESC;

-- Q10:SELECT 
    Continent,
    AVG(LifeExpectancy) AS avg_life_expectancy,
    SUM(Population) AS total_population
FROM country
GROUP BY Continent
HAVING SUM(Population) > 200000000
ORDER BY avg_life_expectancy DESC
LIMIT 3;