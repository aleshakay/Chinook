-- Provide a query that shows the top 5 most purchased songs.
select top 5 Track.TrackId, track.Name, SUM(Quantity)
from Track 
Join InvoiceLine 
on Track.TrackId = InvoiceLine.TrackId
GROUP BY Track.TrackId, track.Name
ORDER BY 2 desc