-- Solution using NOT IN:
SELECT DISTINCT city
  FROM station
 WHERE LOWER(RIGHT(city,1)) NOT IN('a','e','i','o','u')
    OR LOWER(LEFT(city,1)) NOT IN('a','e','i','o','u');

--Solution using NOT LIKE and wildcards:
SELECT DISTINCT city
  FROM station
 WHERE LOWER(city) NOT LIKE '[aeiou]%[aeiou]';
