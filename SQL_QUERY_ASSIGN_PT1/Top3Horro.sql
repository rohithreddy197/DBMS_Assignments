select title from rental r join inventory i 
on r.inventory_id=i.inventory_id 
join film f on f.film_id=i.film_id 
join film_category fc on fc.film_id=f.film_id 
join category c on fc.category_id=c.category_id 
where c.name="Horror" 
group by f.film_id 
order by count(*) desc limit 3;
