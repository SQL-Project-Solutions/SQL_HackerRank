

-- Solution using ORDER BY:
SELECT TOP 1 city
     , LEN(city) AS min_lenght
  FROM station
 ORDER BY LEN(city) ASC
      , city ASC;

 SELECT TOP 1 city
      , LEN(city) AS max_lenght
   FROM station
  ORDER BY LEN(city) DESC
      , city ASC;

-- Solution using variablles:
DECLARE @min int
SELECT @min = MIN(LEN(city)) FROM station

DECLARE @max int
SELECT @max = MAX(LEN(city)) FROM station

SELECT TOP 1 city
     , LEN(city) AS min_lenght
  FROM station
 WHERE LEN(city) = @min
ORDER BY city ASC;

SELECT TOP 1 city
     , LEN(city) AS max_lenght
  FROM station
 WHERE LEN(city) = @max
ORDER BY city ASC;
