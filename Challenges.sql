/* somewhat similar to the previous example (Contest leaderboard), though, the added condition
 * of restricting results where two users have the same number of challenges created provides an 
 * additional, well, challenge.
 *
 * The first sELECT query is responsible for getting the basic columns we need, as well as a 
 * count of how many challenges were associated with that hacker ID. so at this point the table
 * looks like:
 * 
 *      <id>  <name>     <some count of how many challenges this hacker created>
 * 
 *  From here, we use the `cnt` variable to keep track of the max number of challenges the user
 * created. The table at this point isn't distinct and so while this count is kind of a shadow
 * variable, it needs to be used so that in the OR clause you can check that the same count
 * doesn't appear with another hacker (as in, two people created the same number of challenges)
 *
 */

SELECT challenge.hacker_id, hacker.name, COUNT(challenge.challenge_id) AS number_of_challenges
FROM Hackers AS hacker JOIN Challenges AS challenge ON hacker.hacker_id = challenge.hacker_id
GROUP BY challenge.hacker_id, hacker.name HAVING
number_of_challenges = (SELECT COUNT(c1.challenge_id) FROM Challenges AS c1 GROUP BY c1.hacker_id ORDER BY COUNT(*) DESC LIMIT 1) OR
number_of_challenges NOT IN (SELECT COUNT(c2.challenge_id) FROM Challenges AS c2 GROUP BY c2.hacker_id HAVING c2.hacker_id <> challenge.hacker_id)
ORDER BY number_of_challenges DESC, challenge.hacker_id;