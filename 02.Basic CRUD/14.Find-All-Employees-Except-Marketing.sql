SELECT e.FirstName, e.LastName
  FROM [dbo].Employees AS e
  WHERE e.DepartmentID != 4 --Or we can use <> 4
