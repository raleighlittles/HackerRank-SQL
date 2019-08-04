angle/*
 * This is actually the exact opposite case from Draw the Triangle 1! Only new trick here 
 * is to make sure we add an upperbound on our SELECT statement so that it stops printing at 20.
*/

SET @NUMBER_OF_ASTERISKS_IN_ROW:=0;
SELECT REPEAT('* ', @NUMBER_OF_ASTERISKS_IN_ROW:= @NUMBER_OF_ASTERISKS_IN_ROW + 1) FROM INFORMATION_SCHEMA.TABLES
WHERE @NUMBER_OF_ASTERISKS_IN_ROW < 20;
