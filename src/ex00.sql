CREATE OR REPLACE TEMP VIEW tmp AS
WITH RECURSIVE all_paths AS (
    SELECT node1 AS tour,
           node1,
           node2,
           cost,
           cost AS sum
    FROM nodes
    WHERE node1 = 'a'
    UNION ALL
    SELECT old.tour || ',' || new.node1,
           new.node1,
           new.node2,
           new.cost,
           old.sum + new.cost AS sum
    FROM nodes AS new
    JOIN all_paths AS old ON new.node1 = old.node2
    WHERE tour NOT LIKE '%' || new.node1 || '%'
)

SELECT sum AS total_cost,
       '{'||tour||',a}' AS tour
FROM all_paths
WHERE length(tour) = 7
      AND node2 = 'a'
ORDER BY 1, 2;

SELECT * FROM tmp WHERE total_cost = (SELECT MIN(total_cost) FROM tmp)