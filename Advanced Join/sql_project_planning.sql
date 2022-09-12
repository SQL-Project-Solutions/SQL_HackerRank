SELECT start_date
     , MIN(end_date)
  FROM (SELECT b.start_date
          FROM projects as a
         RIGHT JOIN projects as b
            ON b.start_date = a.end_date
         WHERE a.start_date IS NULL
       ) sd,
       (SELECT a.end_date
          FROM projects as a
          LEFT JOIN projects as b
            ON b.start_date = a.end_date
         WHERE b.end_date IS NULL
       ) ed
 WHERE start_date < end_date
 GROUP BY start_date
 ORDER BY DATEDIFF(day, start_date, MIN(end_date))
        , start_date;
