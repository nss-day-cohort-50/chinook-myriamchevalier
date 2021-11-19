-- Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name

SELECT I.Total, C.LastName AS CustomerName, C.Country, E.FirstName AS SalesAgentFN, E.LastName AS SalesAGENTLN
FROM Invoice AS I, Customer AS C, Employee AS E
WHERE C.CustomerId = I.CustomerId
AND C.SupportRepId = E.EmployeeId
AND E.Title LIKE '%Sales%Agent%';
