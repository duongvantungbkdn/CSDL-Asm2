/*
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table,
 but did not realize her keyboard's 0 key was broken until after completing the calculation.
 She wants your help finding the difference between her miscalculation (using salaries with any zeros removed),
 and the actual average salary.

Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries), 
and round it up to the next integer.
*/
/*
 - chuyển salary ra kiểu vachar -> thay thế '0' bằng kí tự rỗng '' -> tạo thành chuỗi misSalary
 - chuyển đổi kiểu salary và misSalary thành float -> tính trung bình của 2 tập giá trị này
 - lấy avg(salary)-avg(misSalary) rồi làm tròn trên ceiling
 - chuyển đổi kết quả về liểu int
*/

select cast(ceiling(avg(cast(Salary as float)) - avg(cast(replace(cast(Salary as varchar),'0','') as float)))as int)
from EMPLOYEES;