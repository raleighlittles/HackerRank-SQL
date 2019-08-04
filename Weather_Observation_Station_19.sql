/*
* Review the Euclidean distance wikipedia page if you're rusty, but basically, it comes down to:
* (difference in y-coordinates)^2 + (difference in x-coordinates)^2 
* Take the square root of that, and you have your result sans formatting.
* 
* This question can also be rephrased as: "Which two stations are the farthest apart?"
*/

SELECT ROUND(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N), 2) + POWER(MAX(LONG_W) - MIN(LONG_W), 2)), 4) FROM STATION