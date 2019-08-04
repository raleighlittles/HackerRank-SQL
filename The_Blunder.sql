/*
* A few things to unpack. Starting from inside out, notice that we're really just asked to take
* the difference in two averages. The first average is that of the correct table, and the second
* is the average of the malformed table - but we don't have this table, so we have to recreate it.
* 
* Since the description says that Samantha's zero key was broken, we know that to get the malformed
* table we can just remove 0 from all the existing numbers. However, we have to make two changes
* in type, one to convert our Salary (stored as an Integer) into a string, so that we can make
* the actual substitution (substituting in 0 for an empty character, to mimic the effect of
* there not being a 0 key..), and then another cast to be able to take the average, as you can't
* take the average of a string.
* 
*/

SELECT CEIL(AVG(SALARY) - AVG(CAST(REPLACE(CAST(SALARY AS CHAR), '0', '') AS SIGNED))) FROM EMPLOYEES