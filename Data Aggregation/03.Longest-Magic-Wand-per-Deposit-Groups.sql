SELECT w.DepositGroup, MAX(W.MagicWandSize) AS [LongestMagicWand]
  FROM [dbo].WizzardDeposits AS W
  GROUP BY w.DepositGroup