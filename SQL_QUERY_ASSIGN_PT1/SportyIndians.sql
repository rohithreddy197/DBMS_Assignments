select distinct first_name from rental r join customer c
on r.customer_id = c.customer_id
join address a
on c.address_id = a.address_id
join city
on city.city_id = a.city_id
join country
on country.country_id = city.country_id
join inventory i
on i.inventory_id = r.inventory_id
join film_category fc
on fc.film_id = i.film_id
join category cat
on cat.category_id = fc.category_id
where country.country = "India" and cat.name = "Sports";
