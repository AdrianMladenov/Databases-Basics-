SELECT e.FirstName
FROM [dbo].Employees AS e
WHERE e.DepartmentID IN (3, 10)
AND YEAR(e.HireDate) BETWEEN 1995 AND 2005
