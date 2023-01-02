SELECT big_1.submission_date
     , big_1.hkr_cnt
     , big_2.hacker_id
     , h.name
  FROM (SELECT submission_date
             , COUNT(DISTINCT hacker_id) AS hkr_cnt
          FROM (SELECT s.*
		     , dense_rank() over(ORDER BY submission_date) AS date_rank
		     , dense_rank() over(partition BY hacker_id 
		 ORDER BY submission_date) AS hacker_rank 
                  FROM submissions s ) a 
         WHERE date_rank = hacker_rank 
         GROUP BY submission_date) big_1 
  JOIN (SELECT submission_date,hacker_id
             , RANK() OVER(PARTITION BY submission_date 
         ORDER BY sub_cnt DESC
	     , hacker_id) AS max_rank 
          FROM (SELECT submission_date
		     , hacker_id
		     , COUNT(*) AS sub_cnt 
                  FROM submissions 
                 GROUP BY submission_date
		     , hacker_id) b ) big_2
    ON big_1.submission_date = big_2.submission_date AND big_2.max_rank = 1 
  JOIN hackers h 
    ON h.hacker_id = big_2.hacker_id 
 ORDER BY 1
