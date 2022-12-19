SELECT *
FROM tmp
WHERE total_cost = (SELECT MIN(total_cost) FROM tmp)
      OR total_cost = (SELECT MAX(total_cost) FROM tmp)