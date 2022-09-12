SELECT b.continent
     , CAST(AVG(a.population) AS int)
  FROM city a
  JOIN country b
    ON a.countrycode = b.code
 GROUP BY b.continent;
