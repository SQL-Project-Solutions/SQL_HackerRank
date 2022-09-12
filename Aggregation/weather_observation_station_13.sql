SELECT CAST(SUM(lat_n) AS numeric (36,4))
  FROM station
 WHERE lat_n BETWEEN 38.7880 AND 137.2345;
