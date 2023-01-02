SELECT big_1.submission_date
     , big_1.hkr_cnt
	 , big_2.hacker_id
	 , h.name
  FROM (SELECT submission_date
             , count(distinct hacker_id) as hkr_cnt
          FROM (SELECT s.*
		             , dense_rank() over(order by submission_date) as date_rank
					 , dense_rank() over(partition by hacker_id 
				 ORDER BY submission_date) as hacker_rank 
                  FROM submissions s ) a 
         WHERE date_rank = hacker_rank 
         GROUP BY submission_date) big_1 
  JOIN (SELECT submission_date,hacker_id
             , rank() over(partition by submission_date 
         ORDER BY sub_cnt desc
		     , hacker_id) as max_rank 
          FROM (SELECT submission_date
		             , hacker_id
					 , count(*) as sub_cnt 
                  FROM submissions 
                 GROUP BY submission_date
				     , hacker_id) b ) big_2
    ON big_1.submission_date = big_2.submission_date and big_2.max_rank = 1 
  JOIN hackers h 
    ON h.hacker_id = big_2.hacker_id 
 ORDER BY 1
