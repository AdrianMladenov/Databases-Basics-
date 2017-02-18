SELECT TOP 7 e.FirstName, e.LastName, e.HireDate
  FROM [dbo].Employees AS e
  ORDER BY e.HireDate DESC
