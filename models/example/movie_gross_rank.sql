SELECT DISTINCT movie_id, country, max(gross_in_usd) OVER (PARTITION BY movie_id, country) AS country_gross, title
FROM {{ref('movie_gross_to_usd')}}
Order BY country_gross DESC