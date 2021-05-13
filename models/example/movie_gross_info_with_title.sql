{{ config(materialized='incremental') }}
SELECT i.movie_id, i.info_type_id, i.info, m.title, m.production_year
FROM {{ref('movie_gross_info')}} AS i INNER JOIN {{source('imdb', 'movie_sample')}} AS m
ON i.movie_id = m.id
{% if is_incremental() %}
Where m.production_year > (SELECT max(production_year) from {{ this }})
{% endif %}