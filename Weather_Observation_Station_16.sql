/*
 * Apply the round on the minimum function to round your result to the specified number of places.
 * Lastly use the WHERE clause to filter results above the minimum threshold.
*/

SELECT ROUND(MIN(LAT_N), 4) FROM STATION WHERE LAT_N > 38.7780