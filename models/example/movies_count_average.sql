SELECT AVG(m.movies_count) AS avg_actor,  AVG(f.movies_count) AS avg_actress
FROM {{ref('movies_count_actor')}} AS m, {{ref('movies_count_actress')}} AS f