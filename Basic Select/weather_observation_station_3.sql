-- Using mod (modulo) function:
SELECT DISTINCT city
  FROM station
 WHERE mod(ID,2) = 0;


-- Using RIGHT trim function:
 SELECT DISTINCT city
   FROM station
  WHERE RIGHT(ID,1) IN (0,2,4,6,8);
