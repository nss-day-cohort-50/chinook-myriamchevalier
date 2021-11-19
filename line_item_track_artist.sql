-- Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT I.InvoiceLineId, T.Name AS Track, A.Name AS Artist
FROM InvoiceLine as I
INNER JOIN Track AS T ON T.TrackId = I.TrackId
INNER JOIN Album AS AL ON T.AlbumId = AL.AlbumId
INNER JOIN Artist AS A ON AL.ArtistId = A.ArtistId
ORDER BY I.InvoiceLineId ASC