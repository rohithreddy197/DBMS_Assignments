select distinct c.first_name from rental r 
join customer c on r.customer_id=c.customer_id 
join address a on c.address_id=a.address_id 
join city ci on ci.city_id=a.city_id 
join country cou on cou.country_id=ci.country_id 
join inventory i on i.inventory_id=r.inventory_id 
join film_actor fa on fa.film_id=i.film_id 
join actor ac on ac.actor_id=fa.actor_id 
where cou.country="Canada" and ac.first_name="NICK" and ac.last_name="WAHLBERG";
