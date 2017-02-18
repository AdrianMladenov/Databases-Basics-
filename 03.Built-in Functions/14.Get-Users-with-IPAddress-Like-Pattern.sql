SELECT u.Username, u.IpAddress
FROM [dbo].Users AS u
WHERE u.IpAddress LIKE '___.[^2-9]%.%.___'
ORDER BY u.Username ASC
