SELECT w.DepositGroup
FROM [dbo].WizzardDeposits AS w
GROUP BY w.DepositGroup
HAVING AVG (w.MagicWandSize) = (
  SELECT 
    MIN (WandSizeTable.AverageSizes) AS MinimalSize
  FROM (
    SELECT
     AVG (w.MagicWandSize) AS AverageSizes
  FROM [dbo].WizzardDeposits AS w
  GROUP BY w.DepositGroup
 ) AS WandSizeTable
)