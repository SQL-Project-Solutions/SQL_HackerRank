
SELECT CASE WHEN p IS NULL THEN CONCAT(n, ' Root')
            WHEN n IN(SELECT DISTINCT p FROM bst) THEN CONCAT(n, ' Inner')
            ELSE CONCAT(n, ' Leaf')
       END
  FROM bst
 ORDER BY n ASC;
