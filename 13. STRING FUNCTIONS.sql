/*
String Functions:-
TRIM, LTRIM, RTRIM, REPLACE, SUBSTRING, UPPER, LOWER
*/
DROP TABLE if exists EmployeeErrors
CREATE TABLE EmploeeErrors(
EmployeeID varchar(50),
firstName varchar(50),
LastName varchar(50),
)

insert into EmploeeErrors values
('1001  ', 'Jimbo', 'Halbert'),
('  1002', 'Prameela', 'Bose'),
('1001', 'Tob', 'feng - fired')

select*
from EmploeeErrors

--Using Trim, LTRIM, TTRIM
select EmployeeID
from EmploeeErrors

select EmployeeID, 
TRIM(EmployeeID) as idtrim
from EmploeeErrors

select EmployeeID, --only perfotm on right
LTRIM(EmployeeID) as idtrim
from EmploeeErrors

select EmployeeID, -- only trim right side
RTRIM(EmployeeID) as idtrim
from EmploeeErrors

--using replace
select LastName, REPLACE(LastName, ' - Fired','') as lastnamefixed
from EmploeeErrors

--using substring
select*
from EmploeeErrors 

select SUBSTRING(FirstName,1,3)
from EmploeeErrors

select SUBSTRING(FirstName,3,3)
from EmploeeErrors

--fuzzy matching- joing name with similarity of letters
select err.firstName, substring(err.FirstName,1,3), dem.FirstName, substring(dem.FirstName,1,3)
from EmploeeErrors err
join [SQL Learning Tutorial]..EmployeeDemographics dem
	on substring(err.FirstName,1,3)=substring(dem.FirstName,1,3)

--UPPER & LOWER
select firstName, LOWER(firstname) lname
from EmploeeErrors 

select firstName, UPPER(firstname) Upname
from EmploeeErrors 