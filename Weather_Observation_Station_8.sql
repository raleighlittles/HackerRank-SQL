/* Even though this example might seem like a minor extension of the last two exercises, the 
 * approach we used for the last two would not work here, as it would require us to write
 * 5 vowels * 5 vowels = 25 possible combinations for strings that can start and end with a vowel.
 * Instead, we'll use the LEFT() and the RIGHT() functions, these functions extract the first X
 * or last X characters respectively (or in a right-to-left language, the reverse..) and check
 * if the character we extracted is found in our list of vowel letters.
 */

SELECT DISTINCT(CITY) FROM STATION WHERE LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u') AND RIGHT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u')