/*
PARTITION BY - Devides the result set into Partition & 
			changes how the window function is calculated
GROUP BY reduses the Number of rows in an output 
         by rolling them up calculating sum avg etc.
*/

SELECT *
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics AS dem
JOIN [SQL Learning Tutorial].dbo.EmployeeSalary AS Sal
	ON dem.EmployeeID=sal.EmployeeID
	--OR--

SELECT *
FROM [SQL Learning Tutorial]. .EmployeeDemographics dem
JOIN [SQL Learning Tutorial]. .EmployeeSalary Sal
	ON dem.EmployeeID=sal.EmployeeID

SELECT FirstName, LastName, Gender, Salary,
	COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM [SQL Learning Tutorial]. .EmployeeDemographics dem
JOIN [SQL Learning Tutorial]. .EmployeeSalary Sal
	ON dem.EmployeeID=sal.EmployeeID

--groupby
SELECT Gender, COUNT(Gender) AS GenderCount
FROM [SQL Learning Tutorial]. .EmployeeDemographics dem
JOIN [SQL Learning Tutorial]. .EmployeeSalary Sal
	ON dem.EmployeeID=sal.EmployeeID
GROUP BY Gender 