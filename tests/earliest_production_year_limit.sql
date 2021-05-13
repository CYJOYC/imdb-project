select *
from {{ ref('movie_gross_info_with_title') }}
where production_year < 1800
limit 1