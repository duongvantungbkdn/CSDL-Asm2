/*
Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.
*/
select format(sqrt(power((max(LAT_N)-min(LAT_N)),2) + power((max(LONG_W)-min(LONG_W)),2)),'F4')
from STATION;