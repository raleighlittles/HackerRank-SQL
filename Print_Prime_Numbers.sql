/* Oracle solution.
 * 
 * Start by building a hierarchial query to essentially count. Uses Oracle's "DUAL" table.
 * 
 *
 */
WITH x AS(
    SELECT level+1 x
    FROM dual
    CONNECT BY LEVEL <= 999 -- Max number. --
)
-- Oracle's version of GROUP_CONCAT. --
SELECT LISTAGG(x.x, '&') WITHIN GROUP (ORDER BY x.x) "primes"
FROM x
WHERE NOT EXISTS (
  SELECT 1 FROM x y
  WHERE x.x > y.x AND remainder( x.x, y.x) = 0
);
