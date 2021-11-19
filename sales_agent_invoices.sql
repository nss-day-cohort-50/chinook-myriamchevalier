-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
-- Sales Agent's full name
-- Invoice ID


SELECT I.InvoiceId, E.FirstName, E.LastName
FROM Invoice AS I
INNER JOIN Customer AS C ON C.CustomerId = I.CustomerId
INNER JOIN Employee AS E ON C.SupportRepId = E.EmployeeId
WHERE E.Title LIKE '%Sales%Agent%';




