SELECT * FROM {{ref('movie_gross_rank')}}
WHERE country = 'Worldwide'
LIMIT 10