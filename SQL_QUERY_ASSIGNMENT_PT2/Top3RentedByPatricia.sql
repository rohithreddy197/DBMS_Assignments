select ca.name from film_category fc 
join category ca on fc.category_id=ca.category_id 
join inventory i on i.film_id=fc.film_id 
join rental r on r.inventory_id=i.inventory_id
join payment p on p.rental_id=r.rental_id 
join customer c on c.customer_id=p.customer_id
where c.first_name="PATRICIA" and c.last_name="JOHNSON" 
group by ca.name
order by count(*) 
desc LIMIT 3;
