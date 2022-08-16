/*
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7880. 
Round your answer to 4 decimal places.
*/

select format(round(min(LAT_N),4),'#.0000') 
from STATION 
where LAT_N > 38.7880;