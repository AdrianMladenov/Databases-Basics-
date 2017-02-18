SELECT TOP 30  c.CountryName, c.Population
FROM [dbo].Countries AS c
WHERE c.ContinentCode = 'EU'
ORDER BY c.Population DESC, c.CountryName ASC
