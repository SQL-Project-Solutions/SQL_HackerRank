SELECT CAST(ROUND(SUM(lat_n),2) AS numeric (36,2))
     , CAST(ROUND(SUM(long_w),2) AS numeric(36,2))
FROM station;
