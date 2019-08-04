/*
 * The 'LIKE' matcher gets used inside WHERE statements to search for a specific pattern inside 
 * the string for each row. 
 * The '%' wildcard in SQL matches zero or more characters, so here we use them to create matchers
 * for any string beginning with a vowel.
*/

SELECT CITY FROM STATION WHERE CITY LIKE "a%" 
                            OR CITY LIKE "e%" 
                            OR CITY LIKE "i%" 
                            OR CITY LIKE "o%" 
                            OR CITY LIKE "u%"