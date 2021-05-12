SELECT * FROM {{ref('movie_gross_rank')}}
WHERE country = 'India'
LIMIT 10