/*What are the top 3 countries from which customers are originating?*/

select c.country, COUNT(cus.customer_id)
from country as c INNER JOIN city AS ci on c.country_id = ci.country_id
INNER JOIN address AS ad on ci.city_id = ad.city_id INNER JOIN customer as cus on cus.address_id = ad.address_id
group by c.country
ORDER BY COUNT(cus.customer_id) DESC limit 3;