SELECT e.FirstName, e.LastName
  FROM [dbo].Employees AS e
  WHERE e.ManagerID IS NULL
