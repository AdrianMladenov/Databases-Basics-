SELECT t.Name
FROM [dbo].Towns AS t
WHERE LEN(t.Name) BETWEEN 5 AND 6
ORDER BY t.Name ASC
