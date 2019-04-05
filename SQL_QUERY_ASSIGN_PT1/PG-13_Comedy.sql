select title from film_category,film,category
where film.rating="PG-13" 
and film.film_id=film_category.film_id 
and category.name="Comedy" and 
film_category.category_id=category.category_id;
