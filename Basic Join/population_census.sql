SELECT SUM(a.population)
  FROM city a
  JOIN country b
    ON a.countrycode = b.code
 WHERE b.continent = 'Asia';
