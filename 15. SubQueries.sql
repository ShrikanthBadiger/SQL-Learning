/*
Sub Queries(in the select, From, and Where Statement)
- are inner queries or nested queries
A query within a query - A subquery used to return the data that is used in amin query
as condition specified
*/

select*
from [SQL Learning Tutorial]..EmployeeSalary

--subquery in select
select EmployeeID, Salary, (select avg(Salary) from [SQL Learning Tutorial]..EmployeeSalary) as avgsalary
from [SQL Learning Tutorial]..EmployeeSalary

--With Partition BY
select EmployeeID, Salary, avg(Salary) over () as allavgsalary
from [SQL Learning Tutorial]..EmployeeSalary

--group by wont work
select EmployeeID, Salary, avg(Salary) as allavgsalary
from [SQL Learning Tutorial]..EmployeeSalary
group by EmployeeID, Salary
order by 1,2

--subquery in FROM
select a.EmployeeID, allavgsalary
from (select EmployeeID, Salary, avg(Salary) over () as allavgsalary
	from [SQL Learning Tutorial]..EmployeeSalary) a

--subquery in WHERE
select EmployeeID, Salary, JobTitle
from [SQL Learning Tutorial]..EmployeeSalary
where EmployeeID in(
			select EmployeeID
			from [SQL Learning Tutorial]..EmployeeDemographics
			where Age>30)