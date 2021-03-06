SELECT  t.Name
FROM [dbo].[Towns] AS t
ORDER BY t.Name ASC

SELECT  d.Name
FROM [dbo].[Departments] AS d
ORDER BY D.Name ASC

SELECT  e.FirstName, e.LastName, e.JobTitle, e.Salary
FROM [dbo].[Employees] AS e
ORDER BY e.Salary DESC
