SELECT W.DepositGroup, W.MagicWandCreator, MIN(W.DepositCharge) AS [MinDepositCharge]
  FROM [dbo].WizzardDeposits AS W
  GROUP BY W.DepositGroup, W.MagicWandCreator
  ORDER BY W.MagicWandCreator ASC, w.DepositGroup ASC