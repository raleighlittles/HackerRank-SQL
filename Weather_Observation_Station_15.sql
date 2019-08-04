/*
 * The most straightforward thing here is to handle rounding, and making sure the latitude is
 * below our upper bound. To get the maximum for a column that is different than our WHERE clause
 * we can simply ORDER BY on the column and do use the LIMIT function to limit how many results
 * our query can return.
*/

SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N < 137.2345 ORDER BY LAT_N DESC LIMIT 1