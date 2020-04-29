-- Provide a query that shows the top 3 best selling artists.
SELECT TOP 3 ar.Name, COUNT(il.TrackId) 
FROM Artist ar, Album al, Track t, InvoiceLine il 
Where ar.ArtistId = al.ArtistId 
AND al.AlbumId = t.AlbumId 
AND t.TrackId = il.TrackId 
GROUP BY ar.Name 
ORDER BY COUNT(il.TrackId) DESC
