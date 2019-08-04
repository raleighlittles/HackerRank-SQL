/* Pass the Field you want to sum over to the SUM function.
 * Lastly, use the Round function with the number of digits you'd like to round to. */
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) FROM STATION