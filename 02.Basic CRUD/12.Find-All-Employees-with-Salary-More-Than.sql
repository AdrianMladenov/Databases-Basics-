SELECT e.FirstName, e.LastName, e.Salary
  FROM [dbo].Employees AS e
  WHERE e.Salary > 50000
  ORDER BY e.Salary DESC
