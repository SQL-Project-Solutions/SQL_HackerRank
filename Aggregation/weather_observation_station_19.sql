-- a = MIN(lat_n)
-- b = MIN(long_w)
-- c = MAX(lat_n)
-- d = MAX(long_w)

SELECT CAST(ROUND(SQRT(POWER(MIN(LAT_N)-MAX(LAT_N),2) + POWER(MIN(LONG_W)-MAX(LONG_W),2)), 4) AS numeric (36,4))
  FROM station;
