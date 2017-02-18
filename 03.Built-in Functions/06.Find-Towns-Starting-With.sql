SELECT t.TownId, t.Name
FROM [dbo].Towns AS t
WHERE t.Name LIKE 'M%' OR t.Name LIKE 'K%' OR t.Name LIKE 'B%' OR t.Name LIKE 'E%'
ORDER BY t.Name ASC
