SELECT w.DepositGroup, SUM(w.DepositAmount) AS [TotalSum]
  FROM [dbo].WizzardDeposits AS W
  GROUP BY w.DepositGroup