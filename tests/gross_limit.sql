SELECT * 
FROM {{ref('movie_gross_info_extract_country_unit_gross_number')}}
WHERE gross < 0
LIMIT 10