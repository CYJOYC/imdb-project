SELECT id, name, COUNT(DISTINCT role_id) AS roles_count 
FROM {{ref('actor_with_roles')}}
GROUP BY id, name
ORDER BY COUNT(DISTINCT role_id) DESC