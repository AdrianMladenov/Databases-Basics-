SELECT LEFT(w.FirstName, 1) AS [FirstLetter]
  FROM [dbo].WizzardDeposits AS w
  WHERE w.DepositGroup = 'Troll Chest'
  GROUP BY LEFT(w.FirstName, 1)
  ORDER BY [FirstLetter]

--OR

SELECT DISTINCT LEFT(w.FirstName, 1) AS [FirstLetter]
  FROM [dbo].WizzardDeposits AS w
  WHERE w.DepositGroup = 'Troll Chest'
  ORDER BY [FirstLetter]