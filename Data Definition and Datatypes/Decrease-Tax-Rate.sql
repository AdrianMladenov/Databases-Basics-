UPDATE [dbo].Payments
SET TaxRate = TaxRate - (TaxRate * 0.03)
SELECT TaxRate FROM [dbo].Payments