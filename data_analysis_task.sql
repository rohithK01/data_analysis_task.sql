 Query 1: Total sales per country
SELECT BillingCountry, SUM(Total) AS TotalSales
FROM Invoice
GROUP BY BillingCountry
ORDER BY TotalSales DESC;



 Query 2: Top 5 customers
SELECT CustomerId, SUM(Total) AS TotalSpent
FROM Invoice
GROUP BY CustomerId
ORDER BY TotalSpent DESC
LIMIT 5;


 Query 3: Most popular genres
SELECT g.Name, COUNT(*) AS NumberOfTracks
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
GROUP BY g.Name
ORDER BY NumberOfTracks DESC;



 Query 4: Average invoice total
SELECT AVG(Total) AS AverageInvoice
FROM Invoice;


 Query 5: Artists with most albums
SELECT ArtistId, COUNT(*) AS AlbumCount
FROM Album
GROUP BY ArtistId
ORDER BY AlbumCount DESC
LIMIT 5;
