SELECT [doctor], [professor], [singer], [actor]
  FROM (SELECT ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) ROW_NO
             , ISNULL(NULL, name) as name
             , occupation
          FROM occupations
       ) AS tbl
 PIVOT (MAX(Name)
        FOR occupation IN ( [doctor], [professor], [singer], [actor])
       ) AS pivot_tbl
 ORDER BY ROW_NO;
