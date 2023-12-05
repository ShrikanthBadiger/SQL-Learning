/*
GROUP BY - is similar to DISTINCT
ORDER BY
*/

--SELECT distinct(Gender)
--FROM EmployeeDemographics

--SELECT Gender
--FROM EmployeeDemographics
--GROUP BY Gender  -- in this all the males rolled up
----in 1 row and female also

--SELECT *
--FROM EmployeeDemographics

--SELECT Gender, COUNT(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender 

--SELECT Gender, Age, COUNT(Gender) --derived column
--FROM EmployeeDemographics
--GROUP BY Gender, Age

--SELECT Gender, COUNT(Gender)
--FROM EmployeeDemographics
--WHERE Age>31
--GROUP BY Gender 

--SELECT Gender, COUNT(Gender) As countgender
--FROM EmployeeDemographics
--WHERE Age>31
--GROUP BY Gender
--ORDER BY countgender DESC

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age DESC

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age, Gender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC -- Numbers are Column numbers