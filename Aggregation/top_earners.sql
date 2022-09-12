SELECT TOP 1 (salary * months)
     , COUNT(*)
  FROM employee
 GROUP BY (salary * months)
 ORDER BY (salary * months) DESC;
