(select CITY, char_length(CITY) as len_city from STATION order by len_city asc, city asc limit 1 ) 
union all 
(select CITY, char_length(CITY) as len_city from STATION order by len_city desc,city desc limit 1) 
order by len_city
