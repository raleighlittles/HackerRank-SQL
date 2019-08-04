/*
* Given the fact that there's two tables, there's a good
* chance right away that we will need a join.
*
*
* The join in this case isn't based on a column ID, but instead
* we just match the mark in the Students table to a range
* specified by each row in the Grades table.
*
* Per the conditions, we check if a student's grade would be
* less than 8 before printing their name.
*
* The hardest part here is figuring out how to use Aliases
* correctly.
*/

SELECT IF(grade.grade < 8, NULL, student.name), grade.grade, student.Marks FROM Students AS student JOIN Grades AS grade 
ON student.Marks BETWEEN grade.Min_Mark AND grade.Max_Mark ORDER BY grade.Grade DESC, student.Name, student.marks

