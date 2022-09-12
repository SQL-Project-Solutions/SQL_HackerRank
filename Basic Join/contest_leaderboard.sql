SELECT m.hacker_id
     , h.name
     , SUM(score)
  FROM (SELECT hacker_id
             , challenge_id
             , MAX(score) AS score
          FROM submissions
         GROUP BY hacker_id
                , challenge_id
       ) m
  JOIN hackers as h
    ON m.hacker_id = h.hacker_id
 GROUP BY m.hacker_id
         , h.name
HAVING SUM(score) > 0
 ORDER BY SUM(score) DESC
        , m.hacker_id;
