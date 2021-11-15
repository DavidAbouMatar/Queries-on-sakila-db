/*Find the names (ﬁrst and last) of all the actors and costumers whose ﬁrst name is the same as the ﬁrst name of the actor with ID 8.
 Do not return the actor with ID 8 himself. Note that you cannot use the name of the actor with ID 8 as a constant (only the ID).
 There is more than one way to solve this question, but you need to provide only one solution.*/

SELECT first_name, last_name
FROM customer 
WHERE first_name = (select first_name from actor where actor_id = 8)
UNION
SELECT first_name, last_name
FROM actor 
WHERE first_name = (select first_name from actor where actor_id = 8) and actor_id != 8;