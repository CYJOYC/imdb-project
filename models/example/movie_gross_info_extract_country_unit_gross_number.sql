SELECT movie_id, title, production_year, 
regexp_replace(SUBSTRING(info, '\(.*?\)'), '\W', '', 'g') As country, 
regexp_replace(SUBSTRING(info, '([^\s]+) \(?'), '[0-9\,\s]+', '', 'g') As unit, 
cast(regexp_replace(SUBSTRING(info, '([^\s]+) \('), '[^0-9]+', '', 'g') as float) AS gross
FROM {{ref('movie_gross_info_with_title')}}

