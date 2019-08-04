/*
 * Nothing new that we haven't seen so far. SUM usage is pretty self-explanatory, with the 
 * addition of ROUND to trunctuate our answer to 4 decimal places.
 * Use an expanded WHERE clause that has the two conditions we care about.
 */

SELECT ROUND(SUM(LAT_N), 4) FROM STATION WHERE LAT_N > 38.7880 AND LAT_N < 137.2345