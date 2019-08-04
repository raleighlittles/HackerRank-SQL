/* Despite this exercise coming after the previous one, this exercise is actually a simpler case
 * of the previous one -- we only need to check the ending letter of a word and make sure
 * that the ending letter is not in our set of vowels.
 */

SELECT DISTINCT(CITY) FROM STATION WHERE RIGHT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u')