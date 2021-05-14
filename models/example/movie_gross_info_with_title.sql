SELECT i.movie_id, i.info_type_id, i.info, m.title, m.production_year
FROM {{source('imdb', 'movie_info_sample')}} AS i INNER JOIN {{source('imdb', 'movie_sample')}} AS m
ON i.movie_id = m.id
WHERE i.info_type_id = 107

{% if is_incremental() %}
WHERE m.production_year > (SELECT MAX(production_year) FROM {{ this }})
{% endif %}