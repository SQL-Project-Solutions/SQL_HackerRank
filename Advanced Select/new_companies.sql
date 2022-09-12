SELECT c.company_code
     , c.founder
     , COUNT(DISTINCT lm.lead_manager_code)
     , COUNT(DISTINCT sm.senior_manager_code)
     , COUNT(DISTINCT m.manager_code)
     , COUNT(DISTINCT e.employee_code)
  FROM company AS c
  JOIN lead_manager AS lm
    ON c.company_code = lm.company_code
  JOIN senior_manager AS sm
    ON lm.lead_manager_code = sm.lead_manager_code
  JOIN manager AS m
    ON m.senior_manager_code = sm.senior_manager_code
  JOIN employee AS e
    ON e.manager_code = m.manager_code
 GROUP BY c.company_code
     , c.founder
 ORDER BY c.company_code;
