SELECT *
FROM names
LIMIT 5
-- 1. How many rows are in the names table?
SELECT COUNT(*)
FROM names
-- answer: 1957046

-- 2. How many total registered people appear in the dataset?
SELECT COUNT(*)
FROM names
WHERE num_registered IS NOT NULL
-- answer:1957046

-- 3. Which name had the most appearances in a single year in the dataset?
-- SELECT name,COUNT(name)
-- FROM names
-- GROUP BY name
-- ORDER BY COUNT(name) DESC



-- 4. What range of years are included?
-- SELECT name,year
-- FROM names

-- GROUP BY year

-- 5. What year has the largest number of registrations?
SELECT year, COUNT(num_registered)
FROM names
GROUP BY year
ORDER BY COUNT(num_registered) DESC
-- answer: 2008

-- 6. How many different (distinct) names are contained in the dataset?
SELECT COUNT(DISTINCT name)
FROM names
-- answer:98400


-- 7. Are there more males or more females registered?
SELECT gender, COUNT(gender) AS count
FROM names
WHERE gender IN('M','F')
GROUP BY gender
-- answer: more Females


-- 8. What are the most popular male and female names overall (i.e., the most total registrations)?
SELECT name,COUNT(name)
FROM names
GROUP BY name
ORDER BY COUNT(name) DESC

-- answer: most popular names
-- "Lee"
-- "Joseph"
-- "Sidney"
-- "Jean"
-- "Marion"
-- "William"
-- "Leslie"
-- "Jesse"
-- "Ollie"
-- "Francis"
-- "John"
-- "Jessie"
-- "James"
-- "Johnnie"
-- "Tommie"
-- 9. What are the most popular boy and girl names of the first decade of the 2000s (2000 - 2009)?

-- 10. Which year had the most variety in names (i.e. had the most distinct names)?



-- 11. What is the most popular name for a girl that starts with the letter X?

-- 12. How many distinct names appear that start with a 'Q', but whose second letter is not 'u'?

-- 13. Which is the more popular spelling between "Stephen" and "Steven"? Use a single query to answer this question.

-- 14. What percentage of names are "unisex" - that is what percentage of names have been used both for boys and for girls?

-- 15. How many names have made an appearance in every single year since 1880?

-- 16. How many names have only appeared in one year?

-- 17. How many names only appeared in the 1950s?

-- 18. How many names made their first appearance in the 2010s?

-- 19. Find the names that have not be used in the longest.

-- 20. Come up with a question that you would like to answer using this dataset. Then write a query to answer this question.