--HAVING Clause

--SELECT JobTitle, COUNT(JobTitle) AS jobtitlecount
--FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
--JOIN [SQL Learning Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
--GROUP BY JobTitle

SELECT JobTitle, COUNT(JobTitle) AS jobtitlecount
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
JOIN [SQL Learning Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle)>1

SELECT JobTitle, AVG(Salary) AS avgsalary
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
JOIN [SQL Learning Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary)>45000
ORDER BY AVG(salary)