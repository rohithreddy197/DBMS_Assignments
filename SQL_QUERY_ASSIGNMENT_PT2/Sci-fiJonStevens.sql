select count(distinct f.title) from film f 
join film_category fc on f.film_id=fc.film_id 
join category c on fc.category_id=c.category_id  
join inventory i on i.film_id=fc.film_id 
join rental r on i.inventory_id=r.inventory_id  
join staff s on r.staff_id=s.staff_id  
where c.name="sci-fi" and s.first_name="Jon" and s.last_name="Stephens";
