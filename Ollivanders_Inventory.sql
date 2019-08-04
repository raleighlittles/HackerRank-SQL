/*
 * Use a subquery to gather the wand code, power, and the MINIMUM of the coins needed as specified by the problem.
 * Then, join against that inner query, and then join with the wands property table to be able to evaluate how
 * old a wand is and if its evil or not.
 */
SELECT id, age, inner_query.coins_needed, inner_query.power FROM 
(SELECT code, power, MIN(coins_needed) AS coins_needed FROM Wands GROUP BY code, power) AS inner_query
JOIN Wands AS wands_alias
ON inner_query.code = wands_alias.code 
AND inner_query.power = wands_alias.power
AND inner_query.coins_needed = wands_alias.coins_needed
JOIN Wands_Property AS wands_property_alias
ON inner_query.code = wands_property_alias.code
WHERE wands_property_alias.is_evil != 1
ORDER BY inner_query.power DESC, age DESC;