select * from {{source('imdb', 'movie_info_sample')}}
where info_type_id = 107