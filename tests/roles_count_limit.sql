SELECT * 
FROM {{ ref('role_count_for_each_actor')}}
WHERE roles_count  > 2
LIMIT 5