﻿/*
Query a count of the number of cities in CITY having a Population larger than 100000.
*/
select count(ID) 
from CITY
where POPULATION > 100000;