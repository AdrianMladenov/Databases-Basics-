SELECT W.DepositGroup, SUM(W.DepositAmount) AS [TotalSum]
  FROM [dbo].WizzardDeposits AS W
  WHERE W.MagicWandCreator = 'Ollivander family'
  GROUP BY w.DepositGroup
  HAVING SUM(W.DepositAmount) < 150000
  ORDER BY [TotalSum] DESC