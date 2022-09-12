SELECT a.name
  FROM city a
  JOIN country b
    ON a.countrycode = b.code
 WHERE b.continent = 'Africa';
