WITH std_salary AS (SELECT s.id, s.name, p.salary
                      FROM students s
                      JOIN packages p
                        ON s.id=p.id
                   ),

    friend_salary AS (SELECT f.id, p.salary
                        FROM friends f
                        JOIN packages p
                          ON f.friend_id=p.id
                     )

SELECT name
  FROM (SELECT s.name
             , s.salary AS own
             , f.salary AS friend
    FROM std_salary s
    JOIN friend_salary f
    ON s.id=f.id) AS t
WHERE t.own < t.friend
ORDER BY t.friend;
