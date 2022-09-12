-- Solution using INL
SELECT DISTINCT city
  FROM station
 WHERE LOWER(RIGHT(city,1)) IN('a','e','i','o','u');


-- Solution using LIKE and wildcards:
SELECT DISTINCT city
  FROM station
 WHERE LOWER(city) LIKE '%[aeiou]';
