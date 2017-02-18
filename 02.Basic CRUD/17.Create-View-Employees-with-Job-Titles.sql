CREATE VIEW V_EmployeeNameJobTitle AS
SELECT CONCAT(E.FirstName, ' ', E.MiddleName, ' ', E.LastName) AS "Full Name", E.JobTitle 
FROM dbo.Employees AS E

--Another solution

CREATE VIEW V_EmployeeNameJobTitle AS
SELECT 
CASE
	WHEN e.MiddleName IS NULL THEN e.FirstName + '  ' + e.LastName
	WHEN e.MiddleName IS NOT NULL THEN e.FirstName + ' ' + e.MiddleName + ' ' + e.LastName
END 
  AS [Full Name], e.JobTitle 
  FROM [dbo].Employees AS e
