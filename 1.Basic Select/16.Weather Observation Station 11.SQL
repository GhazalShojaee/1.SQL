select distinct CITY
from STATION
where CITY NOT RLIKE '^[aeiouAEIOU].*[aeiouAEIOU]$'