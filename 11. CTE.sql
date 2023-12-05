/*
CTE = Common Table Expression
It's a named temporary results set which is used to manipulate the complex 
Sub queries data

Now this only Exists within the scope of the statement that we are about to write

Once we cancel out this query it's like never existed

a cte is also only created in memory rather than a tempdb file like a table 
would be

In genereal a CTE acts like a subquery
*/
WITH  CTE_Employee as
(SELECT FirstName, LastName, Gender, Salary,
	COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender,
	AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM [SQL Learning Tutorial]. .EmployeeDemographics emp
JOIN [SQL Learning Tutorial]. .EmployeeSalary Sal
	ON emp.EmployeeID=sal.EmployeeID
WHERE Salary > '45000'
)
SELECT *
FROM CTE_Employee

WITH  CTE_Employee as
(SELECT FirstName, LastName, Gender, Salary,
	COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender,
	AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM [SQL Learning Tutorial]. .EmployeeDemographics emp
JOIN [SQL Learning Tutorial]. .EmployeeSalary Sal
	ON emp.EmployeeID=sal.EmployeeID
WHERE Salary > '45000'
)
SELECT FirstName, AvgSalary
FROM CTE_Employee