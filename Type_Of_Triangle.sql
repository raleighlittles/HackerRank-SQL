/*
 * Fun example!
 * First thing to note is that you can actually have an "empty" SELECT statement, something we 
 * haven't really seen so far.
 *
 * From here, we just apply the conditions we're given for each triangle. One neat trick is that
 * you can use the transitive property to reduce the number of conditions in the "Equilateral"
 * check from 3 to 2.
 * 
 * Another important gotcha is that there is actually bug in the description about what is not a
 * triangle. The hint statement says "Values cannot form a triangle because the combined value of
 * sides A and B is not larger than that of C", but per the Triangle Inequality, it actually 
 * should be:
 * "Values cannot form a triangle because the combined value of sides A and B is not larger OR 
 * EQUAL TO that of C."
*/
SELECT 
CASE
    WHEN A + B <= C THEN "Not A Triangle"
    WHEN A = B AND B = C THEN "Equilateral"
    WHEN A != B AND B != C AND A != C THEN "Scalene"
    ELSE "Isosceles"
END AS Result
FROM TRIANGLES