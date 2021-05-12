SELECT * FROM {{ref('movie_gross_rank')}}
WHERE country = 'Japan'
LIMIT 10