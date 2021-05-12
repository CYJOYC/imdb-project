SELECT * FROM {{ref('movie_gross_rank')}}
WHERE country = 'Italy'
LIMIT 10