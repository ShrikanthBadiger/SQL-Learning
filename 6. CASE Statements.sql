--/*
--A case statements allows to specify condition & 
--What you want to return when that condition is met
--*/
----1
--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age>30 THEN 'old'
--	ELSE 'Young'
--END
--FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
--WHERE Age is not null
--ORDER BY Age

----2
--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age>30 THEN 'old'
--	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
--	ELSE 'Baby'
--END
--FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
--WHERE Age is not null
--ORDER BY Age

----3
--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age =38 THEN 'Stanley'
--	WHEN Age>30 THEN 'old'
--	ELSE 'Baby'
--END
--FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
--WHERE Age is not null
--ORDER BY Age

--4 CASE on salary Raise
SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle='Salesman' THEN Salary+(Salary*.10)
	WHEN JobTitle='Accountant' THEN Salary+(Salary*.05)
	WHEN JobTitle='HR' THEN Salary+(Salary*.000001)
	ELSE Salary+(Salary*.03)
END AS RevisedSalary
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
JOIN [SQL Learning Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
