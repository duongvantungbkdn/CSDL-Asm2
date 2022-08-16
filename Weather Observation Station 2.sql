/*
Query the following two values from the STATION table:
The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.
*/

Select 
Format(Round(Sum(LAT_N),2),'#.00'),
Format(Round(Sum(long_w),2),'#.00')
from station