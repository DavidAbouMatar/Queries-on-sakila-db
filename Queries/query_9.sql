/*Get the top 3 customers who rented the highest number of movies within a given year*/
SELECT c.first_name, count(r.customer_id)
FROM rental as r
INNER JOIN customer AS c ON r.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name
ORDER BY COUNT(r.customer_id) DESC LIMIT 3
