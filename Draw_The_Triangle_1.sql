/*
* In most programming languages, this would be extremely straightforward, here's the psuedocode:
* 
* for i in range [0, N]:
*    print an asterisk (N-i) times
* 
* or with a decrementing loop,
* 
* for i in range(N, 0):
*   print an asterisk N times
* 
* For ease, we'll use the second example here. We start by using a variable to represent the number
* of asterisks in each row. (this variable also represents the number of rows, since this is a 
* triangle)
* One other thing to note is that since we decrement the variable before it is used in the first 
* print statement, we set the initial value equal to 21 so that the first row of asterisks
* contains the required 20 (21-1) asterisks.
*/

SET @NUMBER_OF_ASTERISKS_IN_ROW:=20 + 1;
SELECT REPEAT('* ', @NUMBER_OF_ASTERISKS_IN_ROW:= @NUMBER_OF_ASTERISKS_IN_ROW - 1) FROM INFORMATION_SCHEMA.TABLES