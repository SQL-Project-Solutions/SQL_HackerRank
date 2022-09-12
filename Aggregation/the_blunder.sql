SELECT CAST(CEILING(AVG(CAST(salary as float)) - AVG(CAST(REPLACE(salary, '0', '') AS float))) AS int)
  FROM employees;
