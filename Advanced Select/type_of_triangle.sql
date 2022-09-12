SELECT CASE WHEN (A+B) <= C OR (A+C) <= B OR (B+C) <= C THEN 'Not A Triangle'
            WHEN (A=B AND A<>C) OR (A=C AND A<>B) OR (B=C AND B<>A) THEN 'Isosceles'
            WHEN A=B AND A=C THEN 'Equilateral'
            ELSE 'Scalene'
       END AS triangle_type
  FROM triangles;
