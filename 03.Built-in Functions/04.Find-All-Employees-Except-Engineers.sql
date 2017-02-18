SELECT e.FirstName, e.LastName
FROM [dbo].Employees AS e
WHERE e.JobTitle NOT LIKE '%engineer%'
