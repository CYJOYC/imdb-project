SELECT *,
CASE
 WHEN unit = '$' THEN gross
 WHEN unit = 'JPY' THEN gross * 0.0092
 WHEN unit = '€' THEN gross * 1.21
 WHEN unit = 'CNY' THEN gross * 0.16
 WHEN unit = 'RUB' THEN gross * 0.013
 WHEN unit = 'AUD' THEN gross * 0.78
 WHEN unit = 'KRW' THEN gross * 0.00089
 WHEN unit = 'INR' THEN gross * 0.014
 WHEN unit = 'THB' THEN gross * 0.032
 WHEN unit = 'ESP' THEN gross * 0.0073
 WHEN unit = 'IDR' THEN gross * 0.00007
 WHEN unit = '£' THEN gross * 1.41
 ELSE 0
END AS gross_in_usd
FROM {{ref('movie_gross_info_extract_country_unit_gross_number')}}
ORDER BY gross_in_usd DESC