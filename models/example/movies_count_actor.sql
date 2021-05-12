SELECT c.person_id, a.name, count(*) AS movies_count
 FROM {{source('imdb', 'cast_sample')}} AS c LEFT JOIN {{source('imdb', 'actor_sample')}} AS a
 ON c.person_id = a.id
 WHERE c.role_id = '1'
 GROUP BY c.person_id, a.name
 ORDER BY movies_count DESC
 LIMIT 1000