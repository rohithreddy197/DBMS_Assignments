 select count(*) from film f 
 join inventory i on f.film_id=i.film_id 
 join rental r on r.inventory_id=i.inventory_id  
 join payment p on p.rental_id=r.rental_id 
 join customer c on c.customer_id=p.customer_id
 where c.first_name="SUSAN" and c.last_name="WILSON" and f.rating="R"; 
