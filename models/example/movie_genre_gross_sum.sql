select country, genre, sum(country_gross) as gross, count(*) as num_of_movies, rank() over (partition by country order by sum(country_gross) desc)
from {{ ref('movie_genre_gross') }}
group by country, genre
order by country