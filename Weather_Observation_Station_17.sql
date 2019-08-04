/*
 * Very similar to Weather Observation Station 15. Uses the common theme we've seen so far that is
 * using the ORDER_BY clause in tandem with LIMIT to find the minimum/maximum on a column that is 
 * not one being queried.
*/

SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N > 38.7780 ORDER BY LAT_N ASC LIMIT 1