/*
 * Nothing new that we haven't seen so far. As requested, use the MAX and ROUND functions,
 * and specify the upper bound for latitude in the WHERE clause.
*/

SELECT ROUND(MAX(LAT_N), 4) FROM STATION WHERE LAT_N < 137.2345