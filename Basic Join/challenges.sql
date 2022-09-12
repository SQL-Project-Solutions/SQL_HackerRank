SELECT c.hacker_id
     , h.name
     , COUNT(c.challenge_id)
  FROM hackers h
  JOIN challenges c
    ON h.hacker_id = c.hacker_id
 GROUP BY c.hacker_id, h.name
HAVING COUNT(c.challenge_id) NOT IN (select t.chall_count FROM (SELECT c.Hacker_id
                                                                     , h.name
                                                                     , COUNT(challenge_id) AS chall_count
                                                                 FROM hackers h
                                                                 JOIN challenges c
                                                                   ON h.hacker_id = c.hacker_id
                                                                GROUP BY c.hacker_id, h.name
                                                                ) t
 WHERE t.chall_count <> (SELECT TOP 1 COUNT(challenge_id)
                           FROM challenges
                           GROUP BY hacker_id
                           ORDER BY COUNT(challenge_id) DESC
                         )
 GROUP BY t.chall_count
HAVING count(t.chall_count) > 1)
 ORDER BY COUNT(c.challenge_id) DESC
        , c.hacker_id;
