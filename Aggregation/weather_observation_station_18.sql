-- a = MIN(lat_n)
-- b = MIN(long_w)
-- c = MAX(lat_n)
-- d = MAX(long_w)

SELECT CAST(ROUND(ABS(MIN(LAT_N)-MAX(LAT_N)) + ABS(MIN(LONG_W)-MAX(LONG_W)), 4) AS numeric (36,4))
  FROM station;
