select * 
from {{ref('actor_in_movies_usa_avg_gross')}}
where num_of_movies > 2000
limit 2