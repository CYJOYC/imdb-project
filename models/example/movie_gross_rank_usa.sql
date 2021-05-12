SELECT * FROM {{ref('movie_gross_rank')}}
WHERE country = 'USA'
LIMIT 10