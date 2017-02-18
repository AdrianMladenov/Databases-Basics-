SELECT u.Username, 
SUBSTRING(u.Email, CHARINDEX('@', u.Email) + 1, LEN(u.Email) - CHARINDEX('@', u.Email)) AS 'Email Provider'
FROM [dbo].Users AS u
ORDER BY [Email Provider] ASC, u.Username ASC
