SELECT TOP 1 CAST(long_w AS numeric (36,4))
  FROM station
 WHERE lat_n < 137.2345
 ORDER BY lat_n DESC;
