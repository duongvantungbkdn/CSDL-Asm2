/*
Query the greatest value of the Northern Latitudes (LAT_N) 
from STATION that is less than 1372345.
Truncate your answer to 4 decimal places.
*/

select format(max(LAT_N),'F4')
from STATION 
where LAT_N < 137.2345;