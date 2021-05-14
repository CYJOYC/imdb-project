select m.movie_id, m.country, m.country_gross, m.title, g.info as genre 
from {{ref('movie_gross_rank')}} as m left join {{ref('movie_genre')}} as g
on m.movie_id = g.movie_id