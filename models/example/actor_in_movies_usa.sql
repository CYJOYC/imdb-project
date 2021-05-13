select a.id, a.name, a.movie_id, r.country, r.country_gross, r.title 
from {{ref('actor_with_roles')}}  as a inner join {{ref('movie_gross_rank_usa')}} as r on a.movie_id = r.movie_id
order by a.id