/*
 * Cheated a bit here by using Oracle DB instead of the usual MySQL since MySQL doesn't seem to
 * have a built-in MEDIAN function (which is incredibly stupid..) yet Oracle DB does.
 */ 
SELECT ROUND(MEDIAN(LAT_N), 4) FROM STATION;