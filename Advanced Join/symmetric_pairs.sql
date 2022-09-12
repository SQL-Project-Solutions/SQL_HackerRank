SELECT f.x
     , f.y
  FROM functions f
 WHERE f.x = f.y
   AND (SELECT COUNT(*)
          FROM functions
         WHERE x = f.x
           AND y = f.y) > 1
UNION

SELECT f.x
     , f.y
  FROM functions f
 WHERE EXISTS(SELECT x
                   , y
                FROM functions
               WHERE f.x = y
                 AND f.y = x
                 AND f.x < x)
ORDER BY x;
