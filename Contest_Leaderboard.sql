/*
 * Right off the bat, we can see that we'll need to join our two tables to perform this query.
 * The first step is to write a query that can find the maximum score each user got on each challenge.
 * This is the best score query here.
 * 
 * Once we have this inner query, we can join our tables, and then sum over the best score to get the total score.
*/

SELECT best_score_query.hacker_id, Hackers.name, SUM(best_score_query.best_score) AS total_score FROM
(SELECT hacker_id, challenge_id, MAX(score) AS best_score FROM Submissions WHERE score > 0 GROUP BY hacker_id, challenge_id) AS best_score_query
JOIN Hackers ON best_score_query.hacker_id = Hackers.hacker_id 
GROUP By best_score_query.hacker_id, Hackers.name
ORDER BY total_score DESC, best_score_query.hacker_id;