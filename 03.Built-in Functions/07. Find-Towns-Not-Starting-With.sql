SELECT t.TownId, t.Name
FROM [dbo].Towns AS t
WHERE t.Name NOT LIKE '[R,B,D]%'
ORDER BY t.Name ASC
