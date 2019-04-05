select sum(amount) from payment p 
join rental r on r.rental_id=p.rental_id 
join inventory i on i.inventory_id=r.inventory_id 
join film_category fc on fc.film_id=i.film_id 
join category c on c.category_id=fc.category_id 
where c.name="Animation";










//can als be done using. sales_by_film_category is present in sakila database
select total_sales from sales_by_film_category where category="Animation";
