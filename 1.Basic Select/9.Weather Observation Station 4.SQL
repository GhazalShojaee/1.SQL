select t1.cnt - t2.cnt
from 
(select count(CITY) as cnt from STATION) as t1
cross join 
(select count(distinct CITY) as cnt from STATION) as t2