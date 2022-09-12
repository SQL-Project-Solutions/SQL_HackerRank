-- Solution using IN:
SELECT DISTINCT city
  FROM station
 WHERE LOWER(LEFT(city,1)) IN('a','e','i','o','u');


-- Solution using LIKE and wildcards:
 SELECT DISTINCT city
  FROM station
 WHERE LOWER(city) LIKE '[aeiou]%';
