SELECT a.id, name, gender, person_id, movie_id, role_id 
FROM {{source('imdb', 'actor_sample')}} AS a INNER JOIN {{source('imdb', 'cast_sample')}} AS c
ON a.id = c.person_id