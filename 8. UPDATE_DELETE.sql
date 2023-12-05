/*
INSERT is to create a new row in a tablle

UPDATE is to alter the pre existing row

DELETE to specify what row is to be reomoved from table
*/

--INSERT INTO [SQL Learning Tutorial].DBO.EmployeeDemographics VALUES
--(NULL, 'Holly', 'Flax', NULL, NULL)
--INSERT INTO [SQL Learning Tutorial].DBO.EmployeeDemographics VALUES
--(1013, 'Dany', 'Puton', NULL, 'Male')

--SELECT *
--FROM [SQL Learning Tutorial].dbo.EmployeeDemographics

UPDATE [SQL Learning Tutorial].dbo.EmployeeDemographics
SET EmployeeID=1012
WHERE FirstName='Holly' and LastName='Flax'

SELECT *
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics

UPDATE [SQL Learning Tutorial].dbo.EmployeeDemographics
SET Age=31, Gender='Female'
WHERE FirstName='Holly' and LastName='Flax'

--DELETE
--DELETE FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
--WHERE EmployeeID=1013

--To confirm weather we are deleting correct row
SELECT *
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
WHERE EmployeeID = 1004
--then
DELETE
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics
WHERE EmployeeID = 1004

SELECT *
FROM [SQL Learning Tutorial].dbo.EmployeeDemographics