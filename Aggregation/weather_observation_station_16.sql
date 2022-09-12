SELECT CAST(ROUND(MIN(lat_n),4) AS numeric (36,4))
  FROM station
 WHERE lat_n > 38.7780;
