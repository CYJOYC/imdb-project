SELECT * FROM {{ref('movie_gross_rank')}}
WHERE country = 'Ecuador'
LIMIT 10