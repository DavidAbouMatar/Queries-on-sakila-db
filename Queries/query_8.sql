/*Get the total and average values of rentals per month per year per store*/

SELECT AVG(p.amount), SUM(p.amount),MONTH(p.payment_date),year(p.payment_date),s.store_id
from payment AS p inner join customer as c on p.customer_id = c.customer_id
inner join store AS s on c.store_id=s.store_id
GROUP by MONTH(p.payment_date),year(p.payment_date),s.store_id
ORDER by year(p.payment_date) DESC;