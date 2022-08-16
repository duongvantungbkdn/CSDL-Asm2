/*
You are given three tables: Students, Friends and Packages.
	Students contains two columns: ID and Name.
	Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). 
	Packages contains two columns: ID and Salary (offered salary in $ thousands per month).
Write a query to output the names of those students whose best friends got offered a higher salary than them. 
Names must be ordered by the salary amount offered to the best friends. 
It is guaranteed that no two students got same salary offer.
*/

-- create a table contains name of student, id of student, salary of the best student's friend
with newTB as (select S.Name as name, S.ID as id, P.Salary as f_salary
            from Students S
                join Friends F on S.ID = F.ID
                join Packages P on F.Friend_ID = P.ID)
select newTB.name
from Packages P
    join newTB        
    on P.ID = newTB.id
where P.Salary < newTB.f_salary
-- choose records which salary of student less than salary of the best student's friend
order by newTB.f_salary;
-- order by salary of the best student's friend