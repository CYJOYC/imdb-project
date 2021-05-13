select id, name, sum(country_gross) as total_movie_gross, count(*) as num_of_movies, sum(country_gross)/count(*) as avg_movie_gross,
rank() over (order by sum(country_gross)/count(*) desc) as avg_movie_gross_rank
from {{ref('actor_in_movies_usa')}}
group by id, name
order by num_of_movies desc