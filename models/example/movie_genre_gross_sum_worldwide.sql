select * from {{ref('movie_genre_gross_sum')}}
where country = 'Worldwide'