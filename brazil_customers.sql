-- Show ONLY customers from Brazil

SELECT CustomerId, FirstName, LastName, Country
FROM Customer
WHERE Country ='Brazil'