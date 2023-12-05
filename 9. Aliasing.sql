/*
Aliasing:- Temporarily Changing of the Column Name in a script
Useful for the readaility of the script
*/

--Aliasing Column Name
SELECT FirstName AS Fname
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics

SELECT FirstName Fname
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics

SELECT FirstName + ' ' + LastName AS FullName
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics

SELECT AVG(Age) AS AvgAge
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics

--Aliasing Table Name
SELECT Demo.EmployeeID, Sal.Salary
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics AS Demo
JOIN [SQL Learning Tutorial].dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID=Sal.EmployeeID

SELECT a.EmployeeID, a.FirstName, a.FirstName, b.JobTitle, c.Age
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics a
LEFT JOIN [SQL Learning Tutorial].dbo.EmployeeSalary b
	ON a.EmployeeID=b.EmployeeID
LEFT JOIN [SQL Learning Tutorial].dbo.EmployeeSalary c
	ON a.EmployeeID=c.EmployeeID

SELECT Demo.EmployeeID, Demo.FirstName, Demo.FirstName,  
	Sal.JobTitle, Ware.Age
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics AS Demo
LEFT JOIN [SQL Learning Tutorial].dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID=Sal.EmployeeID
LEFT JOIN [SQL Learning Tutorial].dbo.WareHouseEmployeeDemographics AS Ware
	ON Demo.EmployeeID=Ware.EmployeeID