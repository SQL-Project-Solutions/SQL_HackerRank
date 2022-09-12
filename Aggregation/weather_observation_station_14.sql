SELECT CAST(MAX(lat_n) AS numeric (36,4))
  FROM station
 WHERE lat_n < 137.2345;
