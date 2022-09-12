SELECT TOP 1 CAST(long_w AS numeric (36,4))
  FROM station
 WHERE lat_n > 38.7780
 ORDER BY lat_n;
