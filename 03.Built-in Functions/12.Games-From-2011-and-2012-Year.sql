SELECT TOP 50 g.Name, FORMAT(g.Start, 'yyyy-MM-dd') AS [Start]
FROM [dbo].Games AS g
WHERE YEAR(g.Start) IN (2011,2012)
ORDER BY g.Start ASC, g.Name ASC
