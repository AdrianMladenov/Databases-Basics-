SELECT p.PeakName, r.RiverName, LOWER(SUBSTRING(p.PeakName, 1, (LEN(p.PeakName)-1))) + LOWER(r.RiverName) AS [Mix]
FROM [dbo].Peaks as p
CROSS JOIN [dbo].Rivers AS r
WHERE RIGHT(p.PeakName, 1) = LEFT(r.RiverName, 1)
ORDER BY Mix
