/*
Temp Tables - Temporary Tables
*/
--s1
CREATE TABLE #temp_Employee(
EmployeeID int,
JobTitle varchar(100),
Salary int
)
--s2
select *
from #temp_Employee

--s3
insert into #temp_Employee values(
'1001', 'HR', '45000'
)
--s4
select *
from #temp_Employee

--5 taking from already existed data
insert into #temp_Employee
select *
from [SQL Learning Tutorial]..EmployeeSalary
--s6
select *
from #temp_Employee

--Example2
--s1
DROP TABLE IF EXISTS #temp_Employee2
CREATE TABLE #temp_Employee2(
JobTitle varchar(50),
EmployeesPerJob int,
AvgSalary int,
AvgAge int)

--s2
insert into #temp_Employee2
select JobTitle, count(JobTitle), Avg(Age), Avg(salary)
from [SQL Learning Tutorial]..EmployeeDemographics emp
join [SQL Learning Tutorial]..EmployeeSalary sal
	on emp.EmployeeID=sal.EmployeeID
group by JobTitle

select*
from #temp_Employee2