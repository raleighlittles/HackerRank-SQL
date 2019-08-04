/*
* WARNING: The example output has a bug in it regarding the
* alphabetization order of the occupations. In the sample 
* output, "singers" comes before "actors", but the exercise
* requires the opposite for the test case to pass.
* 
* There's two general ways to go about this here -- you
* can either write two separate queries (making sure to
* use the semicolon to end each one) or you can write 
* 4 queries, 2 nested ones, and then Union them together.
* 
* The nested approach looks like this:
* SELECT * FROM (<query to print name with occupation in
* parenthesis>)
* UNION
* SELECT * FROM (<query to count how many of each occupation
* there are>)
* 
* As you can see, the nested approach gets kind of messy,
* and the nesting is required due to some of the limitations
* on using aggregated functions with unions.
*
* Since we're expected to print a nice output rather than raw
* columns, we lean heavily on the Concat function to create
* our string formatting.
*
* Also note that the occupations have to be printed in lower-
* case for which we use the new LOWER function.
*/

SELECT CONCAT(Name, "(", LEFT(Occupation, 1), ")")
FROM Occupations
ORDER BY Name ASC;

SELECT CONCAT("There are a total of ", COUNT(*), " ",  LOWER(Occupation), "s.") FROM Occupations GROUP BY Occupation ORDER BY COUNT(*) ASC, Occupation ASC;