-- Provide a query that shows each Invoice line item, with the name of the track that was purchased

SELECT I.InvoiceLineId, T.Name
FROM InvoiceLine as I
INNER JOIN Track AS T on T.TrackId = I.TrackId
ORDER BY I.InvoiceLineId ASC