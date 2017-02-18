CREATE VIEW V_EmployeesSalaries AS
SELECT e.FirstName, e.LastName, e.Salary
  FROM [dbo].Employees AS e
