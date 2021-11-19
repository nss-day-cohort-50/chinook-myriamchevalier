-- Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
-- Customer's full name
-- Invoice Id,
-- Date of the invoice
-- Billing country

SELECT C.FirstName, C.LastName, I.InvoiceId, I.InvoiceDate, I.BillingCountry
FROM Invoice AS I 
INNER JOIN Customer AS C ON C.CustomerId = I.CustomerId
WHERE I.BillingCountry ='Brazil'
