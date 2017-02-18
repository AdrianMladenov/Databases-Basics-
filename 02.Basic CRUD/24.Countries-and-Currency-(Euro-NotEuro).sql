SELECT c.CountryName, c.CountryCode, 
CASE
WHEN c.CurrencyCode != 'EUR' THEN 'Not Euro'
WHEN c.CurrencyCode = 'EUR' THEN 'Euro'
WHEN c.CurrencyCode IS NULL THEN 'Not Euro'
END
AS [Currency]
  FROM [dbo].Countries AS c
ORDER BY c.CountryName ASC
