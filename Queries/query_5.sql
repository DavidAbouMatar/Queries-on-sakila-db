/*Return the ﬁrst and last names of actors who played in a ﬁlm involving a “Crocodile” and a “Shark”, along with the release year of the movie, sorted by the actors’ last names*/
SELECT a.first_name , a.last_name ,f.release_year
FROM actor AS a INNER JOIN film_actor AS fa
on a.actor_id = fa.actor_id
INNER JOIN film as f
on fa.film_id = f.film_id
where f.description LIKE '%Crocodile%' AND f.description LIKE '%Shark%'
ORDER BY a.last_name ASC;