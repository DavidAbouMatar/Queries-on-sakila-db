SELECT c.name, COUNT(fc.film_id)
FROM category as c, film_category as fc
WHERE c.category_id = fc.category_id 
Group by fc.category_id
HAVING COUNT(fc.film_id) > 55 and COUNT(fc.film_id) < 65
ORDER by COUNT(fc.film_id) ASC;