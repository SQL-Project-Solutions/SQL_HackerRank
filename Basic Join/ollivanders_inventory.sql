SELECT w.id
     , p.age
     , w.coins_needed
     , w.power
  FROM wands w
  JOIN wands_property p
    ON p.code = w.code
 WHERE w.coins_needed = (SELECT MIN(coins_needed)
                           FROM wands a
                           JOIN wands_property b
                             ON a.code = b.code
                          WHERE b.is_evil = 0
                            AND p.age = b.age
                            AND w.power = a.power
                        )
 ORDER BY w.power DESC
        , p.age DESC;
