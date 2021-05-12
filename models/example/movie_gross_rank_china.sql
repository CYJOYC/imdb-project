SELECT * FROM {{ref('movie_gross_rank')}}
WHERE country = 'China'
LIMIT 10