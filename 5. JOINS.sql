/*
Inner Joins, Full/Left/Right/ Outer Joins
*/

SELECT *
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics

SELECT *
FROM [SQL Learning Tutorial].dbo.EmployeeSalary

SELECT *
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
Inner Join [SQL Learning Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

SELECT *
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
FULL Outer Join [SQL Learning Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

SELECT *
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
Left Outer Join [SQL Learning Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

SELECT *
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
Right Outer Join [SQL Learning Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
Inner Join [SQL Learning Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
Right Outer Join [SQL Learning Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
Inner Join [SQL Learning Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

