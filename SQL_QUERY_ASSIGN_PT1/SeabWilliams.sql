select count(*) from film_actor
where actor_id=
                (select actor_id from actor 
                 where first_name="SEAN" and last_name="WILLIAMS");
