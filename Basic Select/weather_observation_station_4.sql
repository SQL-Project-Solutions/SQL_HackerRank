SELECT COUNT(city)-COUNT(DISTINCT city) AS diff
  FROM station;
